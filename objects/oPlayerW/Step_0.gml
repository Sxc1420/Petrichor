if (!global.paused) {
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(vk_space);

	var move = key_right - key_left;


	hsp = move * walksp;
	vsp += grav;

	if(x>= 990){
		 x=990;
	}
	if(place_meeting(x, y, oPortal1)){
	
		// level 2
	
		room_goto(choose(Platform5, Platform6, Platform7, Platform8));
	}

	if(place_meeting(x, y, oPortal2)){
		
		room_goto(choose(Platform9, Platform10));
	}

	if(place_meeting(x, y, oPortal3)){
	
		room_goto(Platform12);
	}
	if (place_meeting(x, y, oPortal4)) {
		room_goto(rm_fairy);
	}

	//  ground lava
	if (place_meeting(x, y+vsp, oLava)) {
		while (!place_meeting(x, y+sign(vsp), oLava)) {
			y += sign(vsp);
		}
		global.hp = 0;
		//for (var i = global.room;  i > 0; i--) {
		//	rooms[i-1].restarted = true;
		//}
		
		room_goto(rm_restart);

	}




	if (place_meeting(x, y+3, oPlatform) && key_jump) {
		vsp = -10;
	}
	//Damage
	if (lava_damage) {
		global.hp = max(0, global.hp - 5);
		lava_damage = false;
	}

	// horizontal collision
	if (place_meeting(x+hsp, y, oPlatform)) {
		while (!place_meeting(x + sign(hsp), y, oPlatform)) {
			x += sign(hsp);
		}
		hsp = 0;
	
	}
	x += hsp;
	// verticl collision
	if (place_meeting(x, y+vsp, oPlatform)) {
		while (!place_meeting(x, y+sign(vsp), oPlatform)) {
			y += sign(vsp);
		}
		vsp = 0;

	}
	y += vsp;

}



//Animation

//if (!place_meeting(x, y+1, oPlatform)) {
//	image_speed = 0;
//} else {
//	image_speed = 1;
//	if (hsp == 0) {
///		sprite_index = sPlayer;
	//} else {
//		sprite_index = sPlayerW;
//	}
//}

//if (hsp != 0) {
//	image_xscale =  0.125 * sign(hsp);
//}