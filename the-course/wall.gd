extends Node3D

@export var brick_scene:PackedScene
@export var width:int = 10
@export var height:int = 10

func create_wall():
	for row in height:
		for col in width:
			var brick = brick_scene.instantiate()
			brick.position = Vector3(col, row, 0)
			var material = StandardMaterial3D.new()
			material.albedo_color = Color.from_hsv(randf_range(0, 1), 1, 1, 0.8)
			add_child(brick)

func _ready() -> void:
	create_wall()
