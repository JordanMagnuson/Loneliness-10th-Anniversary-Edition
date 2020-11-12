event_inherited();
ang += (rot_direction) * spd; //Rotate right
if (ang >= 360) 
	ang = 1;
if (ang <= 0)
	ang = 360;
x = (orbiter_center.x + lengthdir_x(dist,ang));
y = (orbiter_center.y + lengthdir_y(dist,ang));