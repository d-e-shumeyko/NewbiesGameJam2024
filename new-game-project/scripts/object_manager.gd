extends Node3D

class_name object_manager


var has_Been_Picked_up : bool = false
var has_been_replaced : bool = false


signal	has_lever
signal door_opened



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (has_Been_Picked_up == true):
		pass

	if (has_been_replaced == true):
		pass
