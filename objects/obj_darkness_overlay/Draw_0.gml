// We need to draw the overlay here, instead of in Draw GUI, because we want the game objects
// to be rendered on top of the overlay (the overlay should make the background lighter or darker,
// but not the game objects.
cam_x1 = camera_get_view_x(view_camera[0]);
cam_y1 = camera_get_view_y(view_camera[0]) - 10; // Start a bit above camera position, in case of movement, etc.
cam_x2 = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
cam_y2 = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 10;

//show_debug_message("alpha: " + string(alpha));
if (obj_player.y > light_to_dark_switch_line) {
	// Light overlay.
	alpha = scr_map_value(obj_player.y, light_to_dark_switch_line, room_height, 0, light_overlay_max_alpha);
	draw_set_alpha(alpha);
	draw_set_color(c_white);
	draw_rectangle(cam_x1, cam_y1, cam_x2, cam_y2, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
}
else {
	// Dark overlay.
	alpha = scr_map_value(light_to_dark_switch_line-obj_player.y, 0, light_to_dark_switch_line, 0, dark_overlay_max_alpha);
	show_debug_message("dark alpha: " + string(alpha));
	draw_set_alpha(alpha);
	draw_set_color(c_black);
	draw_rectangle(cam_x1, cam_y1, cam_x2, cam_y2, false);
	draw_set_alpha(1);
	draw_set_color(c_white);	
}

// Debug line
if (global.debug) {
	draw_set_color(c_red);
	draw_line(0, light_to_dark_switch_line, room_width, light_to_dark_switch_line);
	draw_set_color(c_white);
}