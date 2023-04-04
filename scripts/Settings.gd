extends Control

# Video Settings
@onready var full_screen_button = $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/FullScreen/FullScreenButton

# Audio Settings
@onready var master_vol_slider = $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/MasterVolume/MasterVolSlider
@onready var music_vol_slider = $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/MusicVolume/MusicVolSlider
@onready var sfx_vol_slider = $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/SFXVolume/SFXVolSlider

func _ready():
	pass

# Fullscreen mode on/off button
func _on_full_screen_button_toggled(button_pressed):
	GlobalSettings.toggle_fullscreen(button_pressed)

# Master volume setting
func _on_master_vol_slider_value_changed(value):
	GlobalSettings.update_master_vol(value)

# Music volume setting
func _on_music_vol_slider_value_changed(value):
	GlobalSettings.update_music_vol(value)

# SFX volume setting
func _on_sfx_vol_slider_value_changed(value):
	GlobalSettings.update_sfx_vol(value)


