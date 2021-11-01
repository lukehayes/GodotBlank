extends KinematicBody2D

const UP_DIRECTION = Vector2.UP

export var speed := 600.0
export var jump_strength := 1500.0
export var double_jump_strength := 1200.0
export var gravity := 4500.0
export var maximum_jumps := 2

var _jumps_made := 0
var _velocity := Vector2.ZERO

func _ready():
	pass # Replace with function body.



func _process(delta):
	var _horizontal_direction = (
		Input.get_action_strength("RIGHT")
		-Input.get_action_strength("LEFT")
	)
	
	var _vertical_direction = (
		Input.get_action_strength("DOWN")
		-Input.get_action_strength("UP")
	)
	
	_velocity.x = _horizontal_direction * speed
	_velocity.y = _vertical_direction * speed
	
	_velocity = move_and_slide(_velocity, UP_DIRECTION)
