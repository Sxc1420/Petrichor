if (showing_dialog == false) {
	if (dialog.count() == 0) {
		instance_destroy();
		return;
	}
	current_dialog = dialog.pop();
	if (current_dialog.sprite == fairy && !fairy_spoke) {
		audio_play_sound(fairy_speak, 5, false);
		fairy_spoke = true;
	} else if ((current_dialog.sprite == artemis_talking|| current_dialog.sprite == artemis_thinking || current_dialog.sprite == artemis_angry) && !artemis_spoke) {
		audio_play_sound(artemis_speak, 5, false);
		artemis_spoke = true;
	}
	showing_dialog = true;
	
}
else {
	if (keyboard_check_released(key_next)) {
		showing_dialog = false;
		//alpha = 0;
	}
}