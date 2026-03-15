rooms = [oRoomManagerL1, oRoomManagerL2, oRoomManagerL3, oRoomManagerL4];
//if (global.room == 1) {
//	instance_destroy(oDialogRoom1);
//} else if (global.room == 2) {
//	instance_destroy(oDialogRoom2);
//} else if (global.room == 3) {
//	instance_destroy(oDialogRoom3);
//} else if (global.room == 4) {
//	instance_destroy(oDialogRoom4);
//}
global.paused = false;
if (global.room >= 2 && room != rm_fairy) {
	//if (!global.restarted) {
		var _door_instances = rooms[global.room - 1].get_all_instances_on_layer("Door");
	
		with (_door_instances[0]) {
			instance_destroy();
		}
		with (_door_instances[1]) {
			instance_destroy();
		}
	//}
	
}
if (global.room == 4 && room != rm_fairy) {
	instance_create_layer(800, 32, "Spawns", oEvilEye);
}

if (room == rm_fairy) {
	show_debug_message("attempting to change rooms");
	room_goto(rm_choice);
	show_debug_message("swtiched");
}

