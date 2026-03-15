draw_set_color(c_yellow); // Set the text color to white
	draw_set_font(global.font); // Set a custom font (optional, create one first)
	draw_set_halign(fa_left); // Align the text to the left (optional)
	draw_text(1500, 24, "Gold: " + string(global.gold));
	draw_set_color(c_white);