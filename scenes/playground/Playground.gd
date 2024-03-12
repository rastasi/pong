extends Node2D

var Ball = preload("res://scenes/playground/ball/Ball.tscn")

var left_point = 0
var right_point = 0

func start():
	var ball = Ball.instantiate()
	add_child(ball)

func set_score():
	get_node("Score").text = "{left} - {right}".format({
		"left": left_point,
		"right": right_point
	})


func new_round(ball):
	remove_child(ball)
	set_score()
	start()


func body_is_ball(body):
	return body.name == "Ball"


func _ready():
	start()


func _process(delta):
	pass


func _on_goal_area_left_body_entered(body):
	if body_is_ball(body):
		right_point += 1
		new_round(body)


func _on_goal_area_right_body_entered(body):
	if body_is_ball(body):
		left_point += 1
		new_round(body)


func ball_to_racket(body):
	if body_is_ball(body):
		var new_linear_velocity = body.linear_velocity * -1
		
		#if new_linear_velocity.y == 300 and new_linear_velocity.x == 300:
		#	new_linear_velocity.x -= 10
		#	new_linear_velocity.y += 10
			
		body.linear_velocity = new_linear_velocity
		print_debug(new_linear_velocity)


func _on_racket_left_body_entered(body):
	ball_to_racket(body)

func _on_racket_right_body_entered(body):
	ball_to_racket(body)


