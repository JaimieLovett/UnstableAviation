/// @desc Spawn enemies
if room != rmGame {
	exit;	
}

spawn_off_camera(oAsteroid, 1);

alarm[0] = room_speed * enemy_spawn_speed;