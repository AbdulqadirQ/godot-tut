extends CharacterBody2D

@export var speed := 500

signal laser(pos)

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(640,360)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed
	move_and_slide()
	
	if Input.is_action_just_pressed("shoot"):
		laser.emit($LaserStartPos.global_position)
