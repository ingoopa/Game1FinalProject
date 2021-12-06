/// @description

text[0] = "thank you for playing our game, liminal space!";
text[1] = "we hope you enjoyed playing!";
text[2] = "avery, cynthia, meghan, and orion";


text_current = 0;
text_last = 2;
text_width = 300;
text_x = x;
text_y = y;

char_current = 1;
char_speed = 0.25;

string_wrap[text_current] = string_wrap(text[text_current], text_width);