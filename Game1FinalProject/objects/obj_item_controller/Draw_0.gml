/// @description

if paused == true
{
	temp_w = camera_get_view_width(view_camera[0]);
	temp_h = camera_get_view_height(view_camera[0]);
	
	instance_deactivate_all(true);
	draw_set_alpha(0.5);
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false); //could make smaller?
	draw_set_alpha(1);
	//draw paused text here
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(ft_title_text);
	draw_set_color(c_white);

	draw_sprite(spr_lore_1, 1, (temp_w/2 + 55), (temp_h/2));
	draw_text((temp_w/2) + 50, (temp_h) - 30, "Press Z to Return to Game");
	
}