extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_cast_rigth: RayCast2D = $RayCastRigth
@onready var ray_cast_left: RayCast2D = $RayCastLeft

func _process(delta: float) -> void:
	if ray_cast_rigth.is_colliding():
		direction = -1
	if ray_cast_left.is_colliding():
		direction = 1
	position.x += direction * SPEED * delta
