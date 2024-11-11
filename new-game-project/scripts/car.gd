extends Interactable



		


func _on_interacted(body: Variant) -> void:
	$"../../AnimationPlayer".play("fadeout")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
