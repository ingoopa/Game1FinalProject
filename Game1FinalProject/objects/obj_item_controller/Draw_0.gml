/// @description

if paused == true
{
//	temp_w = camera_get_view_width(view_camera[0]);
//	temp_h = camera_get_view_height(view_camera[0]);
	
	instance_deactivate_all(true);
	draw_set_alpha(0.5);
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false); //could make smaller?
	draw_set_alpha(1);
	//draw paused text here
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(ft_title_text);
	draw_set_color(c_white);
	
	if (has_item){
		draw_sprite(spr_lore_1, 1, x + 430, y + 300);
		draw_text(x + 430, y + 710, "Press Esc to Return to Game");
	}
	
	if(has_paper_02) {
		draw_sprite(spr_lore_2, 1, x + 8750, y + 150);
		draw_text(x + 8900, y + 710, "Press Esc to Return to Game");
	}
	
	
	
}