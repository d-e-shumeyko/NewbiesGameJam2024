extends Node3D

class_name breaker_puzzle
@export var sprite : Sprite2D
var A : int
var B = 0
var C = 0
var D = 0
var E = 0
var F = 0
var G = 0
var H = 0
var V : int

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$"../CanvasGroup/VBoxContainer/Button".hide()
	$"../CanvasGroup/VBoxContainer/Label".hide()
	$breakerBoxPuzzleSwitch.connect("emit_A", _changeA) 
	$breakerBoxPuzzleSwitch2.connect("emit_B", _changeB)
	$breakerBoxPuzzleSwitch3.connect("emit_C", _changeC)
	$breakerBoxPuzzleSwitch4.connect("emit_D", _changeD)
	$breakerBoxPuzzleSwitch5.connect("emit_E", _changeE)
	$breakerBoxPuzzleSwitch6.connect("emit_F", _changeF)
	$breakerBoxPuzzleSwitch7.connect("emit_G", _changeG)
	$breakerBoxPuzzleSwitch8.connect("emit_H", _changeH)
func	 _process(delta: float) -> void:
	#on_input()
		
		
	V = (A + B + C + D + E + F + G + H)
	
	
	if V == 20 :
		sprite.set_rotation(deg_to_rad(0))
	else :
		var v =  (4.5*V)-90
		sprite.set_rotation(deg_to_rad(v))
	
	if Input.is_action_just_released("Input"):
		print(V)
	
	if (V == 20) :
		#print("open")
		$"../CanvasGroup/VBoxContainer/Button".show()
		$"../CanvasGroup/VBoxContainer/Label".show()
		GameState.set_value("secretDoor", true)
	else:
		$"../CanvasGroup/VBoxContainer/Button".hide()
		$"../CanvasGroup/VBoxContainer/Label".hide()
		GameState.set_value("secretDoor", false)
	


#func on_input() :
	#if 	Input.is_action_just_pressed("Input"):
		#V = (A + B + C + D + E + F + G + H)
		#print("v = ", V)
func _changeA(value):
	A = value
func _changeB(value):
	B=value
func _changeC(value):
	C=value
func _changeD(value):
	D=value
func _changeE(value):
	E=value
func _changeF(value):
	F=value
func _changeG(value):
	G=value
func _changeH(value):
	H=value


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_cellar_lvl3andahalf.tscn")
