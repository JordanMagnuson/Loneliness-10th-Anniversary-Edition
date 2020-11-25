// Live coding with GMLive extension. See https://yal.cc/r/17/gmlive/
//if (global.debug && live_call()) {
//	return live_result;
//}	


if (last_browser_width != browser_width || last_browser_height != browser_height) {
	scr_resize_end_screen();
}

if (show_thanks_txt && thanks_txt_alpha < 1)
	thanks_txt_alpha += 1/(thanks_txt_fade_time*room_speed);
	
if (show_follow_txt && follow_txt_alpha < 1)
	follow_txt_alpha += 1/(follow_txt_fade_time*room_speed);	
	
if (show_quit_txt && quit_txt_alpha < 1)
	quit_txt_alpha += 1/(quit_txt_fade_time*room_speed);	
	

// HTML5 clickable (for follow link).
if (global.is_browser && spr_follow_link) {
	// Note that because of a bug in clickable_add, the clickable that is generated is sometimes larger than the sprite.
	// This means that if we're adding fullscreen clickable, we get ugly scroll bars in the browser window.
	// To combat this, when we package the game we need to add "overflow: hidden" to the body tag in index.html.	
	if (!follow_link || !clickable_exists(follow_link)) {
		window_set_cursor(cr_handpoint);
		//var url = "https://www.necessarygames.com/my-games-link";
		var url = "https://www.necessarygames.com/my-games/loneliness#disqus_thread";
		follow_link = clickable_add(0, 0, sprite_get_tpe(spr_follow_link, 0), url, "_blank", "");
	}	
}