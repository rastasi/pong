extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta):
	

	if Input.is_action_pressed(get_meta("UP_KEY")):
		velocity.y = move_toward(velocity.y, -1, SPEED)
		move_and_collide(Vector2.UP * SPEED * delta)
	
	if Input.is_action_pressed(get_meta("DOWN_KEY")):
		velocity.y = move_toward(velocity.y, 1, SPEED)		
		move_and_collide(Vector2.DOWN * SPEED * delta)
