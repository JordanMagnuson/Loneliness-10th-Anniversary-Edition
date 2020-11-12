event_inherited();

// Land after hopping.
if (y > Y_ORIG && hopping) {
	hopping = false;
  gravity = 0;
	speed = 0;
  y = Y_ORIG;	
	
	// Hop again!
	alarm[0] = 0.5*room_speed + random(1.5*room_speed);
}

  