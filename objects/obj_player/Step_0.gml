// TODO: in the original game player moved slower and slower as they approached
// the top of the game world.
// Original formula: spdMax = ((y / MainWorld.height) * (SPEED_MAX * (1 / 3))) + (SPEED_MAX * (2 / 3));
//mov_speed = global.player_speed;
mov_speed = ((y / room_height) * (global.player_speed * (1 / 3))) + (global.player_speed * (2 / 3));
show_debug_message("move speed: " + string(mov_speed));

//show_debug_message("move speed: " + string(mov_speed));

// Movement.
// See https://www.yoyogames.com/blog/432/buttery-smooth-tech-tips-movement
var move_distance = mov_speed*delta_time/1000000;
var move_xinput = 0;
var move_yinput = 0;
 
for ( var i = 0; i < array_length_1d(global.movement_inputs); i++){
	var this_key = global.movement_inputs[i];
    if keyboard_check(this_key) {
        var this_angle = i*90;
        move_xinput += lengthdir_x(1, this_angle);
        move_yinput += lengthdir_y(1, this_angle);
    }
}
 
var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );

// Force player upwards at end.
// Formula from original game: if (y <= FP.screen.height * 2.5) { force up }
if (y <= obj_camera.view_height * 2.5) {
//if (true) {
	global.allow_input = false;
	scr_move(move_distance, 90);
}


if (global.allow_input && !global.orientation_check_visible) {
	// "moving" = arrow key movement.
	if (moving)  {
		mouse_clicked = false; // Arrow key movement takes precedent over mouse movement.
	  var move_dir = point_direction(0,0,move_xinput,move_yinput);
	  scr_move(move_distance, move_dir);
	}
	// Mouse/touch movement.
	else if (mouse_clicked) {
		if (point_distance(x, y, destination_x, destination_y) > move_distance) {
		  var move_dir = point_direction(x,y,destination_x,destination_y);
		  scr_move(move_distance, move_dir);	
		}
		else {
			// Arrived at destination.
			x = destination_x;
			y = destination_y;
			mouse_clicked = false;
		}
	}
}