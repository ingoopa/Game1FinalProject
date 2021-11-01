/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(ft_title_text);

draw_text(room_width/2, (room_height/2) - 30, "WASD To Move");
draw_text(room_width/2, (room_height/2), "Press Space to interact with objects");
draw_text(room_width/2, (room_height/2) + 30, "Press Z to continue");