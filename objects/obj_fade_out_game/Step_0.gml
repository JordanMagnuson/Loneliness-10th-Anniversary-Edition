if (alpha < 1)
	alpha += 1/(FADE_TIME*room_speed);
	
//show_debug_message("fade out alpha: " + string(alpha));

if (alpha >= 1) {
	// If browser, show browser end screen.
	if (global.is_browser) {
		room_goto(rm_end_screen_browser);
	}
	
	if (!fade_finished) {
		alarm[0] = TIME_AFTER_FADE_TO_ALLOW_QUIT_ANY_KEY * room_speed;
	}
	
	fade_finished = true;
}


// If not browser, end game on any key press.
if (allow_quit_any_key && keyboard_check_pressed(vk_anykey)) {
	game_end();
}