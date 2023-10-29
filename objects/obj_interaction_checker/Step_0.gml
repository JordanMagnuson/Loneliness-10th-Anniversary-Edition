if (!global.gallery_build) 
	instance_destroy();

if (global.game_ending)
	instance_destroy();

if (keyboard_check(vk_anykey) || mouse_check_button(mb_any))
	time_since_last_interaction = 0;