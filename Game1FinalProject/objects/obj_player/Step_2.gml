/// @description Insert description here
// You can write your code in this editor

switch(anim_state){
	
	case 0: //IDLE
		switch(facing){
			case 1:
				sprite_index = spr_player_idle_left;
				break;
			
			case 2:
				sprite_index = spr_player_idle_right;
		}
		image_speed = anim_speed;
		break;
		
	case 1: //RUNNING
		switch(facing){
			case 1: //LEFT
				sprite_index = spr_running_left;
				break;
				
			case 2: //RIGHT
				sprite_index = spr_running_right;
				break;
		}
		
		image_speed = anim_speed;
		break;
		
	case 2: //PICKUP
		switch(facing){
			case 1: //LEFT
				sprite_index = spr_pickup_left;
				break;
			
			case 2: //RIGHT
				sprite_index = spr_pickup_right;
				break;
		}
		image_speed = anim_speed;
		break;
	
	case 3: //PUSHING
		switch(facing){
			case 1: //LEFT
				sprite_index = spr_player_push_left;
				break;
				
			case 2: //RIGHT
				sprite_index = spr_player_push_right;
				break;
			
		}
		
		image_speed = anim_speed;
		break;
		
	case 4: //ATTACK
		switch(facing){
			case 1:	//LEFT
				sprite_index = spr_player_melee_left;
				break;
				
			case 2://RIGHT
				sprite_index = spr_player_melee_right;
				break;
		}
		
		image_speed = anim_speed;
		break;
	
}