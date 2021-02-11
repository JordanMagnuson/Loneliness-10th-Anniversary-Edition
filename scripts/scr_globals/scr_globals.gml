function scr_globals() {

	global.debug = false;
	global.game_analytics_enabled = true; // Whether game analytics are enabled and sending.
	
	// Game version. HTML5 builds should be 1.x.x and Windows builds should be 2.x.x
	// (For tracking stats separately in GameAnalytics).
	global.game_version = "2.0.2";

	// Force objects into 4/3 aspect ratio at center of screen?
	// This will recreate the view from the original game (which was 400x300).
	// The challenge here is that we want the background to stretch all the way
	// accross the presumably 16/9 screen, but we want to keep the squares in the
	// 4/3 center area during level generation.
	// If we do this we need to keep the room width at 16/9 multiplier (e.g. 2.4 x 400)
	// but room height at a simple multiplier (e.g. 2 x 8000)
	global.force_objects_into_4_3 = true;

	// Resolution scale multiplier, relative to the original
	// flash game, which was 400x300 pixels, with 400x8000 game room.
	// This constant is used to scale the game sprites and
	// object locations during level building.
	// rm_game room dimensions still have to be set manually.
	if (global.force_objects_into_4_3)
		global.scale_multiplier = 2;
	else
		global.scale_multiplier = 2.4;	// 2.4 x 400 = 960. A 16/9 ratio.

	// Camera.
	// Original game view size was 400x300.
	global.view_height_default = 300 * global.scale_multiplier;
	if (global.force_objects_into_4_3)
		global.view_width_default = 400 * 2.4;
	else
		global.view_width_default = 400 * global.scale_multiplier;

	// Player.
	// Default speed = 75; debug = 400
	if (global.debug) {
		global.player_speed = 400 * global.scale_multiplier; // Do I need to factor room_speed in here?
	}
	else {
		global.player_speed = 75 * global.scale_multiplier; // Do I need to factor room_speed in here?
	}
	global.allow_input = true;
	global.orientation_check_visible = false;
	global.fade_out_started = false;

	// Others.
	//global.follower_speed = 180 / room_speed; 
	global.other_speed_default = 72 / room_speed * global.scale_multiplier; 
	global.leaver_speed = 60 / room_speed * global.scale_multiplier;
	global.leaver_fade_out_time = 3; // Time in seconds for leavers to fade out.
	//global.follower_min_distance = obj_player.sprite_width;
	global.player_scare_radius = 40 * global.scale_multiplier;
	global.leaver_scare_radius = 60 * global.scale_multiplier;

	// Movement keys.
	//  1-dimensional array, where each input represents a 90-degree increment. 
	// So, “D” is 0 degrees (right), “W” is 90 degrees (up), “A” is 180 degrees (left), 
	// and “S” is 270 degrees (down).
	// (We can include multiple input options simply by adding to the array, since  
	// array key i is just multiplied by 90 degrees to determine direction).
	// See https://www.yoyogames.com/blog/432/buttery-smooth-tech-tips-movement
	global.movement_inputs[0] = vk_right;
	global.movement_inputs[1] = vk_up;
	global.movement_inputs[2] = vk_left;
	global.movement_inputs[3] = vk_down;

	// Allow AWSD input as well.
	global.movement_inputs[4] = ord("D");
	global.movement_inputs[5] = ord("W");
	global.movement_inputs[6] = ord("A");
	global.movement_inputs[7] = ord("S");
	
	// Gamepad input.
	scr_load_gamepads();

	// Is this a browser?
	global.is_browser = true;
	if (os_browser == browser_not_a_browser) {
		global.is_browser = false;
	}

	// Is this a touch device?
	switch (os_type) {
		case os_ios:
		case os_android:
			global.is_touch_device = true;
			break;
		default:
			global.is_touch_device = false;
			break;
	}

	// Get pixel ratio for this device. Allows us to utilize full resolution of
	// high dpi mobile devices (potentially at the expense of performance).
	// See browser_hdpi extension.
	//global.pixel_ratio = 1;
	global.pixel_ratio = browser_get_device_pixel_ratio();
	//global.pixel_ratio = 1;
	if (global.pixel_ratio <= 1) global.pixel_ratio = 1;
	global.browser_width_hdpi = browser_width * global.pixel_ratio;
	global.browser_height_hdpi = browser_height * global.pixel_ratio;

	global.gui_width = display_get_gui_width();
	global.gui_height = display_get_gui_height();

}