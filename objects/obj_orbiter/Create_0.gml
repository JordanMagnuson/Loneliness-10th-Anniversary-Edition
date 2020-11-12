event_inherited();
orbiter_center = instance_nearest(x,y,obj_orbiter_center);
rot_direction = orbiter_center.rot_direction;
dist = distance_to_object(orbiter_center); //Distance to stay away from object
ang = point_direction(orbiter_center.x,orbiter_center.y,x,y); //Angle
spd = global.other_speed_default/2 + random(global.other_speed_default/2); //Speed to rotate
x = (orbiter_center.x + lengthdir_x(dist,ang));
y = (orbiter_center.y + lengthdir_y(dist,ang));