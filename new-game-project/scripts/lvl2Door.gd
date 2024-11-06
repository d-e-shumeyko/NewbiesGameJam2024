extends Node3D
var played: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if (GameState.get_value("switch1") == true && GameState.get_value("switch2") == true &&GameState.get_value("switch3") == true):
		played = true
	
	if played == true:
		$AnimationPlayer.play("switch_door")
		played = false
		$"../levels/level 1/decoration/Switch1".rotate_z(deg_to_rad(90))
		GameState.set_value("switch1", false)
	
