// Particle FX.
exhaust_counter++;
	
if (exhaust_counter >= 4) {
	exhaust_counter = 0;
	var len = sprite_height * .4;
	var xx = x - lengthdir_x(len, image_angle);
	var yy = y - lengthdir_y(len, image_angle);

	with (oParticles) {
		part_particles_create(part_system, xx, yy, part_type_enemy_exhaust, 1);	
	}
}