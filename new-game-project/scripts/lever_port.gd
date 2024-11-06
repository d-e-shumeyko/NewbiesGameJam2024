extends Node3D

@export var lever_control : takeable
@export var player : playerChara
@onready var lever = $"../lever"
@onready var info = $"../StaticBody3D/Label"
@onready var collision = $"../Area3D"
@onready var animator = $"../../doorway/door/AnimationPlayer"
var has_lever : bool


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if (has_lever == true && Input.is_action_just_pressed("Interact")):
		#lever.show()
	pass
