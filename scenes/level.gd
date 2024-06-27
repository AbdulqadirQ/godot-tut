extends Node2D


var meteor_scene: PackedScene = load("res://scenes/meteor.tscn")
var laser_scene: PackedScene = load("res://scenes/laser.tscn")


func _on_meteor_timer_timeout():
	var meteor = meteor_scene.instantiate()
	$Meteors.add_child(meteor)


func _on_player_laser(pos):
	var laser = laser_scene.instantiate()
	$Lasers.add_child(laser)
	laser.position = pos

func _ready():
	var size := get_viewport().get_visible_rect().size
	var rng := RandomNumberGenerator.new()
	for star in $Stars.get_children():
		var random_x = rng.randi_range(0, size.x)
		var random_y = rng.randi_range(0, size.y)
		star.position = Vector2(random_x, random_y)
	

func _on_star_destroy_timer_timeout():
	pass # Replace with function body.
