// If stabiltiy reaches 0, game over.
if weapon_stability == 0 {
	oGame.game_over_reason = "Your weapon exploded!";
	room_goto(rmGameOver);
}

if engine_stability == 0 {
	oGame.game_over_reason = "Your engine exploded!";
	room_goto(rmGameOver);
}

if score >= 2000 {
	degrade_speed = 0.025;	
}
else {
	degrade_speed = 0.05;	
}

// Handle user input.
if keyboard_check_pressed(vk_space) {
	is_space_pressed = true;
	is_shooting = !is_shooting;
	
	// If we switch to SHOOT mode, reset engine stability and degrade weapon stability.
	// Else we must be in ACCELERATE mode, reset weapon stability and degrade engine stability.
	if is_shooting engine_stability = 100;
	else weapon_stability = 100;
	
	// Give the user a shield when switching modes.
	shield = true;
	if alarm[5] == -1 {
		alarm[5] = room_speed * 1;	
	}
}

// Rotate the ship.
if keyboard_check(vk_left) image_angle = image_angle + 5;
if keyboard_check(vk_right) image_angle = image_angle - 5;


if is_shooting {
	audio_stop_sound(sndIgnition);
	
	// Alarm for reducing stability.
	if alarm[1] == - 1 && is_space_pressed {
		alarm[1] = room_speed * degrade_speed;	
	}
	
	if can_shoot {
		can_shoot = false;
		alarm[0] = room_speed * shoot_delay;
		create_bullet(x, y, image_angle, bullet_speed, faction, id, guns);
		audio_play_sound(sndShoot, 0, false);
	}
	
	// If we're shooting, decelerate the player.
	if speed >= 0 speed -= deceleration;
}
else {
	audio_play_sound(sndIgnition, 1, true);
	
	// Alarm for reducing stability.
	if alarm[1] == - 1 && is_space_pressed {
		alarm[1] = room_speed * degrade_speed;	
	}
	
	// Move the player.
	motion_add(image_angle, acceleration);
	if speed > max_speed speed = max_speed;
	
	// Particle FX.
	exhaust_counter++;
	
	if (exhaust_counter >= 4) {
		exhaust_counter = 0;
		var len = sprite_height * .4;
		var xx = x - lengthdir_x(len, image_angle);
		var yy = y - lengthdir_y(len, image_angle);
		
		with (oParticles) {
			part_particles_create(part_system, xx, yy, part_type_exhaust, 1);
		}
	}
}

// Wrap to the other side of the screen if we move off the screen.
move_wrap(true,true,sprite_width / 2);

if engine_stability <= 40 || weapon_stability <= 40 {
	if can_play_unstable_sound {
		audio_play_sound(sndUnstable, 4, false);
		can_play_unstable_sound = false;
		alarm[4] = room_speed * 1;
	}
	
	// Change the ship sprite when stability gets lower.
	image_index = 1;
	
	// We want to shake the camera as stability gets lower.
	// So we need to check if it's engine or weapon stability
	// that is lower than 40 and then use its value to shake the camera.
	var _stability;
	if engine_stability <= 40 _stability = engine_stability;
	else _stability = weapon_stability;
	global.camera_shake = (50 - _stability) / 10;
}
else {
	image_index = 0;	
}