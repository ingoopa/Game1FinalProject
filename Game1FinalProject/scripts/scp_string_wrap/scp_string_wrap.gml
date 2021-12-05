// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function string_wrap(_txt, _width){
	
	var _text_wrapped = "";
	var _space = -1;
	var _char_pos = 1; 
	
	while (string_length(_txt) >= _char_pos){
		if (string_width(string_copy(_txt, 1, _char_pos)) > _width){
			if (_space != -1){
				_text_wrapped += string_copy(_txt, 1, _space) + "\n";
				_txt = string_copy(_txt, _space + 1, string_length(_txt) - (_space));
				_char_pos = 1;
				_space = -1;
			}
		}
		
		if(string_char_at(_txt, _char_pos) == ""){
			_space = _char_pos;	
		}
		_char_pos += 1;
	}
	
	if(string_length(_txt) > 0){
		_text_wrapped += _txt;	
	}
	return _text_wrapped; 
}