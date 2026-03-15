//coin
if ((room != rm_intro_photo) && (room != rm_intro_video) && (room != rm_tutorial) && (room != rm_menu) && (room != rm_end_fairies) &&  (room != rm_end_artemis) && (room != rm_choice) ) {
	draw_set_color(c_yellow); // Set the text color to white
	draw_set_font(global.font); // Set a custom font (optional, create one first)
	draw_set_halign(fa_left); // Align the text to the left (optional)
	draw_text(1200, 15, "Gold: " + string(global.gold));
	draw_set_color(c_white);
}  
	

 // Draw the text at position (20, 20)