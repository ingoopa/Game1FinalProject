/// @description Insert description here
// You can write your code in this editor
width = 400;
height = 150;

op_border = 20;
op_space = 22;

pos = 0

option[0] = "restart level";
option[1] = "exit";


op_length = array_length(option);

audio_pause_sound(sfx_planet);
audio_play_sound(sfx_title_01, 5, true);

