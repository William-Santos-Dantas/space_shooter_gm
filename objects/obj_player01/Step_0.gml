/// @description Insert description here
// You can write your code in this editor


var up, down, left, right, shield;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
shield = keyboard_check_pressed(ord("E"));

y += (down - up)* ship_speed;
x += (right - left) * ship_speed;


shooting();

if(shield)
{
	var shield_player = instance_create_layer(x, y, "Shield", obj_shield);
	shield_player.target = id;
}

if(keyboard_check_pressed(vk_up) && shoot_level < 5)
{
	shoot_level++;
}
if(keyboard_check_pressed(vk_down) && shoot_level > 1)
{
	shoot_level--;
}
if(keyboard_check_pressed(vk_left) && shoot_wait >= 20)
{
	shoot_wait *= 0.9;
}

if(keyboard_check_pressed(vk_right) && shoot_wait <= 60)
{
	shoot_wait *= 1.1;
}

show_debug_message(shoot_wait);
