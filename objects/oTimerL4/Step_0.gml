if (global.paused == false) {
	time_left = max(0, time_left - 1);
}
if (time_left == 0) {
	oRoomManagerL4.restarted = true;
	room_restart();
}