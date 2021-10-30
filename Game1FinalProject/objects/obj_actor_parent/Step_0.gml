/// @description Insert description here
// You can write your code in this editor

var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);

x += hspd;
y += vspd;

//Sprites
if(spd){
	sprite_index = sprWalk;
	
	//Flip
	image_xscale = sign(hspd) * 3;
	if(image_xscale == 0) image_xscale = 3;
}
else{
	sprite_index = sprIdle;	
}