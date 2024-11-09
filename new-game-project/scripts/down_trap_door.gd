extends Node

@export var door : AudioStreamPlayer
@export var ladder :  AudioStreamPlayer

func _ready() -> void:
	door.play()
	ladder.play()
