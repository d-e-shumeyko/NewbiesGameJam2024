extends Interactable
class_name  Takeable 

@export var player : playerChara
@export var area: Area3D



func _ready() -> void:
	player.connect("objectInteractedWith", _hasBeenInteractedWith)
	#player.connect("currentlyInteracting", hide_info)

func _hasBeenInteractedWith(isDone : bool):
	if (isDone == true):
		get_parent_node_3d().hide()
		
