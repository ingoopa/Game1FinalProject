/// @description

var _len = string_length(text[text_current]);
if (char_current < _len)
    {
    char_current = _len;
    }
	
	else
    {
    text_current += 1;
    if (text_current > text_last)
        {
        room_goto(Level1);
        }
    else
        {
        text[text_current] = string_wrap(text[text_current], text_width);
        char_current = 0;
        }
    }