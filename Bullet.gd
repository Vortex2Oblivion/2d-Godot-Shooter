extends Sprite

export var speed = 300
func _physics_process(delta):
	if Input.is_action_pressed("shoot"):
		position.x += speed * delta
	if Input.is_action_just_released("shoot"):
		print("released")
		
