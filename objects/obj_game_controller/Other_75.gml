/// @description Connect/Disconnect gamepads.
// See https://www.yoyogames.com/blog/75/coffee-break-tutorials-setting-up-and-using-gamepad
//show_debug_message("Event = " + async_load[? "event_type"]);        // Debug code so you can see which event has been
//show_debug_message("Pad = " + string(async_load[? "pad_index"]));   // triggered and the pad associated with it.

switch(async_load[? "event_type"])             // Parse the async_load map to see which event has been triggered
{
case "gamepad discovered":                     // A game pad has been discovered
	show_debug_message("gamepad discovered");
case "gamepad lost":                           // Gamepad has been removed or otherwise disabled
	show_debug_message("gamepad lost");
	scr_load_gamepads();
  break;
}