extends StaticBody2D

@onready var skull: Sprite2D = $Skull
@onready var broken_skull: Sprite2D = $BrokenSkull

func _ready():
	skull.visible = true
	broken_skull.visible = false

func _process(_delta) -> void:
	if State.skull_touched == true:
		skull.visible = false
		broken_skull.visible = true
