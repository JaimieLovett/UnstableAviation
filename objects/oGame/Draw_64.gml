/// @desc Draw GUI
switch(room) {
	case rmStart:
		draw_set_halign(fa_center);
		draw_set_font(fntTitle);
		
		var t_c = c_aqua;
		draw_text_color(
			global.camera_width / 2, 100, "UNSTABLE AVIATION", t_c, t_c, t_c, t_c, 1);
		
		draw_set_font(fntText);
		var c = c_white;
		draw_text_color(global.camera_width / 2, 200, "ARROW KEYS: Rotate Ship\nSPACEBAR: Switch between SHOOT/ACCELERATION", c, c, c, c, 1);
		
		oMainMenu.menu_x = global.camera_width / 2;
		oMainMenu.menu_y = 300;
		break;
	
	case rmGame:
		draw_text(20, 20, "SCORE: " + string(score));
		break;
		
	case rmGameOver:
		draw_set_halign(fa_center);
		var c = c_red;

		draw_text_ext_transformed_color(
			room_width/2, 50, game_over_reason,
			20, 250, 2, 2, 0, c, c, c, c, 1
		);
		
		draw_text(
			room_width/2, 200,
			"FINAL SCORE: " + string(score),
		);
		
		draw_text(
			room_width/2, 250,
			">> PRESS ENTER TO RESTART <<",
		);
		
		draw_text(
			room_width/2, 300,
			">> PRESS ESC TO RETURN TO START SCREEN <<",
		);
		draw_set_halign(fa_left);
		break;
}