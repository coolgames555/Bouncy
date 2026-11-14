extends Area2D
var x = 1
var instance = 0
var used = 0
func _physics_process(delta):
	if x == 1:
		position = get_global_mouse_position()
		position.y += 70
func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton && x == 1:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed and not has_overlapping_bodies():
			x = 0
			name = "usedwall"
			print("locked wall at")

	
