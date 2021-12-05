/// @description

text[0] = "After crash landing during your mission to an unkown planet to \ninvestigate unexplained wreckages,";
text[1] = "you exit the cabin and find the arid and toxic atmosphere causes you \nto lose your sight.";
text[2] = "However, in your newly blind surrounding, you realize that you can \nsense the area around you using your newfound seismic sense.";
text[3] = "In order to get off the planet you decide to start exploring, hoping to \nfind someone who may be able to help.";

text_current = 0;
text_last = 3;
text_width = 300;
text_x = x;
text_y = y;

char_current = 1;
char_speed = 0.25;

string_wrap[text_current] = string_wrap(text[text_current], text_width);