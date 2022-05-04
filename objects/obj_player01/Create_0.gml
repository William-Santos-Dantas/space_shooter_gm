/// @description Insert description here
// You can write your code in this editor

life = 3;
shield = 3;

ship_speed = 5;

shoot_wait = room_speed;

shoot_level = 1;


/// @method
lose_life = function()
{
	
	if(life > 1)
	{
		life--;
		screen_shake(5)
	}	
	else
	{
		screen_shake(20)
		instance_destroy();
		
	}
	
}


shoot_02 = function()
{
	var y_shoot = y - (sprite_height / 3);
	var shoot_1 = instance_create_layer(x - (sprite_height / 2), y_shoot, "Shoot", obj_player01_shoot_02);
	shoot_1.hspeed = -5;
	var shoot_2 = instance_create_layer(x + (sprite_height / 2), y_shoot, "Shoot", obj_player01_shoot_02);
	shoot_2.hspeed = 5;
}

shoot_04 = function()
{
	var y_shoot = y - (sprite_height / 3);
	var direction_shoot = 75;
	repeat(3)
	{
		var shoot = instance_create_layer(x, y_shoot + 10, "Shoot", obj_player01_shoot);
		shoot.direction = direction_shoot;
		shoot.image_angle = shoot.direction - 90;
		direction_shoot += 15;
				
	}
}

shooting = function()
{
	fire = keyboard_check(vk_space);
	var y_shoot = y - (sprite_height / 3);
	
	if(fire && alarm[0] == -1)
	{
		alarm[0] = shoot_wait;
		if(shoot_level == 1)
		{
			instance_create_layer(x, y_shoot, "Shoot", obj_player01_shoot);
		}
		else if(shoot_level == 2)
		{
			shoot_02();
		}
		else if(shoot_level == 3)
		{
			instance_create_layer(x, y_shoot, "Shoot", obj_player01_shoot);
			shoot_02();
		}
		else if(shoot_level == 4)
		{
			shoot_04();
		}
		else if(shoot_level == 5)
		{
			shoot_02();
			shoot_04();
		}	
	}

}


/// @method level_up(_chance)
level_up = function(_chance)
{
	if(_chance >= 90 && shoot_level < 5)
	{
		shoot_level++;
	}
	else if(_chance >= 45 && shoot_wait > 20)
	{
		shoot_wait *= 0.9;
	}
	else if(ship_speed < 10)
	{
		ship_speed += 0.5;
	}
}
