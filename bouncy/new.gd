extends Button
const WALL_SCENE = preload("res://wall.tscn")

func _ready() -> void:
	pressed.connect(_on_button_pressed)

func _on_button_pressed() -> void:
	var new_wall = WALL_SCENE.instantiate()
	new_wall.position = Vector2(500, 580)
	# Add it to the parent node (same level as the button)
	get_parent().add_child(new_wall)
