extends Area2D

func _physics_process(delta):
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target = enemies_in_range[0]
		look_at(target.global_position)

func shoot():
	const BULLET = preload("res://bullet.tscn")
	var bullets = [
		BULLET.instantiate(),
		BULLET.instantiate(),
		BULLET.instantiate(),
		BULLET.instantiate(),
		BULLET.instantiate(),
	]
	for bullet: Node2D in bullets:
		bullet.global_position = %ShootingPoint.global_position
		%ShootingPoint.add_child(bullet)

func _on_timer_timeout():
	shoot()
