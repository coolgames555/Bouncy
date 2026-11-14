extends  Area2D
@onready var node_2d: Node2D = $".."

var velocity = 1
var speed = 1
var tc = 1

func _on_area_entered(area: Area2D) -> void:
	print("weudfhweoi")
	if (area.is_in_group("wall") or area.get_parent().is_in_group("wall")) and tc >= 10:
		velocity = -1
		tc = 0
		print("collision!")


func _physics_process(delta):
	position.y += velocity * speed
	tc += 1
	# print(str(position.y))
	if position.y == 430:
		print("castlehit!")
		node_2d.health += -34
