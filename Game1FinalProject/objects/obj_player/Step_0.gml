/// @description where the magic happens

if (is_attacking) exit;
if(is_picking_up) exit;

//if(place_meeting(x, y, obj_enemy_parent)) obj_heart.enemy_hit = true;

if(keyboard_check(ord("A"))) {self.left_frames++;} else {self.left_frames = 0;}
if(keyboard_check(ord("D"))) {self.right_frames++;} else {self.right_frames = 0;}
if(keyboard_check(vk_space)) {self.push_frames++;} else {self.push_frames = 0;}

//keyboard controls for movement
var left = sign(left_frames);
var right = sign(right_frames);

//keyboard controls for interacting with objects
var push = sign(push_frames);
var attack = keyboard_check_pressed(ord("O"));
var key_pickup = keyboard_check_pressed(ord("F"));
interaction_radius = image_xscale;

x_velocity = (right - left) * walk_speed;

//predicting collision
var predictedX = x + x_velocity;
var predictedY = y + y_velocity;

//movement controls
if((right - left) == 0){ //idle
	anim_state = 0;
	is_running = false;
}
else{ //running
	
	is_running = true;
	
	switch(max(left_frames, right_frames)){
		case left_frames:
			anim_state = 1;
			facing = 1;
			break;
			
		case right_frames:
			anim_state = 1;
			facing = 2;
			break;
	}
}

if (key_pickup && distance_to_object(obj_paper) <= 5){ //picking up objects
	anim_state = 2;	
	is_picking_up = true;
	audio_play_sound(sfx_crumped_paper, 5, false);
	alarm[1] = pickup_time * room_speed;
}
	
if (attack && !is_jumping){
	anim_state = 4; 
	is_attacking = true;
	alarm[0] = attack_time * room_speed;
	
	var x_offset = x;
	
	switch(facing){
		case 1: //LEFT
			x_offset = x - hitbox_offset;
			break;
			
		case 2: //RIGHT
			x_offset = x + hitbox_offset;
			break;
	}
	
	instance_create_layer(x_offset, y, "Instances", obj_hitbox);
	audio_play_sound(sfx_melee_02, 5, false);
}

if(push){
	obj_push_parent.pushing = true;
	
	if(within_distance) anim_state = 3;	
	
	
		
}

if(!push) obj_push_parent.pushing = false;


//collision movement
if(!place_meeting(predictedX, y, obj_collision_parent)){	//x movement
	x += x_velocity;	
}

else{ //x collision code
	predictedX = x;
	while(!place_meeting(predictedX, y, obj_collision_parent)){
		predictedX += sign(x_velocity);	//moving one pixel at a time	
	}
	predictedX -= sign(x_velocity); //undo 1 pixel
	x = predictedX;
}

//show_debug_message("y_velocity: " + string(y_velocity));

if(is_falling) alarm[2] = 1;

if(!place_meeting(x, predictedY, obj_collision_parent)){	//y movement (JUMP!) 
	y_velocity += obj_game_controller.game_gravity;
	y+= y_velocity;

	if(y_velocity >= 0) {is_falling = true;}
	
}


else{ //y collision code
	
	if(y_velocity >= 0){
	
	//state flags
		on_ground = true; //on TOP of collision box
		is_jumping = false;
		in_air = false;
		is_falling = false;
	
	//collision
	
		predictedY = y;
		while(!place_meeting(x, predictedY, obj_collision_parent)){
			predictedY += sign(y_velocity); //moving one pixel at a time	
		}
		predictedY -= sign(y_velocity);
		y = predictedY;
		
	
	}

}

/*
#region
	scr_collision(obj_push);
	
	#region
		var instance = instance_place(x + x_velocity, y, obj_pushpull);
		if (instance != noone){
			instance.x_velocity = x_velocity + sign(x_velocity);	
		}
		
		instance = instance_place(x, y + y_velocity, obj_pushpull);
		if (instance != noone){
			instance.y_velocity = y_velocity + sign(y_velocity);	
		}
	#endregion

#endregion
*/
	
/*
if(place_meeting(predictedX, y, obj_push)){
	while(!place_meeting(x + sign(x_velocity), y, obj_push)){
		x += sign(x_velocity);
		obj_push.x_vel = 0;
	}
//	x_velocity = 0;
	obj_push.x_vel = x_velocity;
}


with(obj_push){
if(place_meeting(predictedX, y, obj_collidable)){
	while(!place_meeting(x + sign(x_vel), y, obj_collidable)){
		x += sign(x_vel);
	}
	x_velocity = 0;
	x_vel = 0;
}	
}


/*
if (place_meeting(predictedX, y, obj_push)){ //pushing objects
	predictedX = x;
	while(!place_meeting(predictedX, y, obj_push)){
		predictedX += sign(x_velocity);
	}	
	predictedX -= sign(x_velocity);
	x = predictedX; 
	
	anim_state = facing + 4;
	obj_push.x += x_velocity;
}

if(place_meeting(x, predictedY, obj_push)){
	on_ground = true;
	predictedY = y;
	while(!place_meeting(x, predictedY, obj_push)){
		predictedY += sign(y_velocity);
	}
	predictedY -= sign(y_velocity);
	y = predictedY;
}
*/
	

	

//scr_collision(obj_collidable);	



	
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

	
