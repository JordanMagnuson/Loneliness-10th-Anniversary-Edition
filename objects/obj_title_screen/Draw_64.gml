// Live coding with GMLive extension. See https://yal.cc/r/17/gmlive/
if (global.debug && live_call()) {
	return live_result;
}	

//draw_sprite(sStartScreen,0,0,0);

// Turn global linear interpolation (anti-aliasing) off for pixel-font text.
gpu_set_texfilter(false);

// Debug.
if (global.debug) {
	draw_sprite(spr_debug, 0, 64, 64);
	draw_sprite(spr_debug, 0, surface_width - 64, 64);
	draw_sprite(spr_debug, 0, surface_width- 64, surface_height - 64);
	draw_sprite(spr_debug, 0, 64, surface_height - 64);
}

// Set up text drawing.
draw_set_color(c_white);
draw_set_font(fnt_casual_encounter);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(1); 

vs = surface_height / 32;

// Title
xx = surface_width/2;
yy = surface_height/4;
if (global.browser_width_hdpi < 320)
	var title = "LONELINESS";
else
	var title = "LONELINESS";
string_h = global.gui_scale * 2 * string_height(title);	
draw_text_transformed(xx, yy, title, 2 * global.gui_scale, 2 * global.gui_scale, 0);

// By line
//draw_set_font(fntVerdana);
yy += string_h + vs;
if (global.browser_width_hdpi < 320)
	var byline = "A notgame by \nJordan Magnuson \nMusic by \nKevin MacLeod";
else
	var byline = "A notgame by Jordan Magnuson \nMusic by Kevin MacLeod";
draw_text_transformed(xx, yy, byline, global.gui_scale, global.gui_scale, 0);

// Instructions
yy += 64*global.gui_scale;
draw_set_color(c_yellow);
if (global.browser_width_hdpi < 320)
	var instructions = "Arrow keys (or touch) \nto move."
else
	var instructions = "Arrow keys (or touch) to move."
draw_text_transformed(xx, yy, instructions, global.gui_scale, global.gui_scale, 0);
draw_set_color(c_white);

// Start button
if (!spr_start_button) {
	//sScreen = sprite_create_from_surface(application_surface,0,0,surface_width,surface_height,false,false,0,0);
	
	// Create start button sprite from surface.
	surf_start_button = surface_create(surface_width, surface_height);
	//sw = surface_get_width(surf_start_button);
	//sh = surface_get_height(surf_start_button);	
	surface_set_target(surf_start_button);
	yy += 64*global.gui_scale;
	start_text = "CLICK TO START";
	if (global.is_touch_device) {
		start_text = "TOUCH TO START";
	}
	draw_text_transformed(xx, yy, start_text, global.gui_scale*3/2, global.gui_scale*3/2, 0);	
	string_w = global.gui_scale*3/2 * string_width(start_text);
	string_h = global.gui_scale*3/2 * string_height(start_text);	
	yy += string_h;
	draw_text_transformed(xx, yy, "(FULLSCREEN)", global.gui_scale, global.gui_scale, 0);	
	
	// Use draw_rectangle to create border around text.
	//draw_set_color(c_yellow);
	//draw_rectangle(0,0,sw,sh,true);
	//draw_rectangle(1,1,sw-1,sh-1,true);
	//draw_rectangle(2,2,sw-2,sh-2,true);	
	spr_start_button = sprite_create_from_surface(surf_start_button,0,0,surface_width,surface_height,false,false,0,0);
	surface_reset_target();
	surface_free(surf_start_button);
}

draw_sprite(spr_start_button,0,0,0);

// Turn global linear interpolation (anti-aliasing) back on.
gpu_set_texfilter(true);