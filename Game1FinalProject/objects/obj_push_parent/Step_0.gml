/// @description Insert description here
// You can write your code in this editor

if(pushing){
	if( ((obj_player.y) >= y) && (distance_to_object(obj_player) <= (obj_player.interaction_radius)) ){ //if the player is NOT on top of the push obj and it's within a certain distance of the push obj
			x += obj_player.x_velocity;
			obj_player.within_distance = true;	
		}
	else obj_player.within_distance = false;
}



//show_debug_message("within_distance: " + string(obj_player.within_distance));