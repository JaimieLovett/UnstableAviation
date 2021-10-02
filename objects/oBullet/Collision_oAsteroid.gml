/// @desc Destroy enemy
score += 10;

instance_destroy();

repeat(10) {
	instance_create_layer(x, y, "Instances", oPlayerBulletDebris);
}

with(other) {
	instance_destroy();
	
	if sprite_index == sAsteroidHuge {
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", oAsteroid);
			new_asteroid.sprite_index = sAsteroidLarge;
		}
	}
	else if sprite_index == sAsteroidLarge {	
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", oAsteroid);
			new_asteroid.sprite_index = sAsteroidMedium;
		}
	}
	else if sprite_index == sAsteroidMedium {	
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", oAsteroid);
			new_asteroid.sprite_index = sAsteroidSmall;
		}
	}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", oAsteroidDebris);
	}
}