extends Area2D

onready var Explosion = load("res://Explosion/Explosion.tscn")

var direction = 1
var velocity = Vector2.ZERO
var speed = .3
var dead = false

func _physics_process(_delta):
	if direction < 0 and !$AnimatedSprite.flip_h:
		$AnimatedSprite.flip_h = true
	if not dead:
		velocity.x += speed * direction
		position += velocity


func _on_Attack_body_entered(body):
	if not dead:
		if body.get_parent().name == "Enemy_Container":
			body.die()
			var explosion = Explosion.instance()
			explosion.position = position
			get_node("/root/Game/Explosions").add_child(explosion)
			explosion.get_node("Explosion").playing = true
			explosion.get_node("AnimatedSprite").play()
		dead = true
	queue_free()
