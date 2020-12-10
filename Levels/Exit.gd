extends Area2D

onready var global = get_node("/root/Global")
var player = null


func _on_Exit_body_entered(body):
	if body.name == "Player":
		if name == "Exit_to_2":
			Global.level = 1
			global.score += 100
			get_tree().change_scene("res://Levels/Level2.tscn")
		else:
			global.score += 200
			get_tree().change_scene("res://Menu/GameOver.tscn")
