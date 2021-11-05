/// @description Insert description here
// You can write your code in this editor

var _cx = camera_get_view_x(view_camera[0]); //gets current x position of camera
var _xspd = 2 * ( (keyboard_check(ord("D"))) - (keyboard_check(ord("A"))) );

if(!place_meeting(x, y, obj_collidable)) {
	_cx += _xspd; //x position changes based of xspd
	camera_set_view_pos(view_camera[0], _cx, 0);

	var _b = ds_map_find_first(background_map);

	repeat(ds_map_size(background_map)) {
		layer_x(_b, background_map[? _b] * _cx);
		_b = ds_map_find_next(background_map, _b);
	}
}