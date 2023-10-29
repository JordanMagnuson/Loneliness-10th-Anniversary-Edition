/// @description Move to cursor

if (global.is_touch_device && start_mouse_input) {
	mouse_clicked = true;
	destination_x = mouse_x;
	destination_y = mouse_y;	
}

//show_debug_message("destination x: " + string(destination_x));
//show_debug_message("destination y: " + string(destination_y));