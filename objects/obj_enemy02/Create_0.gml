/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

can_move = true;

shooting = function()
{
	if(y >= 0)
	{
		instance_create_layer(x, y + sprite_height / 3, "Shoot", obj_enemy02_shoot)
	}
}
