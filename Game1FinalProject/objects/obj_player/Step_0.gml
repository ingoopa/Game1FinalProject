/// @description Insert description here
// You can write your code in this editor

//checking if keys are being pressed
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
//var attack = keyboard_check(ord("O"));
//var seismic = keyboard_check(ord("P"));

x_velocity = (right - left) * walk_speed;

x += x_velocity;	//prob need to change this when adding backgrounds
if(x < (bbox_width/2.0)){
	x = bbox_width/2.0;
}


//BASIC JUMP MECHANICS
y_velocity += obj_game_controller.game_gravity;
y += y_velocity;

if(y_velocity >= 0) is_falling = true;

if( (y + (sprite_height)/2) >= (room_height)){
	y = room_height - (sprite_height/2);
	y_velocity = 0;
	on_ground = true;
	in_air = false;
	is_falling = false;
	is_jumping = false;
}


//CHECK IF PLAYER IS MOVING
if(((right - left) == 0) && (facing == 1)){
	anim_state = 3; //IDLE FACING LEFT 
	facing = 3; 
}

else if (((right - left) == 0) && (facing = 2)){
	anim_state = 0; //IDLE FACING RIGHT
	facing = 0;
}

else{
	if((right - left) < 0){
		anim_state = 1; //MOVING LEFT
		facing = 1;
	}
	else if((right - left) > 0){
		anim_state = 2; //MOVING RIGHT
		facing = 2; 
	}
}