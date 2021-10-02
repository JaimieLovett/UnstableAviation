/// @desc Spawn enemies
if room != rmGame {
	exit;	
}

var enemy_to_spawn = choose(
	oEnemyGrunt, oEnemyHunter, oEnemyTank,
);
spawn_off_camera(enemy_to_spawn, 1);

alarm[1] = room_speed * enemy_spawn_speed;