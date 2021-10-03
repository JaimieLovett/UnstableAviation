oGame.game_over_reason = "You collided with an enemy ship."

// Particle FX.
var xx = x;
var yy = y;
var c = color;

with (oParticles) {
	part_particles_create_colour(part_system, xx, yy, part_type_ship_debris, c, 16);
}

audio_play_sound(sndGameOver, 2, false);

room_goto(rmGameOver);
