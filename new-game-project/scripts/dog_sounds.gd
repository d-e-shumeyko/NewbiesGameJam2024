extends AudioStreamPlayer3D

@export var timer : Timer
var audio = [
"res://Assets/audio/sfx wav/dog/boof.wav",
"res://Assets/audio/sfx wav/dog/hu breath breath huu.wav",
"res://Assets/audio/sfx wav/dog/panting.wav",
"res://Assets/audio/sfx wav/dog/random noises.wav",
"res://Assets/audio/sfx wav/dog/uu u.wav",
"res://Assets/audio/sfx wav/dog/waowow ha.wav",
"res://Assets/audio/sfx wav/dog/woowoohu.wav",
"res://Assets/audio/sfx wav/dog/yawn.wav",
]

func choose_stream():
	var random_file = audio[randi() % audio.size()]
	return random_file
	
	print(random_file)
func random_time_interval():
	var time = randi() % 11
	return time
	
	


func _on_timer_timeout() -> void:
	self.stream = load(choose_stream())
	self.play()
	timer.wait_time = random_time_interval() 
	
