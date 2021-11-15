/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_paper) <= 5){
	obj_item_controller.has_item = true;
}

if(ev_animation_end){
	is_picking_up = false;
	anim_state = 0;
}