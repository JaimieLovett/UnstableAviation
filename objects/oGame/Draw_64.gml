/// @desc Draw GUI
draw_set_color(c_white);

switch(room) {
	case rmStart:
		draw_set_halign(fa_center);
		
		var r_c = c_black;
		draw_rectangle_color(150, 100, 650, 390, r_c, r_c, r_c, r_c, false);
		draw_sprite(sLogo, 0, global.camera_width / 2, 150);
		
		oMainMenu.menu_x = global.camera_width / 2;
		oMainMenu.menu_y = 250;
		
		var t_c = c_aqua;
		draw_text_color(global.camera_width / 2, 500, "created by IcedJaM", t_c, t_c, t_c, t_c, 1);
		
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
		
		draw_text_color(round(global.camera_width - 20), 170, "POWERUP", label_c, label_c, label_c, label_c, 1);
		var _powerups;
		if oPlayer.guns > -1 {
			_powerups[0] = get_powerup_name(oPlayer.guns);
			if oPlayer.invincible || oPlayer.shield {
				_powerups[1] = "INVINCIBLE"
			}
		}
		else if oPlayer.invincible || oPlayer.shield _powerups[0] = "INVINCIBLE"
		else _powerups[0] = "NONE";
		
		var _arr_length = array_length_1d(_powerups);
		for (var i = 0; i < _arr_length; i++) {
				draw_text_color(round(global.camera_width - 20), 170 + ((i + 1) * 20), _powerups[i], text_c, text_c, text_c, text_c, 1);		
		}
		break;
		
	case rmGameOver:
		var r_c = c_black;
		draw_rectangle_color(150, 70, 650, 490, r_c, r_c, r_c, r_c, false);
	
		draw_set_halign(fa_center);
		var c = c_yellow;
		
		// Title
		draw_sprite(sGameOverTitle, 0, global.camera_width / 2, 100);

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
	case rmTutorial:
		var r_c = c_black;
		draw_rectangle_color(120, 35, 680, 560, r_c, r_c, r_c, r_c, false);
		draw_set_halign(fa_center);
		
		// Title
		draw_sprite(sTutorialLogo, 0, global.camera_width / 2, 70);

			
		// Tutorial text.
		draw_set_font(fntText);
		draw_text(
			global.camera_width/2, 120,
			"Use the ARROW keys to rotate your ship.",
		);
		
		draw_text(
			global.camera_width/2, 170,
			"Your ship has two modes: SHOOT and ACCELERATE.\nPress SPACEBAR to switch between modes.",
		);
		
		draw_text(
			global.camera_width/2, 240,
			"Staying in either mode for too long will cause your ship\nto explode so be sure to keep switching between\nmodes before the weapon or engine stability reach 0.",
		);
		
		draw_text(
			global.camera_width/2, 330,
			"Switching modes will reset stability to 100%\nand grant you a temporary immunity shield."
		);
		
		oTutorialMenu.menu_x = global.camera_width / 2;
		oTutorialMenu.menu_y = 420;
		
		break;
}