/// @desc Spawn enemies on start.
if (room == rmGame) {
	audio_play_sound(sndMusic, 2, true);

	spawn_off_camera(oAsteroid, 10);
	
	spawn_off_camera(oEnemyGrunt, 8);
	spawn_off_camera(oEnemyHunter, 5);
	spawn_off_camera(oEnemyTank, 3);

	
	alarm[0] = room_speed * enemy_spawn_speed;
	alarm[1] = room_speed * enemy_spawn_speed;
}