extends Sprite
export (PackedScene) var Bullet
var speed = 750

func _physics_process(delta):
	position += transform.x * speed * delta
	if Input.is_action_just_pressed("shoot"):
		shoot()
func shoot():
	var b = Bullet.instance()
	owner.add_child(b)
	b.transform = $Bullet.global_transform
func _on_Bullet_body_entered(body):
	if body.is_in_group("mobs"):
		body.queue_free()
	queue_free()

