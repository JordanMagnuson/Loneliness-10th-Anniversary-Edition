scr_globals();

x = 0;
y = 0;

// Fade in constants/variables.
show_thanks_txt = false;
thanks_txt_alpha = 0;
thanks_txt_fade_start = 1;
thanks_txt_fade_time = 1;
alarm[0] = thanks_txt_fade_start * room_speed;

show_follow_txt = false;
follow_txt_alpha = 0;
follow_txt_fade_start = 1;
follow_txt_fade_time = 1;
alarm[1] = follow_txt_fade_start * room_speed;

show_quit_txt = false;
quit_txt_alpha = 0;
quit_txt_fade_start = 1;
quit_txt_fade_time = 1;
alarm[2] = quit_txt_fade_start * room_speed;


spr_follow_link = 0;
scr_resize_end_screen();