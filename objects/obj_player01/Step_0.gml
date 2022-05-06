/// @description Insert description here
// You can write your code in this editor


var up, down, left, right;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

y += (down - up)* ship_speed;
x += (right - left) * ship_speed;

x = clamp(x, 64, room_width - 64);
y= clamp(y, 64, room_height - 64);


shooting();

if(shield > 0 && keyboard_check_pressed(ord("E")) && !my_shield)
{
	var shield_player = instance_create_layer(x, y, "Shield", obj_shield);
	shield_player.target = id;
	shield--;
	my_shield = shield_player;
	
}
