/// @description Maps a number from one range to another
/// @param value
/// @param current_lower_bound
/// @param current_upper_bound
/// @param desired_lower_bound
/// @param desired_upper_bound
function scr_map_value(_value, _current_lower_bound, _current_upper_bound, _desired_lower_bound, _desired_upper_bound) {
	// See https://forum.yoyogames.com/index.php?threads/map-remap-values-from-one-range-to-another.59699/
	return (((_value - _current_lower_bound) / (_current_upper_bound - _current_lower_bound)) * (_desired_upper_bound - _desired_lower_bound)) + _desired_lower_bound;
}



