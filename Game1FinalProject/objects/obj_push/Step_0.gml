/// @description Insert description here
// You can write your code in this editor
event_inherited();

/*
var predictedX = x + x_vel;
var predictedY = y + y_vel;

if(place_meeting(predictedX, y, obj_collidable)){
	while(!place_meeting(x + sign(x_vel), y, obj_collidable)){
		x += sign(x_vel);
	}
	obj_player.x_velocity = 0;
	x_vel = 0;
}

x += x_vel;

//move_bounce_solid(false);
//obj_player.is_colliding = true;
//obj_player.x_velocity = 0;

/*
if(!place_meeting(predictedX, y, obj_collidable)){	//x movement
	x += x_vel;	
}
	
else{ //x collision code
	predictedX = x;
	
	
	while(!place_meeting(predictedX, y, obj_collidable)){
		predictedX += sign(x_vel);	//moving one pixel at a time	
	}
	predictedX -= sign(x_vel); //undo 1 pixel
	x = predictedX;
	
}

if(!place_meeting(x, predictedY, obj_collidable)){	//x movement
	y += y_vel;	
}
	
else{ //x collision code
	predictedY = y;
	while(!place_meeting(x, predictedY, obj_collidable)){
		predictedY += sign(y_vel);	//moving one pixel at a time	
	}
	predictedY -= sign(y_vel); //undo 1 pixel
	y = predictedY;
}
*/

/*
if(distance_to_object(obj_player) <= 5){

var predicted_x = x  + x_vel;

if(!place_meeting(predicted_x, y, obj_collidable)){
	x += x_vel;	
}

else{ //collision
	predicted_x = x;
	while(!place_meeting(predicted_x, y, obj_collidable)){
		predicted_x += sign(x_vel);
	}
	predicted_x -= sign(x_vel);
	x = predicted_x;
}

}
*/