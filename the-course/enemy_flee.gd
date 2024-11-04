extends CharacterBody2D
var speed = 75
@onready var Spaceman = target_pos
var target_pos: Vector2
var start_pos:Vector2
@export var explosion:PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	target_pos = Spaceman
	target_pos = global_position
	start_pos = global_position
	pass # Replace with function body.


func move_up():
	position.y = -50

func move_down():
	position.y = 50

func move_left():
	position.x = -50

func move_right():
	position.x = 50

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var d:Vector2 = $"../Spaceman".global_position - global_position
	d = -d.normalized()
	velocity = d * speed
	move_and_slide()
	pass
