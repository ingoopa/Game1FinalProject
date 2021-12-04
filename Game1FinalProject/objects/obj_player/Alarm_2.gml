/// @description Insert description here
// You can write your code in this editor
if(on_ground && !is_running) audio_play_sound(sfx_jump_landing, 5, false);

else if(on_ground && is_running) {
	audio_pause_sound(sfx_jump_landing);
	audio_play_sound(sfx_jump_landing, 5, false);
}

else audio_pause_sound(sfx_jump_landing);