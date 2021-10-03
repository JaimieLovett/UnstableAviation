event_inherited();

// If player is inside range
if !instance_exists(oPlayer) exit;

if point_distance(x, y, oPlayer.x, oPlayer.y) < 250 {
	// Turn to look at player ship.
	var new_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	
	// Fire bullet.
	bullet_counter++;
	if bullet_counter >= 60 {
		create_bullet(x, y, image_angle, 4, faction, id, -1);
		audio_play_sound(sndEnemyShoot, 2, false);
		bullet_counter = 0;
	}
	
}
else {
	image_angle = lerp(image_angle, direction, 0.1);		
}

// Otherwise