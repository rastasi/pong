extends RigidBody2D


const SPEED = 500.00


func get_random_linear_velocity():
	randomize()
	
	var x_direction = pow(-1, randi() % 2)
	var y_direction = pow(-1, randi() % 2)
	
	return Vector2(x_direction, y_direction) * SPEED

func _ready():
	global_position = Vector2(640, 360)
	await get_tree().create_timer(1.0).timeout
	linear_velocity = get_random_linear_velocity()

func _process(delta):
	pass


func _on_body_entered(body):
	linear_velocity = get_random_linear_velocity()
