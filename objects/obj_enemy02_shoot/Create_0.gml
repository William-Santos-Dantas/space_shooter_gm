/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

speed = 6;

if(instance_exists(obj_player01))
{
	direction = point_direction(x, y, obj_player01.x, obj_player01.y);
	image_angle = direction + 90;
}

