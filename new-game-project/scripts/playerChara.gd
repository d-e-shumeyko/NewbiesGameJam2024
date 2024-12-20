extends CharacterBody3D


class_name playerChara

const WALK_SPEED = 5.0
const SPRINT_SPEED = 8.0
const JUMP_VEL = 4.5 
const SENSITIVITY = 0.003

var speed
var t_bob = 0.0

#head bob
const 	BOB_FREQ =2.0
const  BOB_AMP = 0.08

#FOV
const BASE_FOV = 75.0
const FOV_CHANGE = 1.5

#signal currentlyInteracting(now_colliding : bool)
signal objectInteractedWith(is_interacted : bool)

var was_interacted : bool = false :
	get:
		return was_interacted
	set(value):
		was_interacted = value
		


	
	
@onready var dog = $head/dog
@onready var head = $head
@onready var camera = $head/Camera3D
@onready var body = $charaNo3
@onready var raycast : RayCast3D = $head/Camera3D/RayCast3D
#@onready var Awalk :  = $walk
#@onready var Asprint :  = $sprint

@export var hit_hit : StaticBody3D



func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		head.rotate_y(-event.relative.x * SENSITIVITY)
		body.rotate_y(-event.relative.x * SENSITIVITY)
		camera.rotate_x(-event.relative.y * SENSITIVITY)
		camera.rotation.x = clamp(camera.rotation.x, deg_to_rad(-40), deg_to_rad(60))
		

# Called every frame. 'delta' is the elapsed time since the previous frame.

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle Sprint
	if Input.is_action_pressed("Sprint"):
		speed = SPRINT_SPEED
	else:
		speed = WALK_SPEED
	
		# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VEL
		# Get input direction and handle the movement/deceleration.
	var input_dir := Input.get_vector("Left", "Right", "Up", "Down")
	var direction = (head.transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	
	if is_on_floor():	
		if direction:
			velocity.x = direction.x * speed
			velocity.z = direction.z * speed
			
			#if Input.is_action_pressed("Sprint"):
				
		else:
			velocity.x = 0.0
			velocity.z = 0.0
			
	else:
		velocity.x = lerp(velocity.x, direction.x * speed, delta * 2.0)
		velocity.z = lerp(velocity.z, direction.z * speed, delta * 2.0)	
	#Head bob
	t_bob += delta * velocity.length() *float(is_on_floor())
	camera.transform.origin = _headbob(t_bob)

	#FOV
	var velocity_clamped = clamp(velocity.length(), 0.5, SPRINT_SPEED*2)
	var target_fov = BASE_FOV + FOV_CHANGE * velocity_clamped
	camera.fov = lerp(camera.fov, target_fov, delta * 8.0)
	

	#player_walking()
	move_and_slide()

func _headbob(time) -> Vector3:
	var pos = Vector3.ZERO
	pos.y = sin(time * BOB_FREQ) * BOB_AMP
	pos.x = cos(time * BOB_FREQ/2) *BOB_AMP
	return pos 
	
func _input(event: InputEvent):
	if (event.is_action_pressed("Interact") and raycast.is_colliding()):
		print_debug("hit") 
		was_interacted = true
		emit_signal("objectInteractedWith", was_interacted)
		was_interacted = false


#func player_walking():
	#if (Input.is_action_pressed("Up") or Input.is_action_pressed("Down") or Input.is_action_pressed("Left") or Input.is_action_pressed("Right")):
		#Awalk.playing = true
	#else :
		#Awalk.playing = false
