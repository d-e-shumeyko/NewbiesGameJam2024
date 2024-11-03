extends Node3D

class_name takeable
@export var player : playerChara

@onready var info = $CanvasGroup/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player.connect("objectInteractedWith", _hasBeenInteractedWith)
	#player.connect("currentlyInteracting", hide_info)
	info.hide()

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func _hasBeenInteractedWith(isDone : bool):
	if (isDone == true):
		get_parent_node_3d().hide()
	
