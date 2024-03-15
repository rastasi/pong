extends Node2D


func _ready():
	await get_tree().create_timer(1.0).timeout # Replace with function body.
	get_tree().change_scene_to_file("res://scenes/main_menu/MainMenu.tscn")


func _process(delta):
	pass
