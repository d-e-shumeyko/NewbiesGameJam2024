extends Node3D

@export var animator : AnimationPlayer

func _ready() -> void:
	animator.play("cinematic")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	get_tree().change_scene_to_file("res://scenes/level_cellar_lvl4.tscn")
