/// scr_canvas_fullscreen(browser_width, browser_height)
function scr_canvas_fullscreen(argument0, argument1) {
	// argument0 = the current browser width
	// argument1 = the current browser height
	// Provides automatic fullscreen scaling for HTML5 target. 
	// See https://www.yoyogames.com/blog/67/scaling-for-html5

	var w = argument0;
	var h = argument1;

	// find screen pixel dimensions.
	// See browser_hdpi extension https://yellowafterlife.itch.io/gamemaker-html5-hdpi-support
	global.browser_width_hdpi = w * global.pixel_ratio;
	global.browser_height_hdpi = h * global.pixel_ratio;

	view_set_wport(target_view, global.browser_width_hdpi);
	view_set_hport(target_view, global.browser_height_hdpi);

	window_set_size(global.browser_width_hdpi, global.browser_height_hdpi);
	display_set_gui_size(global.browser_width_hdpi, global.browser_height_hdpi);
	window_center();

	global.aspect_ratio = (w / h);

	// Tall.
	if (global.aspect_ratio < aspect_default)
	{
	  view_height = view_height_default;
	  view_width = (view_height * global.aspect_ratio);	
	}
	// Wide. 
	else
	{
		view_width = view_width_default;	
		view_height = (view_width / global.aspect_ratio);
	}

	// Set GUI scale depending on window size.
	if (global.browser_width_hdpi < 425 || global.browser_height_hdpi < 425) {
		global.gui_scale = 1.5;
	}
	else if (global.browser_width_hdpi < 675 || global.browser_height_hdpi < 675) {
		global.gui_scale = 2;
	}
	else if (global.browser_width_hdpi < 1000 || global.browser_height_hdpi < 1000) {
		global.gui_scale = 3;
	}
	else {
		global.gui_scale = 4;
	}

	camera_set_view_size(view_camera[target_view], view_width, view_height);

	// resize application_surface, if needed
	if (application_surface_is_enabled()) {
	    surface_resize(application_surface, global.browser_width_hdpi, global.browser_height_hdpi);
	}

	// set canvas size to page pixel size:
	browser_stretch_canvas(w, h);
	
	global.gui_width = display_get_gui_width();
	global.gui_height = display_get_gui_height();

	//show_debug_message("window resized");

	// Resize the blood surface as well.
	//if (variable_global_exists("surf_blood") && surface_exists(global.surf_blood)) {
	//	surface_resize(global.surf_blood, argument0, argument1);
	//}	


}
