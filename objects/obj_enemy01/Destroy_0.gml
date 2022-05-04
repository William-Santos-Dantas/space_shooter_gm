/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x, y, layer, obj_explosion);
if(instance_exists(obj_controller))
{
	obj_controller.earn_points(points);
}
screen_shake(10)
drop_item(chance);
