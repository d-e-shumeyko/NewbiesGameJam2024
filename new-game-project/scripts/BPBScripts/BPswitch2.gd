extends breaker_puzzle

@onready var b = 0
@export var switch : Node3D
@export var is_in_2 : bool = false


func _ready() -> void:
	pass


func _on_static_body_3d_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if 	Input.is_action_just_pressed("Input"):
		
		if is_in_2 == false:
			switch.global_rotation.z = deg_to_rad(180)
			switch.global_position.x = 0.553
			B = -6
			is_in_2 = true
		elif  is_in_2 == true:
			switch.global_rotation.z = deg_to_rad(0)
			switch.global_position.x = 0.802
			B = 0
			is_in_2 = false
		#print(B)
		
