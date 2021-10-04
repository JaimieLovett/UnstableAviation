with other {
	var powerup_type = image_index;
	audio_play_sound(sndPowerupPickup, 2, false);
	var xx = x;
	var yy = y;
	var ib = c_lime;

	with (oParticles) {
		part_particles_create_colour(part_system, xx, yy, part_type_bullet_debris, ib, 20);
	}
	
	instance_destroy();
}

switch(powerup_type) {
	case powerups.invincible:
		invincible = true;
		if alarm[3] == -1 alarm[3] = 8 * room_speed;
		break;
		
	default:
		guns = powerup_type;
		alarm[2] = 5 * room_speed;
		break;
}