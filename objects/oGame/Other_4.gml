/// @desc Spawn enemies on start.
if (room == rmGame) {
	spawn_off_camera(oAsteroid, 10);
	
	spawn_off_camera(oEnemyGrunt, 8);
	spawn_off_camera(oEnemyHunter, 5);
	spawn_off_camera(oEnemyTank, 3);

	
	alarm[0] = room_speed * enemy_spawn_speed;
}