scr_globals();

// Analytics: register this room.
if (global.game_analytics_enabled) {
	ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "level_mid");
	ga_addProgressionEvent(GA_PROGRESSIONSTATUS_START, "end_screen");
}

x = 0;
y = 0;

// Fade in constants/variables.
show_thanks_txt = false;
thanks_txt_alpha = 0;
thanks_txt_fade_start = 0.1;
thanks_txt_fade_time = 7;
alarm[0] = thanks_txt_fade_start * room_speed;

show_follow_txt = false;
follow_txt_alpha = 0;
follow_txt_fade_start = 4;
follow_txt_fade_time = 7;
alarm[1] = follow_txt_fade_start * room_speed;

show_quit_txt = false;
quit_txt_alpha = 0;
quit_txt_fade_start = 8;
quit_txt_fade_time = 7;
alarm[2] = quit_txt_fade_start * room_speed;

allow_quit = false;
spr_follow_link = 0;
scr_resize_end_screen();