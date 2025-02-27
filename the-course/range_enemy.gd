extends CharacterBody2D


@export var speed = 200

var color:Color = Color.WHITE

var dude 

enum States {IDLE, ATTACKING}
var state = States.IDLE

func _ready() -> void:
	dude = $"../dude"
	

func _physics_process(delta: float) -> void:
	look_at(dude.position)
	if state == States.ATTACKING:
		var to_player:Vector2 = dude.position - position
		to_player = to_player.normalized()
	
		velocity = to_player * speed
	move_and_slide()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == dude:
		state = States.ATTACKING
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body == dude:
		state = States.IDLE
	pass # Replace with function body.
