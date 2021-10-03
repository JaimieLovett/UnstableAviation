with other {
	var powerup_type = image_index;
	audio_play_sound(sndPowerupPickup, 2, false);
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