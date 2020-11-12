// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_level(){	
	// Load level from json data. 
	// See helpful YouTube video: https://www.youtube.com/watch?v=CV1NWosuMqQ&t=329s
	var level_data = json_decode(global.json_level_data);
	var level = ds_map_find_value(level_data, "level");
	var level_width = ds_map_find_value(level, "width");
	var level_height = ds_map_find_value(level, "height");
	var actors = ds_map_find_value(level, "actors");
	
	// Sitters.
	//var olist = ds_map_find_value(actors, "sitter");
	//var count = ds_list_size(olist);
	//for (var i = 0; i < count; i += 1) {
	//	var o = olist[| i];		// Equivalent to ds_list_find_value()
	//	var sx = o[? "x"];		// Equivalent to ds_map_find_value()
	//	var sy = o[? "y"];
	//	var rx = real(sx) * global.scale_multiplier;
	//	var ry = real(sy) * global.scale_multiplier;
	//	instance_create_layer(rx, ry, "Others", obj_sitter)
  //}	
	
	// Jumpers.
	var olist = ds_map_find_value(actors, "jumper");
	var count = ds_list_size(olist);
	for (var i = 0; i < count; i += 1) {
		var o = olist[| i];		// Equivalent to ds_list_find_value()
		var sx = o[? "x"];		// Equivalent to ds_map_find_value()
		var sy = o[? "y"];
		var rx = real(sx) * global.scale_multiplier;
		var ry = real(sy) * global.scale_multiplier;
		instance_create_layer(rx, ry, "Others", obj_jumper)
  }		
	
	//// Marchers.
	//var olist = ds_map_find_value(actors, "marcher");
	//var count = ds_list_size(olist);
	//for (var i = 0; i < count; i += 1) {
	//	var o = olist[| i];		// Equivalent to ds_list_find_value()
	//	var sx = o[? "x"];		// Equivalent to ds_map_find_value()
	//	var sy = o[? "y"];
	//	var rx = real(sx) * global.scale_multiplier;
	//	var ry = real(sy) * global.scale_multiplier;
	//	instance_create_layer(rx, ry, "Others", obj_marcher)
  //}			
	
	//// Mixer centers.
	//var olist = ds_map_find_value(actors, "mixer_center");
	//var count = ds_list_size(olist);
	//for (var i = 0; i < count; i += 1) {
	//	var o = olist[| i];		// Equivalent to ds_list_find_value()
	//	var sx = o[? "x"];		// Equivalent to ds_map_find_value()
	//	var sy = o[? "y"];
	//	var rx = real(sx) * global.scale_multiplier;
	//	var ry = real(sy) * global.scale_multiplier;
	//	instance_create_layer(rx, ry, "Others", obj_mixer_center)
  //}		
	//// Mixers.
	//var olist = ds_map_find_value(actors, "mixer");
	//var count = ds_list_size(olist);
	//for (var i = 0; i < count; i += 1) {
	//	var o = olist[| i];		// Equivalent to ds_list_find_value()
	//	var sx = o[? "x"];		// Equivalent to ds_map_find_value()
	//	var sy = o[? "y"];
	//	var rx = real(sx) * global.scale_multiplier;
	//	var ry = real(sy) * global.scale_multiplier;
	//	instance_create_layer(rx, ry, "Others", obj_mixer)
  //}	
	
	//// Orbiter centers.
	//var olist = ds_map_find_value(actors, "orbiter_center");
	//var count = ds_list_size(olist);
	//for (var i = 0; i < count; i += 1) {
	//	var o = olist[| i];		// Equivalent to ds_list_find_value()
	//	var sx = o[? "x"];		// Equivalent to ds_map_find_value()
	//	var sy = o[? "y"];
	//	var rx = real(sx) * global.scale_multiplier;
	//	var ry = real(sy) * global.scale_multiplier;
	//	instance_create_layer(rx, ry, "Others", obj_orbiter_center)
  //}		
	//// Orbiters.
	//var olist = ds_map_find_value(actors, "orbiter");
	//var count = ds_list_size(olist);
	//for (var i = 0; i < count; i += 1) {
	//	var o = olist[| i];		// Equivalent to ds_list_find_value()
	//	var sx = o[? "x"];		// Equivalent to ds_map_find_value()
	//	var sy = o[? "y"];
	//	var rx = real(sx) * global.scale_multiplier;
	//	var ry = real(sy) * global.scale_multiplier;
	//	instance_create_layer(rx, ry, "Others", obj_orbiter)
  //}		
}