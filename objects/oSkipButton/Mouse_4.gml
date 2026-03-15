if (room == rm_intro_video) {
	video_close();
} else if (room == rm_tutorial) {
	room_goto(rm_menu);
}
