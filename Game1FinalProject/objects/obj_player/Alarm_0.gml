/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, obj_enemy_01)) {obj_enemy_01.hit_points -= self.damage;}

if(ev_animation_end){
	is_attacking = false;
	anim_state = 0;
}

