/// @description Insert description here
// You can write your code in this editor

scr_collision(obj_pushpull);
scr_collision(obj_player);

x += x_velocity;

var _collision = noone;
switch(string_lower(collision_type)){
	case "rectangle":
		_collision = collision_rectangle(x - interaction_radius, y - interaction_radius, x + interaction_radius, y + interaction_radius, obj_player, false, true);
		break;
}

if(_collision == noone){
	x_velocity = 0;
	y_velocity = 0;
}
