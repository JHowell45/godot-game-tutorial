extends CharacterBody2D

signal death

const DAMAGE_RATE = 50

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 600
	move_and_slide()
	
	if velocity.is_zero_approx():
		%HappyBoo.play_idle_animation()
	else:
		%HappyBoo.play_walk_animation()
	
	var overlapping_mobs = %HurtBox.get_overlapping_bodies()
	%ProgressBar.value -= overlapping_mobs.size() * DAMAGE_RATE * delta
	if %ProgressBar.value <= 0.0:
		death.emit()
	
