score += points;
global.camera_shake = cam_shake;

if (irandom_range(0, 4) == 0) {
	instance_create_layer(x, y, "Instances", oPowerup);
		audio_play_sound(sndPowerupDrop, 3, false);
}

audio_play_sound(sndShipExplosion, 2, false);

// Particle FX.
var xx = x;
var yy = y;
var c = color;

with (oParticles) {
	part_particles_create_colour(part_system, xx, yy, part_type_ship_debris, c, 20);	
}