extends Node2D


func _ready():
	var base_font_size = 20
	for i in range(100):
		await get_tree().create_timer(0.02).timeout
		var label = get_node("TeletypeGames")
		label.get_label_settings().font_size = base_font_size + i
	await get_tree().create_timer(1.5).timeout
	get_tree().change_scene_to_file("res://scenes/main_menu/MainMenu.tscn")
	

func _process(delta):
	pass
