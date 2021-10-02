// If stabiltiy reaches 0, game over.
if stability == 0 {
	oGame.game_over_reason = "Your weapon stability reached 0 and your ship exploded.";
	room_goto(rmGameOver)
}

// Handle user input.
if keyboard_check_pressed(vk_space) {
	is_shooting = !is_shooting;
	stability = 100;
}

if keyboard_check(vk_left) image_angle = image_angle + 5;
if keyboard_check(vk_right) image_angle = image_angle - 5;


if is_shooting {
	// Alarm for reducing stability.
	if alarm[1] == - 1 {
		alarm[1] = room_speed * 0.025;	
	}
	
	if can_shoot {
		can_shoot = false;
		alarm[0] = room_speed * shoot_delay;
		create_bullet(x, y, image_angle, bullet_speed, faction, id, guns);
		audio_play_sound(sndShoot, 1, false);
	}
	
	// If we're shooting, decelerate the player.
	if speed >= 0 speed -= deceleration;
}
else {
	if alarm[1] == - 1 {
		alarm[1] = room_speed * 0.025;	
	}
	
	// Move the player.
	if speed <= max_speed motion_add(image_angle, acceleration);
	
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