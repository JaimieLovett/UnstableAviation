/// @desc Take damage
audio_play_sound(sndEnemyHurt, 2, false);
HP -= 1;
screen_freeze(global.screen_freeze_duration);

if HP <= 0 {
	instance_destroy();	
}
