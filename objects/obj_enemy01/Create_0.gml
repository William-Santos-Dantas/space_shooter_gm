/// @description Insert description here
// You can write your code in this editor

chance = 25;

if(place_meeting(x, y, obj_enemy01))
{
	instance_destroy(id, false)
}

vspeed = 3;
shooting = function()
{
	if(y >= 0)
	{
		instance_create_layer(x - 3, y + (sprite_height / 2), "Shoot", obj_enemy01_shoot);
		audio_play_sound(sfx_laser1, 1, false);
	}
}
alarm[0] = random_range(1, 3) * room_speed;

points = 10;

/// @method drop_item(chance)
drop_item = function(_chance)
{
	var value = random(100);
	if(value < _chance && y > 96)
	{
		instance_create_layer(x, y, "Shoot", obj_power_up);
	}
}
