// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function end_game(){
	if(instance_exists(obj_player01))
	{
		layer_sequence_create("Sequences", obj_player01.x, obj_player01.y, sq_level_end);
		if(instance_exists(obj_controller))
		{
			obj_controller.boss_win = true;
		}
		instance_destroy(obj_player01, false);
	}

}