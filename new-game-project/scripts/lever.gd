extends Node3D

class_name takeable
@export var player : playerChara
@export var manager : object_manager

@onready var info = $CanvasGroup/Label

signal lever_picked_up (is_up : bool)

var lever_up : bool = false :
	get:
		return lever_up
	set(value):
		lever_up = value

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
		lever_up = true
		emit_signal("lever_picked_up", lever_up)
		print("has lever")
	
