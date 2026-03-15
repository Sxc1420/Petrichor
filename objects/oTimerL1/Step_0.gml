if (global.paused == false) {
	time_left = max(0, time_left - 1);
}
if (time_left == 0) {
	global.timerOver = true;
	//oIntruderDetected.isBlinking = true;
	//oIntruderDetected.alarm[0] = room_speed;
	//if (oIntruderDetected.isBlinking == false) {
	oRoomManagerL1.restarted = true;
	room_restart();
	//}
	
	
	
	
}