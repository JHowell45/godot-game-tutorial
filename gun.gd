extends Area2D


func _physics_process(delta):
	var enemies_in_range = get_overlapping_bodies()
