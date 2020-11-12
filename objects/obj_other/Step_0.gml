//Leave when player gets close
if (distance_to_object(obj_player) <= global.player_scare_radius) {
  instance_change(obj_leaver,true);
}