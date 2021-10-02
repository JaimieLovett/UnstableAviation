draw_self();

// Draw guns
if (guns != -1) draw_sprite_ext(
	sPlayerPowerupsStrip,
	guns,
	x, y,
	image_xscale, image_yscale,
	image_angle,
	image_blend,
	image_alpha
);

// Draw invincible
if (invincible) {
	var alpha = min(alarm[1] / 60);
	
	draw_sprite_ext(
		sPlayerPowerupsStrip,
		powerups.invincible,
		x, y,
		image_xscale, image_yscale,
		image_angle,
		image_blend,
		alpha
	);
	
	

}