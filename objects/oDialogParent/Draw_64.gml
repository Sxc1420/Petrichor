if (showing_dialog == true) {
	global.paused = true;
	var text_x = 50;
	var text_y = 650;
	var height = 50;
	var outline = 10;
	var padding = 10;
	
	height = string_height(current_dialog.message);
	if (sprite_get_height(current_dialog.sprite) > height) {
		height = sprite_get_height(current_dialog.sprite);
	}
	
	height += padding * 2;
	text_x = sprite_get_width(current_dialog.sprite) + (padding * 2);
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(40, 550, 1320, 735, false)
	
	//draw_set_colour(c_white);
	//draw_rectangle(outline, outline+750, display_get_gui_width() - outline, height - outline, false);
	
	//draw_set_colour(c_grey);
	//draw_rectangle((outline*2), (outline * 2)+700, display_get_gui_width() - 50, height+20, false);
	
	draw_sprite(current_dialog.sprite, 0, 40, 565);
	draw_set_font(global.font);
	draw_set_colour(c_white);
	draw_text_ext(text_x+20, text_y, current_dialog.message, 20, 1060);
	
	alpha = lerp(alpha, 1, 0.06);
	

	
	
}
draw_set_alpha(1);