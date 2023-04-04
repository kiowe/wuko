extends CharacterBody2D

@export var MAX_SPEED = 90
@export var ACCELERATION = 3000
@export var FRICTION = 2100

@onready var player_sprite: Sprite2D = $Sprite2D
@onready var anim: AnimationPlayer = $AnimationPlayer
@onready var actionable_finder: Area2D = $ActionableFinder
@onready var footstep_player: AudioStreamPlayer = $FootstepPlayer

@onready var axis: Vector2 = Vector2.ZERO

var rand_footstep: int = 0
var last_step_sound: int = 0

func _process(delta):
	if State.dialogue_is_going == true:
		apply_friction(FRICTION * delta)
		anim.stop(true)
		MAX_SPEED = 90
		anim.speed_scale = 2
	elif axis == Vector2.ZERO:
		apply_friction(FRICTION * delta)
		anim.stop(true)
	else:
		apply_movement(axis * ACCELERATION * delta)
		anim.play("move")
	move_and_slide()

func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("accept"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
			return
	
	axis.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	axis.y = int(Input.is_action_pressed("move_down")) - int(Input.is_action_pressed("move_up"))
	
	if Input.is_action_pressed("move_left"):
		player_sprite.flip_h = true
	elif Input.is_action_pressed("move_right"):
		player_sprite.flip_h = false
	
	if Input.is_action_just_pressed("run"):
		MAX_SPEED = 140
		anim.speed_scale = 4
	elif Input.is_action_just_released("run"):
		MAX_SPEED = 90
		anim.speed_scale = 2
		
	if Input.is_action_just_pressed("menu"):
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func apply_friction(amount):
	if velocity.length() > amount:
		velocity -= velocity.normalized() * amount
	else:
		velocity = Vector2.ZERO

func apply_movement(accel):
	velocity += accel
	velocity = velocity.limit_length(MAX_SPEED)

func play_footstep():
	rand_footstep = floor(randf_range(0, 3))
	while rand_footstep == last_step_sound:
		rand_footstep = floor(randf_range(0, 3))
	match str(rand_footstep):
		"0":
			footstep_player.stream = preload("res://resources/audio/effects/footsteps/Steps_dirt-001.wav")
		"1":
			footstep_player.stream = preload("res://resources/audio/effects/footsteps/Steps_dirt-002.wav")
		"2":
			footstep_player.stream = preload("res://resources/audio/effects/footsteps/Steps_dirt-003.wav")
	footstep_player.play()
	last_step_sound = rand_footstep
