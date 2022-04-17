/// @description where the magic happens

if (is_attacking) exit; //if the player is pressing the attack key, disable movement
if(is_picking_up) exit; //if the player is pressing the interact key, disable movement

//movement code
if(keyboard_check(ord("A"))) {self.left_frames++;} else {self.left_frames = 0;} //counts how long the A key is held down for
if(keyboard_check(ord("D"))) {self.right_frames++;} else {self.right_frames = 0;} //counts how long the D key is held down for
if(keyboard_check(vk_space)) {self.push_frames++;} else {self.push_frames = 0;} //counts how long the space key is held down for

//keyboard controls for movement
var left = sign(left_frames); 
var right = sign(right_frames);

//keyboard controls for interaction/attack
var push = sign(push_frames);
var attack = keyboard_check_pressed(ord("O"));
var key_pickup = keyboard_check_pressed(ord("F"));
interaction_radius = image_xscale;

x_velocity = (right - left) * walk_speed; //player speed

//predicting collision
var predictedX = x + x_velocity;
var predictedY = y + y_velocity;

/* movement controls
anim_state = animation sprite state (idle, moving left, moving right, pushing left, pushing right, etc)
facing = which way the player is facing (aka, left or right)
is_running = is the player in motion 
*/
if((right - left) == 0){ //idle
	anim_state = 0;
	is_running = false;
}
else{ //running
	
	is_running = true;
	
	//switches between running left & running right
	switch(max(left_frames, right_frames)){
		case left_frames: //LEFT
			anim_state = 1;
			facing = 1;
			break;
			
		case right_frames: //RIGHT
			anim_state = 1;
			facing = 2;
			break;
	}
}

//picking up objects
if (key_pickup && distance_to_object(obj_paper) <= 5){ 
	anim_state = 2;	
	is_picking_up = true;
	audio_play_sound(sfx_crumped_paper, 5, false); 
	alarm[1] = pickup_time * room_speed; //triggers alarm for pick up sequence
}

//picking up objects
if (key_pickup && distance_to_object(obj_paper_02) <= 5){ 
	anim_state = 2;	
	is_picking_up = true;
	audio_play_sound(sfx_crumped_paper, 5, false); 
	alarm[2] = pickup_time * room_speed; //triggers alarm
}

//attacking
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
	
	instance_create_layer(x_offset, y, "Instances", obj_hitbox); //creates a hitbox where player attack is located; if an enemy collides with hitbox, it takes damage
	audio_play_sound(sfx_melee_02, 5, false);
}

//pushing objects
if(push){
	obj_push_parent.pushing = true; //object is being pushed
	if(within_distance) anim_state = 3; //if the player is standing close enough to the pushable object, then the push animation plays		
}

if(!push) obj_push_parent.pushing = false; //object is not being pushed


//collision movement
if(!place_meeting(predictedX, y, obj_collision_parent)){ //x movement
	x += x_velocity;	
}

else{ //x collision code
	predictedX = x;
	while(!place_meeting(predictedX, y, obj_collision_parent)){
		predictedX += sign(x_velocity);	//moving one pixel at a time	
	}
	predictedX -= sign(x_velocity); //undo 1 pixel (looks better this way)
	x = predictedX;
}

if(is_falling) alarm[2] = 1; //checks to see if the player is in the air

//y movement (JUMP!) 
if(!place_meeting(x, predictedY, obj_collision_parent)){ 
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
