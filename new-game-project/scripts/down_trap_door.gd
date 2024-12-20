extends Node

@export var door : AudioStreamPlayer
@export var ladder :  AudioStreamPlayer
@export var animator : AnimationPlayer

func _ready() -> void:
	animator.play("fade_in")
	door.play(0.37)
	ladder.play()


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	$ColorRect.queue_free()
