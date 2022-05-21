extends Node2D


const ENEMY_FOLLOW_SPEED = 1.4
var speed = 750

func _physics_process(delta):
	var player_pos = $Player.get_position()
	var gotoplayer = $Player.get_position()
	var hp

	$Enemy.position = $Enemy.position.linear_interpolate(player_pos, delta * ENEMY_FOLLOW_SPEED)

