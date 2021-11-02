/// @description Insert description here
// You can write your code in this editor
var _len = string_length(text[text_current]);

//jump from typing text to having the entire line written out
if(char_current < _len){
	char_current = _len; //sets current character drawn to last character in screen	
}
//moves onto next text sequence in text array
else{
	text_current += 1;
	if(text_current > text_last) {
		instance_destroy();	
	}
	else{
		text[text_current] = scp_string_wrap(text[text_current], text_width);
		char_current = 0;
	}
}