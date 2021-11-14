/// @description Insert description here
// You can write your code in this editor
/*
//drawing actual text
draw_set_font(ft_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);

if(obj_game_controller.game_state == -1){	//game over
	draw_text(text_x, text_y + 20, "Game Over");
	draw_text(text_x, text_y + 40, "Press Z to restart level");
	draw_text(text_x, text_y + 60, "Press X to exit");
}

else{

	var _len = string_length(text[text_current]);
	if(char_current < _len){
		char_current += char_speed;
	}

	var _str = string_copy(text[text_current], 1, char_current);
	draw_text(text_x, text_y, _str);

}
