event_inherited();

image_index = HP - 1;

// If player is inside range
if !instance_exists(oPlayer) exit;

if point_distance(x, y, oPlayer.x, oPlayer.y) < 250 {
	// Turn to look at player ship.
	var new_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	
	// Move toward the ship.
	direction = image_angle;
}
