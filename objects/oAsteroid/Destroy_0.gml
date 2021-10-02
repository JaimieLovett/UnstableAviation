if (irandom_range(0, 5) == 0) {
	instance_create_layer(x, y, "Instances", oPowerup);	
}

score += 10;

var xx = x;
var yy = y;

if sprite_index == sAsteroidLarge {	
	global.camera_shake = 8;
	with (oParticles) {
		part_particles_create(part_system, xx, yy, part_type_asteroid_debris, 12);
	}
	
	repeat(2) {
		var new_asteroid = instance_create_layer(x, y, "Instances", oAsteroid);
		new_asteroid.sprite_index = sAsteroidMedium;
	}
}
else if sprite_index == sAsteroidMedium {
	global.camera_shake = 4;
	with (oParticles) {
		part_particles_create(part_system, xx, yy, part_type_asteroid_debris, 8);
	}
	
	repeat(2) {
		var new_asteroid = instance_create_layer(x, y, "Instances", oAsteroid);
		new_asteroid.sprite_index = sAsteroidSmall;
	}
}
else {
	with (oParticles) {
		part_particles_create(part_system, xx, yy, part_type_asteroid_debris, 4);
	}
	global.camera_shake = 2;	
}
