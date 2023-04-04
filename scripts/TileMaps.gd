extends Node2D

@onready var background = $Background

func _ready():
	background.set_layer_enabled(0, true)
	background.set_layer_enabled(1, false)

func _process(_delta) -> void:
	if State.button_pressed == true:
		background.set_layer_enabled(0, false)
		background.set_layer_enabled(1, true)
	else:
		background.set_layer_enabled(0, true)
		background.set_layer_enabled(1, false)
