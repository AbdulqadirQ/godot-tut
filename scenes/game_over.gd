extends Control

var level_scene: PackedScene = load("res://scenes/level.tscn")

func _process(delta):
	if Input.is_action_just_pressed("continue"):
		get_tree().change_scene_to_packed(level_scene)
