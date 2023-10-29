time_since_last_interaction = 0;
time_till_restart = 20;			// min time between interactions before restart.
if (global.debug)
	time_till_restart = 6;
	
warning_time = time_till_restart - 7;
if (global.debug)
	warning_time = time_till_restart / 2;
alarm[0] = 1 * room_speed;	// Check last interaction every one second.