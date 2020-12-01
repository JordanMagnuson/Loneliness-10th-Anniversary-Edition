/// @description Hop!
hopping = true;
direction = 90;
speed_max = (1 + random(1)) * global.scale_multiplier;
speed = ((y / room_height) * (speed_max * (2 / 3))) + (speed_max * (1 / 3));
gravity = GRAVITY;
  