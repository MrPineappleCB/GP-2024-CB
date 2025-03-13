extends MeshInstance3D

@export var speed = 10
@export var rot_speed = 180


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#position.x += delta*speed
	#position.z += delta*speed
	#translate(Vector3.LEFT*delta*speed)
	rotate_y(deg_to_rad(rot_speed)*delta)
	pass


func _on_area_3d_body_entered(body: Node3D) -> void:
	print("entered" + str(body))
	pass # Replace with function body.
