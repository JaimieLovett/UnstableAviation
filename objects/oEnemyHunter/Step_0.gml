event_inherited();

// If player is inside range
if !instance_exists(oPlayer) exit;

if point_distance(x, y, oPlayer.x, oPlayer.y) < 250 {
	// Turn to look at player ship.
	var new_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	
	// Move toward the ship.
	direction = image_angle;
	// Decrease our speed if we get close to the player.
	// We don't want to collide with the player.
	if point_distance(x, y, oPlayer.x, oPlayer.y) < 150 {
		speed -= 0.05;	
	} else {
		speed += 0.01;	
	}
	
	// Fire bullet.
	bullet_counter++;
	if bullet_counter >= 60 {
		create_bullet(x, y, image_angle, 5, faction, id, -1);
		bullet_counter = 0;
	}
	
}
else {
	speed = lerp(speed, original_speed, 0.1);
}

// Otherwise