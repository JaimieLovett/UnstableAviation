audio_play_sound(sndMenuSelect, 1, false);

switch(menu_index) {
	case 0:
		room_goto(rmGame);
		break;
		
	case 1:
		game_end();
		break
}