if (fading) {
  if (opacity > 0)
    opacity -= 1/(global.leaver_fade_out_time*room_speed);//factor in front of room speed is how many seconds to take to fade
  else
    instance_destroy()
}