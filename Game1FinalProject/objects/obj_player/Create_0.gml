/// @description Insert description here
// You can write your code in this editor

//scale of sprite on screen
image_xscale = 3;
image_yscale = 3;

//enable/disable for player object

enabled = true;

Enable = function() {
	enabled = true;
	image_alpha = 1;
}

Disable = function() {
	enabled = false;
	alarm[0] = 1;
}
