/// @description Check last interaction
//show_debug_message("last interaction: " + string(time_since_last_interaction));
time_since_last_interaction += 1;
if (time_since_last_interaction >= time_till_restart) {
	game_restart();
}
alarm[0] = 1 * room_speed;