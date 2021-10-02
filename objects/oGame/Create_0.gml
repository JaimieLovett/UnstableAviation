/// @desc Init variables
score = 0;
enemies_to_spawn = 6;
enemy_spawn_speed = 1;
game_over_reason = "";

randomize();

enum factions {
	neutral,
	ally,
	enemy,
}