extends Node3D

var a
@export var switch : Node3D
@export var is_in : bool = false
@export var camera : Camera3D
@export var manager : breaker_puzzle
signal emit_A (a: int)
#func _ready() -> void:
	#manager.A = 0

	

func _on_static_body_3d_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if 	Input.is_action_just_pressed("Input"):
		$"../switchClick".play()
	
		if is_in == false:
			switch.global_rotation.z = deg_to_rad(180)
			switch.global_position.x = -0.784
			a = 7
			emit_signal("emit_A", a)
			is_in = true
		elif  is_in == true:
			switch.global_rotation.z = deg_to_rad(0)
			switch.global_position.x = -0.554
			a = 0
			emit_signal("emit_A", a)
			is_in = false
	#if 	Input.is_action_just_pressed("Input"):		
		#if switch.global_rotation.z == deg_to_rad(180):
			#manager.A = 7
		#elif switch.global_rotation.z == deg_to_rad(0):
			#manager.A = 0
