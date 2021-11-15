/// @description Insert description here
// You can write your code in this editor

if(game_state != 1){

	instance_deactivate_all(true);

	if(keyboard_check_pressed(ord("Z"))){
		game_state = 1;
		health = 100;
		room_restart();
		instance_activate_all();
	}

	else if(keyboard_check_pressed(ord("X"))){
		game_end();	
	}

}