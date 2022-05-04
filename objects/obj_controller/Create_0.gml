/// @description Insert description here
// You can write your code in this editor

alarm[0] = room_speed;
game_over = noone;

points = 0;
level = 1;
next_level = 100;

///@method earn_points(points)
earn_points = function(_point)
{
	points += _point;
	if(points >= next_level)
	{
		level++;
		next_level *= 2;
	}
}

create_enemies = function()
{
	var x_random = irandom_range(64, room_width);
	var y_random = irandom_range(0, -room_height - (level * 800));
	var possibility = random_range(0, level);

	var enemy = obj_enemy01;

	if(possibility > 2)
	{
		enemy = obj_enemy02;
	}

	instance_create_layer(x_random, y_random, layer, enemy);
}
