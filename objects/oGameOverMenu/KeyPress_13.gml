audio_play_sound(sndMenuSelect, 1, false);

switch(menu_index) {
	case 0:
		fade_in_to_room(rmGame, 0.05, 0.05);
		break;
		
	case 1:
		fade_in_to_room(rmTutorial, 0.05, 0.05);
		break;
		
	case 2:
		fade_in_to_room(rmStart, 0.05, 0.05);
		break;
		
	case 3:
		game_end();
		break
}