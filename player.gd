extends CharacterBody2D

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 600
	move_and_slide()
	
	if (get_real_velocity().is_zero_approx()):
		get_node("HappyBoo").play_idle_animation()
	else:
		get_node("HappyBoo").play_walk_animation()
