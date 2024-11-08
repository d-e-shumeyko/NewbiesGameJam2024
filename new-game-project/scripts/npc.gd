extends Node3D

@export var player : playerChara




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	look_at(player.position)
		
