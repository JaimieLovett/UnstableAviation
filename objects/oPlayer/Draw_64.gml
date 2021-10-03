/// @desc Draw HUD

// Draw warning when engine becomes unstable.
if (unstable_engine && draw_unstable_engine_gui_text) {
	var c = c_red;
	draw_set_halign(fa_center);
	draw_text_transformed_color(round(global.camera_width / 2), round(global.camera_height - 60), "Your Engine becomes unstable!", 1, 1, 0, c, c, c, c, 1);
	draw_text_transformed(round(global.camera_width / 2), round(global.camera_height - 40), "Don't accelerate for too long otherwise you'll explode!", 0.8, 0.8, 0);
		if alarm[5] == - 1 {
			alarm[5] = room_speed * 5;
		}
}