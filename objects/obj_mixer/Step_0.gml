event_inherited();
if (distance_to_object(mixer_center) >= mixer_center.radius) {
  move_towards_point(mixer_center.x, mixer_center.y,speed)
}