/// @description Insert description here
// You can write your code in this editor

alarm[0] = room_speed;

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

