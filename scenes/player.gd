extends CharacterBody2D

@export var speed := 500
var can_shoot: bool = true

signal laser(pos)

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(640,360)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed
	move_and_slide()
	
	if Input.is_action_just_pressed("shoot") and can_shoot:
		laser.emit($LaserStartPos.global_position)
		can_shoot = false
		$LaserCoolDown.start()


func _on_laser_cool_down_timeout():
	can_shoot = true
