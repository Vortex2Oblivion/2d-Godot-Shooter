extends Sprite

var bullet = preload("res://Bullet.tscn")

export var speed = 300 # How fast the player will move (pixels/sec).

func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		position.x += speed * delta
	if Input.is_action_pressed("move_left"):
		position.x -= speed * delta
	if Input.is_action_pressed("move_down"):
		position.y += speed * delta
	if Input.is_action_pressed("move_up"):
		position.y -= speed * delta

	if Input.is_action_pressed("shoot"):
		var bul = bullet.instance()
		owner.add_child(bul)
		bul.global_position = global_position
