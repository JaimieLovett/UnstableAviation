oGame.game_over_reason = "You collided with an enemy ship."
room_goto(rmGameOver);

// Particle FX.
var xx = x;
var yy = y;
var ib = image_blend;

with (oParticles) {
	part_particles_create_colour(part_system, xx, yy, part_type_ship_debris, ib, 16);
}