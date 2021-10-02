/// @desc Draw GUI
switch(room) {
	case rmStart:
		draw_set_halign(fa_center);
		
		var c = c_white;
		draw_text_transformed_color(
			room_width/2, 100, "Unstable",
			3, 3, 0, c, c, c, c, 1
		);
		
		draw_text(
			room_width/2, 200,
			"Arrow Keys: ROTATE\nSpacebar: Switch between ACCELERATE/SHOOT mode.\n\n>> PRESS ENTER TO START <<"
		);
		
		draw_set_halign(fa_left);
		break;
	
	case rmGame:
		draw_text(20, 20, "SCORE: " + string(score));

		draw_set_halign(fa_center);
		draw_text(global.camera_width/2, global.camera_height-25, "STABILITY: " + string(oPlayer.stability));
		draw_set_halign(fa_left);
		break;
		
	case rmGameOver:
		audio_stop_all();
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