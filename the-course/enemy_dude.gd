extends CharacterBody2D

var speed = 100
var attacking = false
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	if attacking:
		position.x = position.x - speed * delta
		

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "jumpperson":
		attacking = true
	pass # Replace with function body.
