/// @desc Init variables
event_inherited();

sprite_index = choose(
	sAsteroidSmall, sAsteroidMedium, sAsteroidLarge,
);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

speed = 1;