// Basic camera controller that utilizes a single viewport and view. 
// See https://forum.yoyogames.com/index.php?threads/guide-meet-the-new-camera-system.12269/
// and https://maddestudiosgames.com/gms2-meet-the-camera-system/

// Enable the use of views, and make target view visible.
view_enabled = true;
target_view = 0;
view_set_visible(target_view, true);

// Set default width and height for our view.
view_width_default = global.view_width_default;
view_height_default = global.view_height_default;
aspect_default = view_width_default / view_height_default;
view_width = view_width_default;
view_height = view_height_default;

// Set the port bounds of target_view.
view_set_wport(target_view, view_width);
view_set_hport(target_view, view_height);

// Build a camera using our view settings.
camera = camera_create_view(0, 0, view_width, view_height, 0, -1, -1, -1, 0, 0);

// Set target view to use our camera.
view_set_camera(target_view, camera);

// Choose object to follow.
if (instance_exists(obj_player)) {
	follow = obj_player;
	x = follow.x;
	y = follow.y;
}
else {
	follow = noone;
	x = view_width / 2;
	y = view_height / 2;
}
x_to = x;
y_to = y;

// Set camera movement characteristics.
// camera_movement_lag determines how long it takes camera to catch up to objects it is following.
// camera_movement_precision determines pixel precision of camera movement.
camera_movement_lag = 1;
camera_movement_precision = 0.01;

// Don't change anything below.
last_browser_width = browser_width;
last_browser_height = browser_height;
surface_width = global.browser_width_hdpi;
surface_height = global.browser_height_hdpi;
scr_canvas_fullscreen(surface_width, surface_height);

alarm[0] = 3;
