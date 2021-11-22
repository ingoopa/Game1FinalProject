/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(ft_title_text);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

//rm_width = camera_get_view_width(view_camera[0]);
//rm_height = camera_get_view_height(view_camera[0]);



if(game_state != 1){	//game over
	/*draw_text(rm_width/2, (rm_height/2) + 20, "Game Over");
	draw_text(rm_width/2, (rm_height/2) + 40, "Press Z to restart level");
	draw_text(rm_width/2, (rm_height/2) + 60, "Press X to exit");*/
	
	draw_set_color(c_white);
	draw_text(625, 270, "GAME OVER");
	
	//draw the menu background
	draw_sprite_ext(spr_nineslice, image_index, 510, 300, 10, 3, 0, c_white, 1);

	//draw the options
	draw_set_font(ft_title_text);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);

	//moving the options
	for (var i = 0; i < op_length; i++)
	{
		var _c = c_black;
		if pos == i {_c = c_yellow};
		draw_text_color(x + 149, y+op_border + op_space*i, option[i], _c, _c, _c, _c, 1);
	}
}



