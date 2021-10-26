/// @description Insert description here
// You can write your code in this editor

//checking if keys are being pressed
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var jump = keyboard_check(vk_up);

x_velocity = (right - left) * walk_speed;

x += x_velocity;	//prob need to change this when adding backgrounds

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