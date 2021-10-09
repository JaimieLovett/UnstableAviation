/// @desc Destroy self
instance_destroy();

var xx = x;
var yy = y;
var ib = c_lime;

with (oParticles) {
	part_particles_create_colour(part_system, xx, yy, part_type_bullet_debris, ib, 20);
}