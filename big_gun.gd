extends Area2D

func _physics_process(delta):
	pass

func shoot():
	const BULLET = preload("res://bullet.tscn")
	var bullets = [
		BULLET.instantiate(),
		BULLET.instantiate(),
		BULLET.instantiate(),
		BULLET.instantiate(),
		BULLET.instantiate(),
	]

func _on_timer_timeout():
	shoot()
