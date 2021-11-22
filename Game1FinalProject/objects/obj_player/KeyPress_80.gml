/// @description Insert description here
// You can write your code in this editor

if(using_seismic) {
	using_seismic = !using_seismic;
	instance_create_layer(x, y, "Instances", obj_seismic_01);
	audio_play_sound(sfx_seismic_01, 10, false);
}