extends Area2D


func _on_Secret_Entrance_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Levels/Secret.tscn")
