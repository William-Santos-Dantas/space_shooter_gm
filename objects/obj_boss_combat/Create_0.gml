/// @description Insert description here
// You can write your code in this editor

//atual_state = irandom_range(1, 3);


audio_play_sound(snd_boss_fight, 1, false);

max_life = 1500;
life = max_life;

create_minions = true;

atual_state = choose(1, 2, 3);
delay_state = room_speed * 20;
wait_state = delay_state;


delay_shoot = room_speed / 2;
wait_shoot = 0;
horizontal_speed = 3;

/// @method shoot_01(right)
shoot_01 = function(_right)
{
	if(_right) var _posx = 160;
	else var _posx = -160;
	instance_create_layer(x + _posx, y + 10, "Shoot", obj_enemy01_shoot);
	audio_play_sound(sfx_laser1, 1, false);
}

shoot_02 = function()
{
	instance_create_layer(x, y, "Shoot", obj_enemy02_shoot);
	audio_play_sound(sfx_laser1, 1, false);
}


state_01 = function()
{
	
	wait_shoot--;
	x += horizontal_speed;
	if(wait_shoot <= 0)
	{
		shoot_01(true);
		shoot_01(false);
		wait_shoot = delay_shoot * 1.5;
	}
}

state_02 = function()
{
	wait_shoot--;
	if(wait_shoot <= 0)
	{
		shoot_02();
		wait_shoot = delay_shoot;
	}
}

state_03 = function()
{
	wait_shoot--;
	if(wait_shoot <= 0)
	{
		shoot_02();
		wait_shoot = delay_shoot * 2;
	}
	if(wait_shoot == delay_shoot)
	{
		shoot_01(true);
		shoot_01(false);
	}
}

state_04 = function()
{
	sprite_index = spr_boss_shield;
	
	x += sign(room_width / 2 - x);
	if(create_minions)
	{
		var _minion = instance_create_layer(128, 500, "Enemy", obj_boss_minion);
		_minion.image_angle = 90;
	
		var _minion = instance_create_layer(1760, 500, "Enemy", obj_boss_minion);
		_minion.image_angle = 270;
		create_minions = false;
	}
}

change_state = function()
{
	
	wait_state--;
	if(wait_state <= 0)
	{
		if(life > max_life / 2)
		{
			atual_state = choose(1, 2, 3);
		}
		else
		{
			atual_state = choose(1, 2, 3, 4);
		}
		wait_state = delay_state;
	}
}
