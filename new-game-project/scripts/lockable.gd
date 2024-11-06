extends Interactable

var opened = false




func _on_interacted(body: Variant) -> void:
	if not opened and GameState.get_value("key") > 0:
		opened = true
		GameState.set_value("key", GameState.get_value("key") -1)
		GameState.set_value("doorUnlocked", true)
		print("door open")
