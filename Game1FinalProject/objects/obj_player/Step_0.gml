/// @description Insert description here
// You can write your code in this editor
event_inherited();

var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));

if(global.ctsPos == -1){
	x_velocity = (right - left) * walk_speed;
	
	var predictedX = x + x_velocity;
	
	//collision movement
	if(!place_meeting(predictedX, y, obj_collidable)){
		x += x_velocity;	
	}
	
	else{
		//x collision code
	}
	
	//movement controls
	if((right - left) == 0){ //idle
		anim_state = 0;
	}
	else{
		if((right - left) > 0){ //moving left
			anim_state = 1;	
			facing = 1;
		}
		else if((right - left) < 0){ //moving right
			anim_state = 2;	
			facing = 2;
		}
	}
}
