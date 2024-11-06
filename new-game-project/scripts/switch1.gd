extends Interactable





func _on_interacted(body: Variant) -> void:
	$tumbler_base/tumbler_switch	.rotate_y(deg_to_rad(90))
	var status = GameState.get_value("switch1")
	GameState.set_value("switch1", !status)
