/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, obj_player) && !obj_player.is_attacking) {
	alarm[0] = touch_cooldown * room_speed;
}
