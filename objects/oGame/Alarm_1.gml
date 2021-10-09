/// @desc Spawn enemies
if room != rmGame {
	exit;	
}

var enemy_to_spawn;

if score <= 1000 {
	enemy_to_spawn = oEnemyGrunt;
	enemy_spawn_speed = 2;
}
else if score >=1000 && score <= 5000 {
	enemy_to_spawn = choose(oEnemyGrunt, oEnemyHunter);
	enemy_spawn_speed = 1;
}
else if score >= 5000 && score <= 20000 {
	enemy_to_spawn = choose(oEnemyGrunt, oEnemyHunter, oEnemyTank);
	enemy_spawn_speed = 0.75;
}
else {
	enemy_to_spawn = choose(oEnemyGrunt, oEnemyHunter, oEnemyTank);
	enemy_spawn_speed = 0.5;
}

spawn_off_camera(enemy_to_spawn, 1);

alarm[1] = room_speed * enemy_spawn_speed;