// Load gamepads.
// See https://www.yoyogames.com/blog/75/coffee-break-tutorials-setting-up-and-using-gamepad
function scr_load_gamepads() {
	show_debug_message("scr_load_gamepads...");
	global.gamepad_input = false;
	global.gp = false;
	if (gamepad_is_supported()) {
		global.gamepad_count = gamepad_get_device_count();
		show_debug_message(string(global.gamepad_count) + " gamepads are connected");
		for (var i = 0; i < global.gamepad_count; i++;) {
			if gamepad_is_connected(i) {
				show_debug_message("gamepad # " + string(i) + " is connected!");
				global.gamepad_input = true;
				global.gp[i] = true;
				gamepad_set_axis_deadzone(i, 0.1);
			}
			else {
				global.gp[i] = false;
			}
	  }
	}
}