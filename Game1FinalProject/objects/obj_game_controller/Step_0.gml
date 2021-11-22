/// @description Insert description here
// You can write your code in this editor


if ( (health <= 0) && (game_state == 1) ){
	game_state = -1;
	audio_pause_all();
	audio_play_sound(sfx_failure_01, 5, false);
}




