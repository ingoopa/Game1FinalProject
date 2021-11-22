/// @description Insert description here
// You can write your code in this editor

if(pushing){
	if( ((obj_player.y) >= y) && (distance_to_object(obj_player) <= (obj_player.interaction_radius)) ){ //if the player is NOT on top of the push obj and it's within a certain distance of the push obj
		//if( ((obj_player.facing == 1) && (obj_player.x > x)) || ((obj_player.facing == 2) && (obj_player.x < x)) ){ //stops player from "pulling" on push obj
			obj_player.within_distance = true;
			x += obj_player.x_velocity;
		//}
	}
	else obj_player.within_distance = false;
	
}