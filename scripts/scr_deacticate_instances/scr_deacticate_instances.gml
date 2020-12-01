// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_deacticate_instances(_notme){
	instance_deactivate_all(_notme);
	instance_activate_object(obj_game_controller);
	instance_activate_object(obj_player);	
	instance_activate_object(obj_camera);
	instance_activate_object(obj_darkness_overlay);
	instance_activate_object(obj_fade_out_game);
	var _top = obj_camera.y - obj_camera.view_height * 2;
	var _height = obj_camera.view_height * 4;
	instance_activate_region(0, _top, room_width, _height, true);
}