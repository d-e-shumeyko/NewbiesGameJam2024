extends Interactable

@export var text : Label

func _ready() -> void:
	text.hide()

func _on_interacted(body: Variant) -> void:
	text.show()
