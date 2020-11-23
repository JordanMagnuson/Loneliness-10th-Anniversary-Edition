function scr_resize_title_screen() {
	// Live coding with GMLive extension. See https://yal.cc/r/17/gmlive/
	if (global.debug && live_call()) {
		return live_result;
	}	

	var w = browser_width;
	var h = browser_height;
	last_browser_width = browser_width;
	last_browser_height = browser_height;

	// find screen pixel dimensions.
	// See browser_hdpi extension https://yellowafterlife.itch.io/gamemaker-html5-hdpi-support
	global.browser_width_hdpi = w * global.pixel_ratio;
	global.browser_height_hdpi = h * global.pixel_ratio;
	show_debug_message("global.pixel_ratio: " + string(global.pixel_ratio));
	show_debug_message("global.browser_width_hdpi: " + string(global.browser_width_hdpi));
	show_debug_message("global.browser_height_hdpi: " + string(global.browser_height_hdpi));

	surface_width = global.browser_width_hdpi; //display_get_width();
	surface_height = global.browser_height_hdpi; //display_get_height();
	global.aspect_ratio = surface_width / surface_height;
	window_set_size(global.browser_width_hdpi, global.browser_height_hdpi);
	display_set_gui_size(global.browser_width_hdpi, global.browser_height_hdpi);

	// resize application_surface, if needed
	if (application_surface_is_enabled()) {
	    surface_resize(application_surface, global.browser_width_hdpi, global.browser_height_hdpi);
	}

	// set canvas size to page pixel size:
	browser_stretch_canvas(w, h);

	// Set GUI scale depending on window size.
	if (global.browser_height_hdpi < 320) {
		global.gui_scale = 1;
	}
	else if (global.browser_width_hdpi < 230 || global.browser_height_hdpi < 400) {
		global.gui_scale = 1.25;
	}
	else if (global.browser_width_hdpi < 425 || global.browser_height_hdpi < 510) {
		global.gui_scale = 1.5;
	}
	else if (global.browser_width_hdpi < 675 || global.browser_height_hdpi < 760) {
		global.gui_scale = 2;
	}
	else if (global.browser_width_hdpi < 1000 || global.browser_height_hdpi < 1000) {
		global.gui_scale = 3;
	}
	else {
		global.gui_scale = 4;
	}

	// Remove start button, because we will need to re-create it now that the screen has changed.
	if (os_browser != browser_not_a_browser) {
		if (variable_global_exists("start_button") && clickable_exists(global.start_button)) {
			clickable_delete(global.start_button);
			global.start_button = 0;
		}
	}
	spr_start_button = 0;

	//show_debug_message("browser_width: " + string(browser_width));
	//show_debug_message("browser_height: " + string(browser_height));
	//show_debug_message("global.aspect_ratio: " + string(global.aspect_ratio));
	//show_debug_message("global.gui_scale:" + string(global.gui_scale));	
}
