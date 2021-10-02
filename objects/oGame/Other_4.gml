/// @desc Spawn enemies on start.
if (room == rmGame) {
	spawn_off_camera(oAsteroid, 40);
	
	alarm[0] = room_speed * enemy_spawn_speed;
}