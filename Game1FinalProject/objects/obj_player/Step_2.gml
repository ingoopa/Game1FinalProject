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
		
	case 3: //PICKUP LEFT
		sprite_index = spr_pickup_left;
		//image_speed = 0;
		break;
		
	case 4: //PICKUP RIGHT
		sprite_index = spr_pickup_right;
		//image_speed = 0;
		break;
	
	case 5: //PUSHING LEFT
		sprite_index = spr_player_push_left;
		image_speed = anim_speed;
		break;
		
	case 6: //PUSHING RIGHT
		sprite_index = spr_player_push_right;
		image_speed = anim_speed;
		break;
		
	case 7: //ATTACK LEFT
		sprite_index = spr_player_melee_left;
		image_speed = anim_speed;
		break;
		
	case 8: //ATTACK RIGHT
		sprite_index = spr_player_melee_right;
		image_speed = anim_speed;
		break;
	
	/*
	case 3: //PICKUP
		if(facing == 1) sprite_index = spr_pickup_left;
		else if (facing == 2) sprite_index = spr_pickup_right;
		image_speed = anim_speed;
		break;
		
	case 4: //PUSH
		if (facing == 1) {
			sprite_index = spr_player_push_left;
			obj_collidable.x -= 2;
		}
		
		else if (facing == 2) {
			sprite_index = spr_player_push_right;
			obj_collidable.x += 2;
		}
		
		image_speed = anim_speed;
		break;
		*/
	
}