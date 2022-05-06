/// @description Insert description here
// You can write your code in this editor
event_inherited();

speed = 6;

if(instance_exists(obj_boss_combat))
{
	direction = point_direction(x, y, obj_boss_combat.x, obj_boss_combat.y);
	image_angle = direction + 90;
}

