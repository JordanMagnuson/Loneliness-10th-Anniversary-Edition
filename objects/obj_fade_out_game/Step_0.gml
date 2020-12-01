alpha += 1/(FADE_TIME*room_speed);
//show_debug_message("fade out alpha: " + string(alpha));

if (alpha >= 1) 
	room_goto(rm_end_screen);