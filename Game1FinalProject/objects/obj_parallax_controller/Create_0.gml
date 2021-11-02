/// @description Insert description here
// You can write your code in this editor

background_map = ds_map_create();
background_map[? layer_get_id("B_SKY")] = 0.2;
background_map[? layer_get_id("B_DISTANT_GROUND")] = 0.1;
background_map[? layer_get_id("B_NEAR_GROUND")] = -0.1;
background_map[? layer_get_id("B_GROUND")] = -0.5;