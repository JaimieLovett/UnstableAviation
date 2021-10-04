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
		// Draw score.
		var label_c = c_yellow;
		var text_c = c_white;
		draw_set_font(fntHUD);
		draw_text_color(20, 20, "SCORE", label_c, label_c, label_c, label_c, 1);
		draw_text_color(20, 40, string(score), text_c, text_c, text_c, text_c, 1);
		
		// Draw ship mode.
		draw_set_halign(fa_right);
		draw_set_font(fntHUD);
		
		var _mode_text = oPlayer.is_shooting ? "SHOOT" : "ACCELERATE";
		draw_text_color(round(global.camera_width - 20), 20, "MODE", label_c, label_c, label_c, label_c, 1);
		draw_text_color(round(global.camera_width - 20), 40, _mode_text, text_c, text_c, text_c, text_c, 1);		
		
		// Draw weapon stability.
		var _weapon_stability_text = oPlayer.weapon_stability < 40 ? "UNSTABLE" : "STABLE";
		var _wtc = oPlayer.weapon_stability < 40 ? c_red : c_white;
		
		draw_text_color(round(global.camera_width - 20), 70, "WEAPON", label_c, label_c, label_c, label_c, 1);
		
		draw_text_color(
			round(global.camera_width - 20), 90,
			_weapon_stability_text + ": " + string(oPlayer.weapon_stability) + "%",
			_wtc, _wtc, _wtc, _wtc, 1);
		
		// Draw engine stability
		var _engine_stability_text = oPlayer.engine_stability < 40 ? "UNSTABLE" : "STABLE";
		var _etc = oPlayer.engine_stability < 40 ? c_red : c_white;
		
		draw_text_color(round(global.camera_width - 20), 120, "ENGINE", label_c, label_c, label_c, label_c, 1);
		
		draw_text_color(
			round(global.camera_width - 20), 140,
			_engine_stability_text + ": " + string(oPlayer.engine_stability) + "%",
			_etc, _etc, _etc, _etc, 1);
		
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