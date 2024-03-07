extends RigidBody2D


const SPEED = 300.0

func _ready():
	contact_monitor = true

func _physics_process(delta):
	if Input.is_action_pressed(get_meta("UP_KEY")):
		move_and_collide(Vector2.UP * SPEED * delta)
	
	if Input.is_action_pressed(get_meta("DOWN_KEY")):
		move_and_collide(Vector2.DOWN * SPEED * delta)
