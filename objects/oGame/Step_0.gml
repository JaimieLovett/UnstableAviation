/// @desc ??

if keyboard_check_pressed(vk_enter) {
	switch(room) {
		case rmGameOver:
			room_goto(rmGame);
			break;
	}
}

if keyboard_check_pressed(vk_escape) {
	switch(room) {
		case rmGameOver:
			room_goto(rmStart);
			break;
	}
}