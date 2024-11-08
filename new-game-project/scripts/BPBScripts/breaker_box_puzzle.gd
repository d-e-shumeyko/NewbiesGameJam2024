extends Node3D

class_name breaker_puzzle

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
	$breakerBoxPuzzleSwitch.connect("emit_A", _changeA) 



func	 _process(delta: float) -> void:
	#on_input()
		
	V = (A + B + C + D + E + F + G + H)
	print(V)
	
	if (V == 20) :
		GameState.set_value("secretDoor", true)
	else:
		GameState.set_value("secretDoor", false)
	


#func on_input() :
	#if 	Input.is_action_just_pressed("Input"):
		#V = (A + B + C + D + E + F + G + H)
		#print("v = ", V)
func _changeA(value):
	A = value
