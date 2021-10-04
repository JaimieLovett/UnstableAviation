draw_self();

// Draw stability level.
draw_set_halign(fa_center);
draw_set_font(fntHUD);
var _stability_to_draw = is_shooting ? weapon_stability : engine_stability;
draw_text(round(x), round(y) + 30, string(_stability_to_draw) + "%");
draw_set_halign(fa_left);

// Draw guns
if (guns != -1) {
	var alpha = min(alarm[2] / 180);
		
	draw_sprite_ext(
		sPlayerPowerupsStrip,
		guns,
		x, y,
		image_xscale, image_yscale,
		image_angle,
		image_blend,
		alpha
	);
}

// Draw invincible
if (invincible) {
	var alpha = min(alarm[3] / 180);
	
	draw_sprite_ext(
		sPlayerShield,
		0,
		x, y,
		image_xscale, image_yscale,
		image_angle,
		image_blend,
		alpha
	);
}

if (shield) {
	var alpha = min(alarm[5] / 30);
	
	draw_sprite_ext(
		sPlayerShield,
		0,
		x, y,
		image_xscale, image_yscale,
		image_angle,
		image_blend,
		alpha
	);
}