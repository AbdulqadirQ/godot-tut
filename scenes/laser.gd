extends Area2D

@export var speed := 800

func _process(delta):
	position.y -= speed * delta
