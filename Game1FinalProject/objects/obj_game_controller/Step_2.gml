/// @description Insert description here
// You can write your code in this editor

if(game_state != 1){

	instance_deactivate_all(true);
	
		up_key = keyboard_check_pressed(ord("W"));
		down_key = keyboard_check_pressed(ord("S"));
		accept_key = keyboard_check_pressed(vk_enter);
		
		if(up_key || down_key || accept_key) audio_play_sound(sfx_click_01, 10, false);

		//move through the menu
		pos += down_key - up_key;
		if pos >= op_length { pos = 0 };
		if pos < 0 {pos = op_length - 1};

		//using the options
		if accept_key {
	
		switch(pos)
		{
		//start game
		case 0:
			game_state = 1;
			health = 100;
			room_restart();
			instance_activate_all();
			break;
	
		case 1:
			game_end();
			break;

			}
	
		}

	/*if(keyboard_check_pressed(ord("Z"))){
		game_state = 1;
		health = 100;
		room_restart();
		instance_activate_all();
	}

	else if(keyboard_check_pressed(ord("X"))){
		game_end();	
	}*/

}