scale_multiplier = global.scale_multiplier;
mouse_clicked = false;
start_mouse_input = false;
sprite_width_real = sprite_width*scale_multiplier;

// Starting player position taken from original level data = 192, 7944
// NOTE: I don't think this value from the level data was actually used in the game.
// Looks like player position was set at room_width / 2, room_height - 50 in original obj_player
//x = 192 * global.scale_multiplier;
//y = 7944 * global.scale_multiplier;

x = room_width / 2;
y = room_height - (50 - global.scale_multiplier);
//y = global.view_height_default * 5;


fade_out_started = false;