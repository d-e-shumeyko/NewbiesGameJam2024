extends Node2D
@export var animator : AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animator.play("credits")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
