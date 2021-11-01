// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scp_text_box(_txt, _spd, _x, _y, _fnt, _color){
	
	//drawing text box
	draw_set_color(c_dkgray);
	draw_rectangle(64, 64, 200, 200, false);
	draw_set_color(c_white);
	draw_rectangle(64, 64, 200, 200, true);
	
	//drawing text
	draw_set_color(_color);
	draw_set_font(_fnt);
	
	
	
	
	
	/*
	txt = instance_create_layer(_x, _y, "Instances", obj_text);
	
	with(txt){
		padding = 16;
		max_length = camera_get_view_width(view_camera[0]);
	
		text_length = string_length(_txt);
		font_size = font_get_size(_fnt);
	
		draw_set_color(_color);
		draw_set_font(_fnt);
	
		text_width = string_width_ext(_text, font_size + (font_size/2), max_length);
		text_height = string_height_ext(_text, font_size + (font_size/2), max_length);
	
		box_width = text_width + (padding * 2);
		box_height = text_height + (padding * 2);
	}
	*/
}