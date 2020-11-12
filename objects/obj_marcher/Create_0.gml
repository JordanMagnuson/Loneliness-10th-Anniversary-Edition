event_inherited();
sprite_width_real = sprite_width*global.scale_multiplier;

if random(1) > 0.5
  direction = 0
else
  direction = 180
speed = global.other_speed_default/2 + random(global.other_speed_default/2);