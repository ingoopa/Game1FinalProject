/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(ft_text);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

rm_width = camera_get_view_width(view_camera[0]);
rm_height = camera_get_view_height(view_camera[0]);

if(game_state != 1){	//game over
	draw_text(rm_width/2, (rm_height/2) + 20, "Game Over");
	draw_text(rm_width/2, (rm_height/2) + 40, "Press Z to restart level");
	draw_text(rm_width/2, (rm_height/2) + 60, "Press X to exit");
}



