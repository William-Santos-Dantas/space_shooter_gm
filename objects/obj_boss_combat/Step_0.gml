/// @description Insert description here
// You can write your code in this editor

change_state();

if(atual_state != 4)
{
	sprite_index = spr_boss_combat;
	create_minions = true;
}

if(atual_state == 1)
{
	state_01();
}
else if(atual_state == 2)
{
	
	state_02();
}
else if(atual_state == 3)
{
	
	state_03();
}
else if(atual_state == 4)
{
	state_04();	
}
