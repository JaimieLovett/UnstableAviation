audio_play_sound(sndMenuSelect, 1, false);

switch(menu_index) {
	case 0:
		room_goto(rmGame);
		break;
		
	case 1:
		room_goto(rmTutorial);
		break;
		
	case 2:
		room_goto(rmStart);
		break;
		
	case 3:
		game_end();
		break
}