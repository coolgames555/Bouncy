extends Area2D
var x = 1
var instance = 0
var used = 0
static var a = 1
var b = 1
func _physics_process(delta):
	b += -1
	if b == -500:
		position.y = 50000
	
	if x == 1:
		position = get_global_mouse_position()
		position.y += 70
func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton && x == 1:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed and not has_overlapping_bodies() and a == 1:
			x = 0
			a = 0
			name = "usedwall"
			print("locked wall at")
			await get_tree().create_timer(3.0).timeout
			a = 1
		

	


func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
