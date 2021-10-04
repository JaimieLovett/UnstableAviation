/// @desc Press Spacebar
if (!is_space_pressed) {
	draw_set_halign(fa_center);
	draw_set_font(fntText);
	draw_set_color(c_white);
	draw_text(x, y - 100, "Press SPACEBAR to switch modes");	
}