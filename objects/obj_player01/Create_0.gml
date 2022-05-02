/// @description Insert description here
// You can write your code in this editor

velocidade = 5;


shooting = function()
{
	fire = keyboard_check_pressed(vk_space);
	if(fire)
	{
		instance_create_layer(x, y - (sprite_height / 3), "Shoot", obj_player01_shoot);
	}

}
