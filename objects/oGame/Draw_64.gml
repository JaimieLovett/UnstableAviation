/// @desc Draw GUI
draw_set_color(c_white);

switch(room) {
	case rmStart:
		draw_set_halign(fa_center);
		draw_set_font(fntTitle);
		
		var r_c = c_black;
		draw_rectangle_color(150, 100, 650, 290, r_c, r_c, r_c, r_c, false);
		
		var t_c = c_aqua;
		draw_text_color(
			global.camera_width / 2, 100, "UNSTABLE AVIATION", t_c, t_c, t_c, t_c, 1);
		
		oMainMenu.menu_x = global.camera_width / 2;
		oMainMenu.menu_y = 200;
		
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
		var r_c = c_black;
		draw_rectangle_color(250, 100, 550, 450, r_c, r_c, r_c, r_c, false);
	
		draw_set_halign(fa_center);
		var c = c_yellow;
		
		// Title
		draw_set_font(fntTitle);
		var t_c = c_red;
		draw_text_color(
			global.camera_width / 2, 100, "GAME OVER!", t_c, t_c, t_c, t_c, 1);

		// Game over reason
		draw_set_font(fntText);
		draw_text_color(
			global.camera_width / 2, 150, game_over_reason,
			c, c, c, c, 1
		);
		
		
		// Final score
		draw_text(
			room_width/2, 200,
			"FINAL SCORE: " + string(score),
		);
		
		oGameOverMenu.menu_x = global.camera_width / 2;
		oGameOverMenu.menu_y = 300;
		
		break;
}