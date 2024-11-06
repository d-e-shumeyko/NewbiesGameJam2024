extends Node3D

@onready var animator = $AnimationPlayer


func _physics_process(delta: float) -> void:
	if (GameState.get_value("doorUnlocked") == true):
		self.show()
		animator.play("OpenDoor")
		GameState.set_value("doorUnlocked", false)
		
		
