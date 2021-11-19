/// @description Insert description here
// You can write your code in this editor

if(hit_points <= 0){
	
	instance_create_layer(x, y, "Instances", obj_enemy_death_full);
	instance_destroy(self);
}