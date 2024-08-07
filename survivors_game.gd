extends Node2D

var score = 0

func spawn_mob():
	var mob = preload("res://mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	mob.global_position = %PathFollow2D.global_position
	mob.death.connect(_on_mob_death)
	add_child(mob)


func _on_timer_timeout():
	spawn_mob()


func _on_player_death():
	%GameOver.visible = true
	get_tree().paused = true
	
func _on_mob_death():
	score += 1
	var label = "Score: %s"
	%Score.text = label % score
