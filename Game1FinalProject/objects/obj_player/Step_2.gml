/// @description Insert description here
// You can write your code in this editor

switch(anim_state){
	
	case 0: //IDLE
		if (facing == 1) sprite_index = spr_player_idle_left;
		else if(facing == 2) sprite_index = spr_player_idle_right;
		image_speed = anim_speed;
		break;
		
	case 1: //LEFT
		sprite_index = spr_running_left;
		image_speed = anim_speed;
		break;
		
	case 2: //RIGHT
		sprite_index = spr_running_right;
		image_speed = anim_speed;
		break;
}