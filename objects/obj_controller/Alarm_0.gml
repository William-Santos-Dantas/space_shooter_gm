/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_enemy01))
{
	repeat(level * 10)
	{
		create_enemies();
	}
}



alarm[0] = room_speed;

