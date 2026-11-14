extends  Area2D
@onready var node_2d: Node2D = $".."
@onready var wall: Area2D = $"../wall"
var velocity = 1
var speed = 1
var tc = 1



func _physics_process(delta):
	position.y += velocity * speed
	tc += 1
	# print(str(position.y))
	if position.y == 430:
		print("castlehit!")
		node_2d.health += -100
