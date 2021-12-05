/// @description

if paused == true
{
	instance_deactivate_all(true);
	draw_set_alpha(0.5);
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false); //could make smaller?
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(622, 270, "PAUSED");
	//draw paused text here 
	
//draw the menu background
draw_sprite_ext(spr_nineslice, image_index, 500, 300, 10, 3, 0, c_white, 1);

//draw the options
draw_set_font(ft_title_text);
draw_set_halign(fa_center);
draw_set_valign(fa_center);


for (var i = 0; i < op_length; i++)
{
	var _c = c_black;
	if pos == i {_c = c_yellow};
	draw_text_color(x + 149, y+op_border + op_space*i, option[i], _c, _c, _c, _c, 1);
}

}