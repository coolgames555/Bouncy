extends Node2D
const WALL_SCENE = preload("res://wall.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var new_wall = WALL_SCENE.instantiate()
	new_wall.position = Vector2(140,460)
	new_wall.z_index = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
