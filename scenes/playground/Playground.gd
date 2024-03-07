extends Node2D

var Ball = preload("res://scenes/playground/ball/Ball.tscn")

var left_point = 0
var right_point = 0

func start():
	var ball = Ball.instantiate()
	add_child(ball)

func set_score():
	get_node("Score").text = "{right} - {left}".format({
		"left": left_point,
		"right": right_point
	})

func new_round(ball):
	remove_child(ball)
	set_score()
	start()

func _ready():
	start()

func _process(delta):
	pass

func _on_goal_area_left_body_entered(body):
	if body.name == "Ball":	
		left_point += 1
		new_round(body)

func _on_goal_area_right_body_entered(body):
	if body.name == "Ball":
		right_point += 1
		new_round(body)


func _on_racket_left_body_entered(body):
	if body.name == "Ball":
		body.linear_velocity = body.linear_velocity * -1


func _on_racket_right_body_entered(body):
	if body.name == "Ball":
		body.linear_velocity = body.linear_velocity * -1
