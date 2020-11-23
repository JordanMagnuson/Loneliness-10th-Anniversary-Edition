// We need to draw the overlay here, instead of in Draw GUI, because we want the game objects
// to be rendered on top of the overlay (the overlay should make the background lighter or darker,
// but not the game objects.
cam_x1 = camera_get_view_x(view_camera[0]);
cam_y1 = camera_get_view_y(view_camera[0]) - 10; // Start a bit above camera position, in case of movement, etc.
cam_x2 = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
cam_y2 = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);

//show_debug_message("alpha: " + string(alpha));
if (obj_player.y > light_to_dark_switch) {
	draw_set_alpha(0.8);
	gpu_set_blendmode(bm_normal)
	draw_set_color(c_white);
	draw_rectangle(cam_x1, cam_y1, cam_x2, cam_y2, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
}
else {
	draw_set_alpha(alpha);
	draw_set_color(c_black);
	draw_rectangle(0, 0, global.gui_width, global.gui_height, false);
	draw_set_alpha(1);
	draw_set_color(c_white);	
}