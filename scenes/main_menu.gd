extends CanvasLayer

@onready var main: Control = $Main
@onready var settings: Control = $Settings

func _on_button_play_pressed():
	get_tree().change_scene_to_file("res://scenes/test_room.tscn")


func _on_button_settings_pressed():
	main.visible = false
	settings.visible = true


func _on_button_quit_pressed():
	get_tree().quit()

func _on_button_info_pressed():
	get_tree().change_scene_to_file("res://scenes/info_room.tscn")


func _on_button_back_pressed():
	main.visible = true
	settings.visible = false


