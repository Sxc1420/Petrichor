//var _video_data = video_draw();
//var _status = _video_data[0]; 
//var current = _video_data[1];

//if (_status == 0) {
//    // Video is PLAYING perfectly
//    draw_surface(current, x, y);
//}

//if (_status == -2) {
//    draw_surface(current, 0, 0); // Draws the video at the top-left corner
//}
var _video_array = video_draw();
if (_video_array[0] == 0) // Check if the frame was successfully processed (0 means success)
{
    var _video_surface = _video_array[1];
    draw_surface(_video_surface, 0, 0); // Draw the surface at position (0, 0)
}
if (async_load[? "type"] == "video_ended")
{
    video_close();
	room_goto(rm_menu);
}