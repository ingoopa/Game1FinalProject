/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("Z")) && game_state == -1){
	game_state = 1;
	room_restart();
}

else if(keyboard_check_pressed(ord("X")) && game_state == -1){
	game_end();	
}