if other.id == creator exit;

instance_destroy();

// Check if the object is part of our faction.
if other.faction == faction exit;

// Damage object
with (other) event_perform(ev_other, ev_user1);

var xx = x;
var yy = y;
var ib = image_blend;

with (oParticles) {
	part_particles_create_colour(part_system, xx, yy, part_type_bullet_debris, ib, 8);
}