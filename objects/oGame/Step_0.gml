/// @desc ??
if keyboard_check_pressed(vk_enter) {
	switch(room) {
		case rmStart:
		case rmGameOver:
			room_goto(rmGame);
			lives = 3;
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