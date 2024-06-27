extends Area2D

var speed: int
var rotation_speed: int
var direction_x: float
var direction_y: float

func _ready():
	var rng := RandomNumberGenerator.new()
	
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = rng.randi_range(0, width)
	var random_y = rng.randi_range(-150, -50)
	position = Vector2(random_x, random_y)
	
	speed = rng.randf_range(300, 500)
	direction_x = rng.randf_range(-1, 1)
	direction_y = rng.randf_range(0.1, 1)
	rotation_speed = rng.randf_range(40, 100)

func _process(delta):
	position += Vector2(direction_x, direction_y) * speed * delta
	rotation_degrees += rotation_speed * delta

func _on_body_entered(body):
	print("Body collision: ", body)

