extends Control


@export var game_manager : gameManager


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	game_manager.connect("toggleGamePAused", _onGameGameMAnagerToggle)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _onGameGameMAnagerToggle(is_paused : bool):
	if(is_paused):
		show()
	else:
		hide()
