/// @description Resize screen
// For some reason some mobile devices show a black screen on game start.
// To counter this, we immediately fullscreen the canvas, which 
// seems to fix the issue.
surface_width = global.browser_width_hdpi; //display_get_width();
surface_height = global.browser_height_hdpi; //display_get_height();
last_browser_width = browser_width;
last_browser_height = browser_height;	
scr_canvas_fullscreen(browser_width, browser_height);