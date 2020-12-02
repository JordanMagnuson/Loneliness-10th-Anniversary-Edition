// Load the level.
scr_load_level();

// Music not yet playing.
global.audio_music = 0;

// Player not yet reached midpoint.
analytics_reached_mid_level = false;

// Hide the cursor.
window_set_cursor(cr_none);

// Disable double-click detection.
device_mouse_dbclick_enable(false);

// Rmove start button clickable (which starts the game in fullscreen mode in HTML5).
if (variable_global_exists("start_button") && clickable_exists(global.start_button)) {
	clickable_delete(global.start_button);
}

// Analytics: register this room.
if (global.game_analytics_enabled) {
	ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "title_screen");
	ga_addProgressionEvent(GA_PROGRESSIONSTATUS_START, "level_start");
}