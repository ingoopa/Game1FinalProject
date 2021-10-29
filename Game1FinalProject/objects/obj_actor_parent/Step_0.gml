/// @description Insert description here
// You can write your code in this editor

var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);

x += hspd;
y += vspd;

//Sprites
if(spd){
	sprite_index = obj_player.spr_walk;
	
	//Flip
	image_xscale = sign(hspd);
	if(image_xscale == 0) image_xscale = 1;
}
else{
	sprite_index = obj_player.spr_idle;	
}