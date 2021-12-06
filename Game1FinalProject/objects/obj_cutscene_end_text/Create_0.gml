/// @description

text[0] = "As you leave the cave, you reach a bluff that shows the expanse\nlandscape of the strange planet.";
text[1] = "With so much left to explore, you continue on through the\nplanet's dangerous landscape";
text[2] = "in search of a way back home.";

text_current = 0;
text_last = 2;
text_width = 300;
text_x = x;
text_y = y;

char_current = 1;
char_speed = 0.25;

string_wrap[text_current] = string_wrap(text[text_current], text_width);