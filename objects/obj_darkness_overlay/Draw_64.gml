//alpha = scr_map_value(room_height-obj_player.y, 0, room_height, 0, 1);
//show_debug_message("alpha: " + string(alpha));
draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, global.gui_width, global.gui_height, false);
draw_set_alpha(1);
draw_set_color(c_white);