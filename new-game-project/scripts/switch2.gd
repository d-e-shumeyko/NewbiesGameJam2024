extends Interactable





func _on_interacted(body: Variant) -> void:
	$tumbler_base/tumbler_switch	.rotate_y(deg_to_rad(90))
	$"../MeshInstance3D/leverPort/AudioStreamPlayer".play() 
	var status = GameState.get_value("switch2")
	GameState.set_value("switch2", !status)
