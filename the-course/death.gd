extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "jumpperson":
		body.queue_free()
	pass # Replace with function body.
