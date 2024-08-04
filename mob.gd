extends CharacterBody2D

@onready var player = get_node("/root/Game/Player")

func _physics_process(delta):
	var distance = global_position.direction_to(player.global_position)
	velocity = distance * 300
	move_and_slide()
