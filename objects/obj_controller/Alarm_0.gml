/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_enemy01))
{
	if(level < 10)
	{
		repeat(level * 10)
		{
			create_enemies();
		}
	}else
	{
		if(!boss_fight)
		{
			boss_fight = true;
			layer_sequence_create("boss_start", 992, 416, sq_boss_start);
			audio_stop_all();
		}
	}
}



alarm[0] = room_speed;

