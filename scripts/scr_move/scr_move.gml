/// scr_move(distance,direction)
/// @description Moves object in the given direction.
/// @param distance
/// @param direction
function scr_move(argument0, argument1) {
	// See https://www.yoyogames.com/blog/432/buttery-smooth-tech-tips-movement

	// Live coding with GMLive extension. See https://yal.cc/r/17/gmlive/
	//if (global.debug && live_call()) {
	//	return live_result;
	//}	

	var dist = argument0;
	var dir = argument1;
 
	var xtarg = x+lengthdir_x(dist,dir);
	var ytarg = y+lengthdir_y(dist,dir);
 
	if place_free(xtarg,ytarg) {
	    //x = xtarg;
	    //y = ytarg;
			// Keep the sprite inside the room (but allow exit at top).
			x = clamp(xtarg, sprite_width_real/2, room_width - sprite_width_real/2);
			y = clamp(ytarg, -sprite_width_real*2, room_height - sprite_width_real/2);
	}
	else {
	    var sweep_interval = 10;
    
	    for ( var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
	        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
	            var angle_to_check = dir+angle*multiplier;
	            xtarg = x+lengthdir_x(dist, angle_to_check);
	            ytarg = y+lengthdir_y(dist, angle_to_check);     
	            if place_free(xtarg,ytarg) {
	                //x = xtarg;
	                //y = ytarg;  
									// Keep the sprite inside the room (but allow exit at top).
									x = clamp(xtarg, sprite_width_real/2, room_width - sprite_width_real/2);
									y = clamp(ytarg, -sprite_width_real*2, room_height - sprite_width_real/2);								
	                exit;       
	            }   
	        }
	    }
	}
}
