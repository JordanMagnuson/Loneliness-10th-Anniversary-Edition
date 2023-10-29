 // Live coding with GMLive extension. See https://yal.cc/r/17/gmlive/
//if (global.debug && live_call()) {
//	return live_result;
//}	

w = display_get_gui_width();
h = display_get_gui_height();

draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, w, h, false);
draw_set_alpha(1);
draw_set_color(c_white);