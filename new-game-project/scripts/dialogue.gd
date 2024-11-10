extends Interactable

@export var text : CanvasGroup
@export var read : bool = false
@export var played : bool = false
@export var animator : AnimationPlayer
@export var collider : Area3D

func _ready() -> void:
	text.hide()

func _on_interacted(body: Variant) -> void:
	if read == false:
		text.show()
		read = true
		if played == false:
			animator.play("open_trapdoor")
			played = true
			collider.monitoring = true
		
	else:
		text.hide()
		read = false
	
