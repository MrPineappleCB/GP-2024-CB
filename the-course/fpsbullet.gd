extends CharacterBody3D

@export var speed = 20


func _physics_process(delta: float) -> void:  
	velocity =  global_transform.basis.z * speed
	move_and_slide()
	pass


func _on_rigid_body_3d_body_entered(body: Node) -> void:
	$".".queue_free()
	pass # Replace with function body.
