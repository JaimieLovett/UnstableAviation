/// @desc Take damage
if invincible || shield exit;

if other.faction == factions.enemy {
	oGame.game_over_reason = "The enemy destroyed your ship!";
}
else if other.faction == factions.neutral {
	oGame.game_over_reason = "You collided with an asteroid!";	
}

instance_destroy();