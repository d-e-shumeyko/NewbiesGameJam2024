extends Node

var state := {
	"key":0,
	"doorUnlocked":false,
	"switch1":false, 
	"switch2":false, 
	"switch3":false,
	"secretDoor":false
}

func get_value(key):
	if state.has(key):
		return state[key]
		
	printerr ("Key not present in state: ", key)
	
func set_value(key, value):
	state[key] = value
