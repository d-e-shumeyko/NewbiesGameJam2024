extends Interactable



		


func _on_interacted(body: Variant) -> void:
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
