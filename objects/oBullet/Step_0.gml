if(place_meeting(x, y, oBorder)) {
		var b = instance_create_layer(startx, starty, "Instances_2", oBullet);
		b.direction = 0;
		b.speed = 8;
		instance_destroy(self);
	}

/*if (x > room_width || x< 0 || y > room_height || y < 0){
	instance_destroy();
}

*/

if (place_meeting(x, y, global.player)) {
	
		global.player.hp--;
		//flash = 3;
		var b = instance_create_layer(startx, starty, "Instances_2", oBullet);
		b.direction = 0;
		b.speed = 8;
		instance_destroy(self);
		if (global.player.hp <= 0) {
			room_restart();
		}

		
	
}

