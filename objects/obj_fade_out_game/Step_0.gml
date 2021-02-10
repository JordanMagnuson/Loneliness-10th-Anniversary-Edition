if (alpha < 1)
	alpha += 1/(FADE_TIME*room_speed);
	
//show_debug_message("fade out alpha: " + string(alpha));

if (alpha >= 1) {
	// If browser, show browser end screen.
	if (global.is_browser) {
		room_goto(rm_end_screen_browser);
	}
	
	// If not browser, end game on any key press.
	else if (keyboard_check_pressed(vk_anykey)) {
		game_end();
	}
}