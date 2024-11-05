extends Node3D

@export var area : Area3D
@export var player : playerChara
var target_position : Vector3
@export var speed = 6
@export var navAgent : NavigationAgent3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	look_at(player.global_position)
	
	
	
	#target_position = (player.global_position - position).normalized()
	if (position.distance_to(player.global_position) > 0.1):
		navAgent.target_position = player.global_position
		
		
	
	
	
