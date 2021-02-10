if (alpha < 1)
	alpha += 1/(FADE_TIME*room_speed);
	
//show_debug_message("fade out alpha: " + string(alpha));

if (alpha >= 1 && !fade_finished) {
	// If browser, show browser end screen.
	if (global.is_browser) {
		room_goto(rm_end_screen_browser);
	}
	
	fade_finished = true;
}

// If not browser, end game on any key press.
//if (allow_quit_any_key && keyboard_check_pressed(vk_anykey)) {
//	game_end();
//}