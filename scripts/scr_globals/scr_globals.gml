global.debug = false;

// Resolution scale multiplier, relative to the original
// flash game, which was 400x300 pixels, with 400x8000 game room.
// This constant is used to scale the game sprites and
// object locations during level building.
// rm_game room dimensions still have to be set manually.
global.scale_multiplier = 2.4;

// Since we are converting from 400x300 to widescreen ratio, we need
// to factor that in for x placement of objects when loading the level.
// If scale_multiplier = 2, then we are converting from original width of 400px
// to a new width of 960px, which means x_placement_multiplier = 2.4.
//global.level_size_multiplier = 2.4;

// Camera.
// Original game view size was 400x300.
global.view_width_default = 400 * global.scale_multiplier ;
global.view_height_default = 300 * global.scale_multiplier ;

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
if (global.pixel_ratio <= 1) global.pixel_ratio = 1;
global.browser_width_hdpi = browser_width * global.pixel_ratio;
global.browser_height_hdpi = browser_height * global.pixel_ratio;

global.gui_width = display_get_gui_width();
global.gui_height = display_get_gui_height();