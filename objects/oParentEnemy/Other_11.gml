/// @desc Take damage
audio_play_sound(sndEnemyHurt, 2, false);
HP -= 1;

if HP <= 0 {
	instance_destroy();	
}
