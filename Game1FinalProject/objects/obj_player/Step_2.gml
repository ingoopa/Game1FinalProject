/// @description ANIMATION STATE MACHINE
// You can write your code in this editor

switch(anim_state){
	
	case 0:	//IDLE FACING RIGHT
		sprite_index = spr_player_idle_right;
		image_speed = anim_speed;
		break;
		
	case 1: //MOVING LEFT
		sprite_index = spr_running_left;
		image_speed = anim_speed;
		break;
		
	case 2: //MOVING RIGHT
		sprite_index = spr_running_right;
		image_speed = anim_speed;
		break;
		
	case 3: //IDLE FACING LEFT
		sprite_index = spr_player_idle_left;
		image_speed = anim_speed;
		break;
}