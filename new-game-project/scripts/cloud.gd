extends CharacterBody3D

@export var area : Area3D
@export var player : playerChara
var target_position : Vector3
@export var speed = 6.0
#@export var chara : CharacterBody3D

func  _ready() -> void:
	target_position = player.global_position




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	look_at(player.global_position)
	
	
	if global_position != target_position:
		velocity = Vector3( player.global_position.x - global_position.x, player.global_position.y - global_position.y, player.global_position.z - global_position.z) 
		velocity = velocity * speed
		target_position = player.global_position
	
	
	
	
	move_and_slide()

	
	
	


func _on_area_3d_body_entered(body) -> void:
	if body is playerChara:
		get_tree().change_scene_to_file("res://scenes/leve_cellar_lvl4andahalf.tscn")
