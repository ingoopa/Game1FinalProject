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

if (key_pickup && distance_to_object(obj_paper_02) <= 5){ //picking up objects
	anim_state = 2;	
	is_picking_up = true;
	audio_play_sound(sfx_crumped_paper, 5, false);
	alarm[2] = pickup_time * room_speed;
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
