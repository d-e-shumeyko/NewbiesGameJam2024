extends RayCast3D

@onready var prompt = $prompt

func _physics_process(delta: float) -> void:
	prompt.text = ""
	if is_colliding():
		var collider = get_collider()
		if collider is Interactable:
			prompt.text = collider.prompt_message
			if Input.is_action_just_pressed("Interact"):
				collider.Interact(owner)
			