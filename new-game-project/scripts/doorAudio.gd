extends AudioStreamPlayer3D

@export var timer : Timer

var audio = [
	"res://Assets/audio/sfx wav/knocking/knock 1.wav",
	"res://Assets/audio/sfx wav/knocking/knock 2.wav",
	"res://Assets/audio/sfx wav/knocking/knock 3.wav",
	"res://Assets/audio/sfx wav/knocking/knock 4.wav",
	"res://Assets/audio/sfx wav/knocking/knock 5.wav",
	"res://Assets/audio/sfx wav/knocking/knock 6.wav",
	"res://Assets/audio/sfx wav/knocking/knock 7.wav",
	"res://Assets/audio/sfx wav/knocking/knock 8.wav",
	"res://Assets/audio/sfx wav/knocking/knock 9.wav",
	"res://Assets/audio/sfx wav/knocking/knock 10.wav",
	"res://Assets/audio/sfx wav/knocking/knock 11.wav",
	"res://Assets/audio/sfx wav/knocking/knock 12.wav",
	"res://Assets/audio/sfx wav/knocking/knock 13.wav",
	"res://Assets/audio/sfx wav/knocking/knock 14.wav"	
	]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func choose_stream():
	var random_file = audio[randi() % audio.size()]
	return random_file
	
	print(random_file)
func random_time_interval():
	var time = randi() % 16
	return time
	
	


func _on_timer_timeout() -> void:
	self.stream = load(choose_stream())
	self.play()
	timer.wait_time = random_time_interval() 
	
	
