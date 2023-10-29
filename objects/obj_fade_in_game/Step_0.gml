x1 = obj_camera.x - obj_camera.view_width/2;;
y1 = obj_camera.y - obj_camera.view_height/2;;
x2 = x1 + obj_camera.view_width;
y2 = y1 + obj_camera.view_height;

if (fading)
	alpha -= 1/(FADE_TIME*room_speed);

if (alpha < 0) 
	instance_destroy();