/// @description Insert description here
// You can write your code in this editor

//text array that holds all the different text boxes for game
text[0] = "WASD to move";
text[1] = "Press F to pick up objects";

text_current = 0;	//current text position in text array
text_last = 1;	//last position in text array
text_width = 100;	//minimum width before text wraps around 
text_x = 400;	//x position where text starts
text_y = 64;	//y position where text starts

char_current = 1;
char_speed = 0.25;	//how fast or slow the text types

text[text_current] = scp_string_wrap(text[text_current], text_width);