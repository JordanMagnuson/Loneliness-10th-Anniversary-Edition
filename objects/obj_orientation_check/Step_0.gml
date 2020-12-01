visible = false;
global.orientation_check_visible = false;
if (global.is_touch_device && global.aspect_ratio < 1) {
	visible = true;
	global.orientation_check_visible = true;
}