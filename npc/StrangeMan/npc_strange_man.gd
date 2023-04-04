extends StaticBody2D

func _process(_delta) -> void:
	if State.disappeared == true:
		self.visible = false
