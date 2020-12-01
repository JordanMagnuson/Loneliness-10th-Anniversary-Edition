scale_multiplier = global.scale_multiplier;
opacity = 1;
fading = false;

speed_max = ((y / room_height) * (global.leaver_speed * (1 / 3))) + (global.leaver_speed * (2 / 3));

// Run!
direction = point_direction(x,y,obj_player.x,obj_player.y)+180;
speed = speed_max;
gravity = 0;
alarm[0] = 1 * room_speed; // fade alarm.
 
// Scare nearby
show_debug_message("scare nearby id: " + string(id));
var to_scare_list = scr_custom_collision_circle_list(x,y,global.leaver_scare_radius,obj_other,false,true);
if (to_scare_list != noone) {
	for (var i = 0; i < ds_list_size(to_scare_list); i++) {
		var to_scare = ds_list_find_value(to_scare_list, i);
		show_debug_message("to_scare: " + string(to_scare));
		with (to_scare) {
			instance_change(obj_leaver, true);
		}
	}
	ds_list_destroy(to_scare_list);
}