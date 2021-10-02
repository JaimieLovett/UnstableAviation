/// @desc Handle collision with enemy
instance_destroy();

repeat (10) {
	instance_create_layer(x, y, "Instances", oEnemyDebris);	
}

oGame.game_over_reason = "You collided with an enemy ship."
room_goto(rmGameOver)