/// @description Insert description here
// You can write your code in this editor

velocidade = 5;

shoot_wait = room_speed;

shooting = function()
{
	fire = keyboard_check(vk_space);
	if(fire && alarm[0] == -1)
	{
		instance_create_layer(x, y - (sprite_height / 3), "Shoot", obj_player01_shoot);
		alarm[0] = shoot_wait;
	}

}
