/// @description Insert description here
// You can write your code in this editor

audio_pause_all();
instance_create_depth(0, 0, -9999, obj_fade);
room_goto(rm_cutscene_end);
audio_play_sound(sfx_end_credits, 10, false);


