global.player_speed = 100;
global.allow_input = true;
global.orientation_check_visible = false;

//  1-dimensional array, where each input represents a 90-degree increment. 
// So, “D” is 0 degrees (right), “W” is 90 degrees (up), “A” is 180 degrees (left), 
// and “S” is 270 degrees (down).
// (We can include multiple input options simply by adding to the array, since  
// array key i is just multiplied by 90 degrees to determine direction).
// See https://www.yoyogames.com/blog/432/buttery-smooth-tech-tips-movement
global.movement_inputs[0] = vk_right;
global.movement_inputs[1] = vk_up;
global.movement_inputs[2] = vk_left;
global.movement_inputs[3] = vk_down;

// Allow AWSD input as well.
global.movement_inputs[4] = ord("D");
global.movement_inputs[5] = ord("W");
global.movement_inputs[6] = ord("A");
global.movement_inputs[7] = ord("S");