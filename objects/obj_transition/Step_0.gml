/// @description Insert description here
// You can write your code in this editor

if(!change_room)
{
	alpha += 0.01;
}
else
{
	alpha -= 0.02;
}

if(alpha <= 0 && change_room)
{
	instance_destroy();
}

if(alpha > 1 && !change_room)
{
	room_goto(destiny);	
}
