extends AudioStreamPlayer

var song = preload("res://New_Project.wav")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	stream = song
	play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
