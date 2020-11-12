// River sound.
if (!audio_music && audio_sound_is_playable(snd_music)) {
	// For HTML5 devices we need to check audio_sound_is_playable() before playing a sound.
	// See https://forum.yoyogames.com/index.php?threads/gms2-html5-audio-2-2-2.58935/
	audio_music = audio_play_sound(snd_music,1,true);
	//audio_sound_gain(audio_music, 0, 0);	
}