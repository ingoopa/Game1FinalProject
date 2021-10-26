/// @description JUMP
// You can write your code in this editor

if(on_ground){
	y_velocity = jump_power;
	on_ground = false;
	in_air = true;
	is_jumping = true;
}

