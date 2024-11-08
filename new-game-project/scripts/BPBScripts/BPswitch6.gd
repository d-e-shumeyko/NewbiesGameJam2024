extends Node3D
var f = 0
@export var switch : Node3D
@export var is_in : bool = false
@export var camera : Camera3D
@export var manager : breaker_puzzle
signal emit_F (f: int)
#func _ready() -> void:
	#manager.A = 0

	

func _on_static_body_3d_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if 	Input.is_action_just_pressed("Input"):
	
		if is_in == false:
			switch.global_rotation.z = deg_to_rad(180)
			switch.global_position.x = 0.551
			f = 3
			emit_signal("emit_F", f)
			is_in = true
		elif  is_in == true:
			switch.global_rotation.z = deg_to_rad(0)
			switch.global_position.x = 0.794
			f = 0
			emit_signal("emit_F", f)
			is_in = false
