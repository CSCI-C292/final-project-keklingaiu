extends Area2D

var player = null

func _on_Exit_to_main_body_entered(body):
	if body.name == "Player":
		if name == "Exit_to_main":
			get_tree().change_scene("res://Levels/Level2.tscn")
			Global.score += 500
