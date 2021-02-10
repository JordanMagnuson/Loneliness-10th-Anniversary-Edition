FADE_TIME = 15;
SOUND_FADE_TIME = 30;
AUTO_QUIT_TIME = 33;

alpha = 0;
fade_finished = false;
allow_quit_any_key = false;
show_debug_message("fade out created");

// Fade out sound.
audio_sound_gain(global.audio_music, 0, SOUND_FADE_TIME * 1000);	

// Alarm till auto quit.
if (!global.is_browser) {
	alarm[0] = AUTO_QUIT_TIME * room_speed;
}