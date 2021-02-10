// River sound.
if (!global.audio_music && audio_sound_is_playable(snd_music)) {
	// For HTML5 devices we need to check audio_sound_is_playable() before playing a sound.
	// See https://forum.yoyogames.com/index.php?threads/gms2-html5-audio-2-2-2.58935/
	global.audio_music = audio_play_sound(snd_music,1,true);
	//audio_sound_gain(audio_music, 0, 0);	
}

scr_deacticate_instances(true);

// Analytics: track progress to mid level.
if (global.game_analytics_enabled && obj_player.y < room_height/2 && !analytics_reached_mid_level) {

	ga_addProgressionEvent(GA_PROGRESSIONSTATUS_COMPLETE, "level_start");
	ga_addProgressionEvent(GA_PROGRESSIONSTATUS_START, "level_mid");
	analytics_reached_mid_level = true;
}

// Quit game on pressing Esc key.
if (!global.is_browser) {
	if (keyboard_check_pressed(vk_escape)) {
		game_end();
	}
}