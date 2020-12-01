// Initialize global variables.
scr_globals();

// Initialize Game Analytics extension. 
// See https://gameanalytics.com/docs/item/gamemaker-sdk/
if (global.game_analytics_enabled) {
	// Game version.
	ga_configureBuild(global.game_version);

	// Development settings - should be disabled in production builds!
	if (global.debug) {
		ga_setEnabledInfoLog(true);
		ga_setEnabledVerboseLog(true);
	}

	// Initialize with game id and scret key. From GameAnalytics.com dashboard.
	ga_initialize("c842bee8613a24fcdd99476372f85329", "d0bd65f832b5ac2701f38f76d1cd4a3f82acb8e4");
}

// Game Analytics - register this screen.
if (global.game_analytics_enabled) {
	ga_addProgressionEvent(GA_PROGRESSIONSTATUS_START, "title_screen");
}

window_set_cursor(cr_handpoint);

//window_width = window_get_width();
//width = sprite_get_width(spr_start_button)
//x = window_get_x() + window_width/2 - width/2;
//y = window_get_y() + 32;
//window_get_width();
//start_button = clickable_add(x, y, sprite_get_tpe(spr_start_button, 0), "gmcallback_fullscreen", "_self", "width=700, height=500, menubar=0, toolbar=0, scrollbars=0");4
x = 0;
y = 0;

// TODO: this clickable_exists check is breaking things for som reason...
//if (!clickable_exists(global.start_button)) {
//	global.start_button = clickable_add(x, y, sprite_get_tpe(spr_debug, 0), "gmcallback_start_game", "_self", "");
//}

//global.start_button = clickable_add(x, y, sprite_get_tpe(spr_debug, 0), "gmcallback_start_game", "_self", "");

surf_start_button = 0;
spr_start_button = 0;
scr_resize_title_screen();