extends Area3D

func _on_body_entered(body):
	if body is playerChara:
		print("entered")
		get_tree().change_scene_to_file("res://scenes/level_cellar_lvl2.tscn")
		
