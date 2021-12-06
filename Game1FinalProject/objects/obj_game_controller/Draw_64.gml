 /// @description Insert description here
// You can write your code in this editor


draw_set_color(c_white);
draw_set_font(ft_title_text);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

rm_x = camera_get_view_x(view_camera[0]);
rm_y = camera_get_view_y(view_camera[0]);


if(obj_game_controller.game_state != 1 && room == Level1){	//game over
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
else if (obj_game_controller.game_state != 1 && room == Level2){
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
		draw_text_color((x + 84), (y - 361) + op_border + op_space*i, option[i], _c, _c, _c, _c, 1);
	}
}


