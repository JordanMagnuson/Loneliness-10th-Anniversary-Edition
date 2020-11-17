/// @description Maps a number from one range to another
/// @param value
/// @param current_lower_bound
/// @param current_upper_bound
/// @param desired_lower_bound
/// @param desired_upper_bound
function scr_map_value(){
	// See https://forum.yoyogames.com/index.php?threads/map-remap-values-from-one-range-to-another.59699/
	return (((argument0 - argument1) / (argument2 - argument1)) * (argument4 - argument3)) + argument3;
}



