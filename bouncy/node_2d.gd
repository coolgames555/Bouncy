extends Node2D
var health = 100
func _physics_process(delta):
	if health <= 0:
		get_tree().change_scene_to_file("res://mainmenu.tscn")


func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
