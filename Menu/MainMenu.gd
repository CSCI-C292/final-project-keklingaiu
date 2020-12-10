extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"






func _on_Play_pressed():
	get_tree().change_scene("res://Levels/Level1.tscn")
	


func _on_Quit_pressed():
	get_tree().quit()
