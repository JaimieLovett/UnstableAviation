function calculate_shoot_delay() {
	return (stability * shoot_delay_modifier) / 40;	
}

// If stabiltiy reaches 0, game over.
if stability == 0 {
	oGame.game_over_reason = "Your weapon stability reached 0 and your ship exploded.";
	room_goto(rmGameOver)
}

// Handle user input.
if keyboard_check_pressed(vk_space) {
	is_shooting = !is_shooting;
	stability = 100;
	shoot_delay = calculate_shoot_delay();
}

if keyboard_check(vk_left) image_angle = image_angle + 5;
if keyboard_check(vk_right) image_angle = image_angle - 5;

// Calculate shoot delay based on current stability level.
if stability > 0 && shoot_delay > shoot_delay_modifier {
	shoot_delay = calculate_shoot_delay();
}

if is_shooting {
	// Alarm for reducing stability.
	if alarm[1] == - 1 {
		alarm[1] = room_speed * 0.1;	
	}
	
	if can_shoot {
		can_shoot = false;
		alarm[0] = room_speed * shoot_delay;
		var _inst = instance_create_layer(x, y, "Instances", oBullet);
		_inst.direction = image_angle;
	}
	
	// If we're shooting, decelerate the player.
	if speed >= 0 speed -= deceleration;
}
else {
	// Move the player.
	motion_add(image_angle, acceleration);
}

// Wrap to the other side of the screen if we move off the screen.
move_wrap(true,true,sprite_width / 2);