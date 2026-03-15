var portrait = text[text_current].portrait;
var name = text[text_current].speaker;


var box_height = 150;
var box_y = display_get_gui_height() - box_height;
draw_set_alpha(0.8);
draw_set_colour(c_black);
draw_rectangle(350, box_y, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

var portrait_x = 32;
var portrait_y = box_y + 8;
draw_sprite(portrait, 0, portrait_x, portrait_y);

draw_set_font(global.font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

draw_text(portrait_x, portrait_y+278, name);

var _len = string_length(text[text_current].message);
if (char_current < _len)
    {
    char_current += char_speed;
    }
	
var _str = string_copy(text[text_current].message, 1, char_current);
draw_text(text_x, text_y,  _str);

