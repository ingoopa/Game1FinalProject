/// @description 

//draw the menu background

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//draw the options

draw_set_font(ft_title_text);
draw_set_valign(fa_top);
draw_set_halign(fa_center);

for (var i = 0; i < op_length; i++)
{
	var _c = c_black;
	if pos == i {_c = c_yellow};
	draw_text_color(x + 149, y+op_border + op_space*i, option[i], _c, _c, _c, _c, 1);
}

