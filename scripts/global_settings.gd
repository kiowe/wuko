extends Node

#var language = preload("res://actionable_props/ball/ball.ru.translation")

func toggle_fullscreen(value):
	if value == true:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)

# ID bus:
# 0 - Master
# 1 - Music
# 2 - SFX

# Update Master(0) volume
func update_master_vol(vol):
	AudioServer.set_bus_volume_db(0, vol)

# Update Music(1) volume
func update_music_vol(vol):
	AudioServer.set_bus_volume_db(1, vol)

# Update SFX(2) volume
func update_sfx_vol(vol):
	AudioServer.set_bus_volume_db(2, vol)

# Set another language.
func set_language():
	#DialogueManager.translation_source = language
	pass
