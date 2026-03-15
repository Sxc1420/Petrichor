var _len = string_length(text[text_current].message);
rooms = [oRoomManagerL1, oRoomManagerL2, oRoomManagerL3, oRoomManagerL4];
if (text_current <= rooms[global.room-1].dialogue+2) {
	if (char_current < _len)
    {
    char_current = _len;
    } else
    {
    text_current += 1;
	global.dialogue++;
    if (text_current > text_last)
        {
        text_current -= 1;
		global.dialogue--;
		//room_restart();
        }
    else
        {
        text[text_current].message = string_wrap(text[text_current].message, text_width);
        char_current = 0;
        }
    }
} else {
	global.paused = false;
}
