/// @description Insert description here
// You can write your code in this editor

vspeed = 3;
shooting = function()
{
	if(y >= 0)
	{
		instance_create_layer(x - 3, y + (sprite_height / 2), "Shoot", obj_enemy01_shoot);
	}
}
alarm[0] = random_range(1, 3) * room_speed;

points = 10;
