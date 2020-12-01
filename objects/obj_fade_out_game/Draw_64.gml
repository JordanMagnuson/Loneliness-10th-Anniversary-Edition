/// @description Fade Out
w = display_get_gui_width();
h = display_get_gui_height();

draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, w, h, false);
draw_set_alpha(1);
draw_set_color(c_white);
