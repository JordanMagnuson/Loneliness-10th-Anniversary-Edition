event_inherited();
sprite_width_real = sprite_width*global.scale_multiplier;

if random(1) > 0.5
  direction = 0
else
  direction = 180
speed = speed_max/2 + random(speed_max/2);