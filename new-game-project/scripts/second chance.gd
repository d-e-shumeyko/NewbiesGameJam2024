extends Control

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_cellar_lvl4.tscn")


func _on_button_2_pressed() -> void:
	$CanvasGroup/PanelContainer.show()


func _on_yes_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")


func _on_no_pressed() -> void:
	$CanvasGroup/PanelContainer.hide()
