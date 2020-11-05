// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_level(){
	//show_debug_message(global.json_level_data);
	//level_file = file_text_open_read(working_directory + "level.txt");
	var level_data = json_decode(global.json_level_data);
	var level = ds_map_find_value(level_data, "level");
	var level_width = ds_map_find_value(level, "width");
	var level_height = ds_map_find_value(level, "height");
	var actors = ds_map_find_value(level, "actors");
	var player = actors[? "player"];
	
	
	//("level decoded");
	//level_width = level[? "width"];
	//level_width = ds_map_find_value(level, "level");
	

	show_debug_message("level width: " + string(level_width));
}