// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision(_obj){
	
	var predictedX = x + x_velocity;
	var predictedY = y + y_velocity;
	
	if(!place_meeting(predictedX, y, _obj)){	//x movement
		x += x_velocity;	
	}

	else{ //x collision code
		predictedX = x;
		while(!place_meeting(predictedX, y, _obj)){
			predictedX += sign(x_velocity);	//moving one pixel at a time	
		}
		predictedX -= sign(x_velocity); //undo 1 pixel
		x = predictedX;
	}
	
	if(!place_meeting(x, predictedY, _obj)){	//y movement
			y_velocity += obj_game_controller.game_gravity;
		y+= y_velocity;

		if(y_velocity >= 0) {is_falling = true;}

		if(bbox_bottom > room_height){
			y = room_height - sprite_yoffset;
			y_velocity = 0;
	
			//state flags
			on_ground = true;
			in_air = false;
			is_falling = false;
			is_jumping = false;
		}	
	}

	else{ //y collision code
		on_ground = true;
		predictedY = y;
		while(!place_meeting(x, predictedY, _obj)){
			predictedY += sign(y_velocity);	//moving one pixel at a time	
		}
		predictedY -= sign(y_velocity); //undo 1 pixel
		y = predictedY;
	}
	
	
}

/* COLLISION CODE FOR TUTORIAL VID
if(place_meeting(x + x_velocity, y, _obj)){
		while(!place_meeting(x + sign(x_velocity), y, _obj)){
			x += sign(x_velocity);	
		}
		
		x_velocity = 0;
	}
	
	if(place_meeting(x, y + y_velocity, _obj)){
		while(!place_meeting(x, y + sign(y_velocity), _obj)){
			y += sign(y_velocity);	
		}
		
		y_velocity = 0;
	}