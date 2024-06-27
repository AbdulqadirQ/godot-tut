extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(100,500)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2(1,0) * 10
