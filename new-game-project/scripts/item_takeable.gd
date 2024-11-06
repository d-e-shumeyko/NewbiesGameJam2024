extends Interactable



func _on_interacted(body: Variant) -> void:
	GameState.set_value("key", GameState.get_value("key") + 1)
	queue_free()
	
