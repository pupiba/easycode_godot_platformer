extends Node2D

var SPEED = 60.0
var direction = 1

@onready var rc_left = $RayCastLeft
@onready var rc_right = $RayCastRight
@onready var animation = $AnimatedSprite2D

func _process(delta: float) -> void:
	if rc_left.is_colliding():
		direction = 1
		animation.flip_h = false
	if rc_right.is_colliding():
		direction = -1
		animation.flip_h = true
	
	position.x += direction * SPEED * delta
