/// @description where the magic happens

event_inherited();	//for cutscene purposes, probably not going to be used for now

if(keyboard_check(ord("A"))) {self.left_frames++;} else {self.left_frames = 0;}
if(keyboard_check(ord("D"))) {self.right_frames++;} else {self.right_frames = 0;}
if(keyboard_check_pressed(ord("F"))) {self.pickup_frames++;} else {self.pickup_frames = 0;}
if(keyboard_check(vk_space)) {self.push_frames++;} else {self.push_frames = 0;}

//keyboard controls for movement
var left = sign(left_frames);
var right = sign(right_frames);
var pickup = sign(pickup_frames);
var push = sign(push_frames);
var attack = keyboard_check(ord("O"));

x_velocity = (right - left) * walk_speed;
	
var predictedX = x + x_velocity;
var predictedY = y + y_velocity;
	
//collision movement
if(!place_meeting(predictedX, y, obj_collidable)){	//x movement
	x += x_velocity;	
}
	
else{ //x collision code
	predictedX = x;
	while(!place_meeting(predictedX, y, obj_collidable)){
		predictedX += sign(x_velocity);	//moving one pixel at a time	
	}
	predictedX -= sign(x_velocity); //undo 1 pixel
	x = predictedX;
}



if(!place_meeting(x, predictedY, obj_collidable)){	//y movement (JUMP!) 
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
	while(!place_meeting(x, predictedY, obj_collidable)){
		predictedY += sign(y_velocity); //moving one pixel at a time	
	}
	predictedY -= sign(y_velocity);
	y = predictedY;
}


//movement controls
if((right - left) == 0){ //idle
	anim_state = 0;
}
else{
	switch(max(left_frames, right_frames)){
		
		case left_frames:
			anim_state = 1;
			facing = 1;
			break;
			
		case right_frames:
			anim_state = 2;
			facing = 2;
			break;
		
	}
	
}

if (pickup){ //picking up objects
	anim_state = facing + 2;	
}

if (place_meeting(x, y, obj_push)){ //pushing objects
	anim_state = facing + 4;
	if(is_colliding == true) {
		x_velocity = 0;
	}
	
	else{
		obj_push.x += x_velocity;
		is_colliding = false;
	}
}
	
if (attack){
	anim_state = facing + 6; 
}
	
	
	
//old movement code
	/*
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
	*/

	
