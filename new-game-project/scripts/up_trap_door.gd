extends Node

@export var door : AudioStreamPlayer
@export var ladder :  AudioStreamPlayer
@export var animator : AnimationPlayer

func _ready() -> void:
	animator.play("fade_in")
	ladder.play()
	


func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	$ColorRect.queue_free()
	$"../../../../AudioStreamPlayer".playing = true
