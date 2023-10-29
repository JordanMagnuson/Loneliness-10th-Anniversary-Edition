if (time_since_last_interaction > warning_time) {
	draw_set_color(c_black);
	draw_set_font(fnt_casual_encounter_big);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(1);
	var draw_y = obj_camera.y;
	draw_text(obj_camera.x, draw_y, "No user input detected. Game will auto restart shortly.");
	draw_set_alpha(1);
}