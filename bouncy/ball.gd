extends  Area2D

var velocity = 1
var speed = 1
var tc = 1
func _on_wall_area_entered(area: Area2D) -> void:
	if tc >= 10:
		velocity = -1
		print("collision!")
	

func _physics_process(delta):
	position.y += velocity * speed
	tc += 1
	
