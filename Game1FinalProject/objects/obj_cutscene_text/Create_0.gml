/// @description

text[0] = "writing 1";
text[1] = "This is a really, really, really, long and silly";
text[2] = "waaaa";

text_current = 0;
text_last = 2;
text_width = 300;
text_x = x;
text_y = y;

char_current = 1;
char_speed = 0.25;

string_wrap[text_current] = string_wrap(text[text_current], text_width);