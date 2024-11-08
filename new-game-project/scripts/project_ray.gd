extends Camera3D
#@export var ray_length = 1000
#var raycastResult
#var id
#
#func _input(event: InputEvent) -> void:
	#if event.is_action_pressed("Input"):
		#shoot_ray()
#
#func shoot_ray():
	#var mouse_position = get_viewport().get_mouse_position()
	#var from = project_ray_origin(mouse_position)
	#var to = from + project_ray_normal(mouse_position) * ray_length
	#var space = get_world_3d().direct_space_state
	#var ray_query = PhysicsRayQueryParameters3D.new()
	#ray_query.from = from
	#ray_query.to = to
	#var raycast_result = space.intersect_ray(ray_query)
	#raycastResult = raycast_result
	#id = raycastResult 
	##print (raycast_result)
	#
	#
