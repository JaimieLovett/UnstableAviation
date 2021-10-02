with other {
	var powerup_type = image_index;
	instance_destroy();
}

switch(powerup_type) {
	case powerups.invincible:
		invisible = true;
		alarm[1] = 8 * room_speed;
		break;
		
	default:
		guns = powerup_type;
		alarm[2] = 5 * room_speed;
		break;
}