/// @description Insert description here
// You can write your code in this editor
audio_play_sound(sfx_jump_03, 5, false);

if(on_ground){
	y_velocity = jump_power;

	//state flags
	on_ground = false;
	in_air = true;
	is_jumping = true;
	is_falling = true;
	
	//alarm[2] = 0.5 * room_speed;
	
}


