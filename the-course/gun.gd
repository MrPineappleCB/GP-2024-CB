extends CSGBox3D

@export var bullet_scene:PackedScene


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("fire"):
		var b = bullet_scene.instantiate()
		$"../../..".add_child(b)
		
		b.global_position = $Marker3D.global_position
		b.global_rotation = $Marker3D.global_rotation
		
	pass
