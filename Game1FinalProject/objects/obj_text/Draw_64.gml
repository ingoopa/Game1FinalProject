/// @description Insert description here
// You can write your code in this editor

var padding = 16;

//drawing text box
draw_set_alpha(0.5);
draw_set_color(c_black);

draw_set_alpha(1);
draw_set_color(c_white);


draw_set_font(ft_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

var _len = string_length(text[text_current]);
if(char_current < _len){
	char_current += char_speed;
}

var _str = string_copy(text[text_current], 1, char_current);
draw_text(text_x, text_y, _str);