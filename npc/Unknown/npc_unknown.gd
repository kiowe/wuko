extends StaticBody2D

@onready var anim: AnimationPlayer = $AnimationPlayer

func _process(_delta) -> void:
	anim.play("idle")
