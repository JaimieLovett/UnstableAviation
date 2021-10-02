
switch(object_index) {
	case oEnemyGrunt: 
		score += 50;
		global.camera_shake = 6;
		break;
	case oEnemyHunter:
		score += 100;
		global.camera_shake = 6;
		break;	
	case oEnemyTank:
		score += 200;
		global.camera_shake = 8;
		break;	
}

if (irandom_range(0, 4) == 0) {
	instance_create_layer(x, y, "Instances", oPowerup);
		audio_play_sound(sndPowerupDrop, 3, false);
}

audio_play_sound(sndShipExplosion, 2, false);

// Particle FX.
var xx = x;
var yy = y;
var ib = image_blend;

with (oParticles) {
	part_particles_create_colour(part_system, xx, yy, part_type_ship_debris, ib, 10);	
}