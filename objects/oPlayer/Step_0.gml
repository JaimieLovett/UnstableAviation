/// @desc Handle input
if keyboard_check_pressed(vk_space) is_shooting = !is_shooting;

if keyboard_check(vk_left) image_angle = image_angle + 5;
if keyboard_check(vk_right) image_angle = image_angle - 5;

if is_shooting {
	if can_shoot {
		can_shoot = false;
		alarm[0] = room_speed * shoot_delay;
		var _inst = instance_create_layer(x, y, "Instances", oPlayerBullet);
		_inst.direction = image_angle;
	}
	
	// If we're shooting, decelerate the player.
	if speed >= 0 speed -= deceleration;
}
else {
	motion_add(image_angle, acceleration);
}

// Wrap to the other side of the screen if we move off the screen.
move_wrap(true,true,sprite_width / 2);
