extends StaticBody

var rot_speed = rad2deg(30)  # 30 deg/sec
set_rot(get_rot() + rot_speed * delta)

func _physics_process(delta):
	# Check for collisions
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.is_in_group("Coins"):
			Game.change_score(body.points)
			body.kill()
			
