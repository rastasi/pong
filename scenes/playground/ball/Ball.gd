extends RigidBody2D


const SPEED = 300.00


func _ready():
	randomize()

	global_position = Vector2(640, 360)

	var x_direction = pow(-1, randi() % 2)
	var y_direction = pow(-1, randi() % 2)

	await get_tree().create_timer(1.0).timeout
	
	linear_velocity = Vector2(x_direction, y_direction) * SPEED

func _process(delta):
	pass

