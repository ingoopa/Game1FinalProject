/// @description Insert description here
// You can write your code in this editor
event_inherited();	//pertaining to cutscenes

//keyboard controls for movement
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var pickup = keyboard_check(ord("F"));

//check to see if there's a cutscene in progress
if(global.ctsPos == -1){
	x_velocity = (right - left) * walk_speed;
	
	var predictedX = x + x_velocity;
	var predictedY = y + y_velocity;
	
	//collision movement
	if(!place_meeting(predictedX, y, obj_collidable)){	//x movement
		x += x_velocity;	
	}
	
	else{
		//x collision code
		predictedX = x;
		while(!place_meeting(predictedX, y, obj_collidable)){
			predictedX += sign(x_velocity);	//moving one pixel at a time	
		}
		predictedX -= sign(x_velocity); //undo 1 pixel
		x = predictedX;
		
	}
	
	if(!place_meeting(x, predictedY, obj_collidable)){	//y movement (JUMP!)
		y_velocity += obj_game_controller.game_gravity;
		y += y_velocity;
		
		if(y_velocity >= 0) is_falling = true;
			
		if( (y + (sprite_height/2)) >= (room_height - 50)){
			y = (room_height - 50) - (sprite_height/2);
			y_velocity = 0;
			on_ground = true;
			in_air = false;
			is_falling = false;
			is_jumping = false;
		}
	}
	
	else{
		//y collision code
		predictedY = y;
		while(!place_meeting(x, predictedY, obj_collidable)){
			predictedY += sign(y_velocity); //moving one pixel at a time	
		}
		predictedY -= sign(y_velocity);
		y = predictedY;
	}
	
	//movement controls
	if((right - left) == 0){ //idle
		
		//PICKING UP OBJECTS !!
		if(distance_to_object(obj_pager) <= 5 && (pickup)){
				has_pager = true;
				anim_state = 3;
		}
		//just idle
		else anim_state = 0;
	}
	else{
		if((right - left) < 0){ //moving left
			//pushing objects while moving left
			if( (distance_to_object(obj_collidable) <= 5) && keyboard_check(vk_space)) {
				//obj_collidable.is_moving = true;
				if(x_velocity > 0) obj_collidable.x += 2;
				else if (x_velocity < 0) obj_collidable.x -= 2;
				anim_state = 4;
			}
			//running left
			else{
				anim_state = 1;	
				facing = 1;
			}
		}
		else if((right - left) > 0){ //moving right
			//pushing objects while moving right
			if( (distance_to_object(obj_collidable) <= 5) && keyboard_check(vk_space)) {
				//obj_collidable.is_moving = true;
				if(x_velocity > 0) obj_collidable.x += 2;
				else if (x_velocity < 0) obj_collidable.x -= 2;
				anim_state = 4;
			}
			//running right
			else{
				anim_state = 2;	
				facing = 2;
			}
		}
	}

	
	
}
