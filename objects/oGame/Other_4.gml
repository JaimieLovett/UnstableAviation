///@desc Initialise Rooms
if (room == rmStart) {
	audio_stop_sound(sndGameMusic);
	audio_play_sound(sndIntroMusic, 2, true);
}
else if (room == rmGame) {
	audio_stop_sound(sndIntroMusic);
	audio_stop_sound(sndGameOverMusic);
	audio_play_sound(sndGameMusic, 2, true);
	
	global.camera_shake = 0;
	score = 0;

	spawn_off_camera(oAsteroid, 10);
	
	spawn_off_camera(oEnemyGrunt, 8);
	spawn_off_camera(oEnemyHunter, 5);
	spawn_off_camera(oEnemyTank, 3);

	
	alarm[0] = room_speed * enemy_spawn_speed;
	alarm[1] = room_speed * enemy_spawn_speed;
}
else if (room == rmGameOver) {
	audio_stop_sound(sndIntroMusic);
	audio_stop_sound(sndGameMusic);
	audio_play_sound(sndGameOverMusic, 2, true);
}