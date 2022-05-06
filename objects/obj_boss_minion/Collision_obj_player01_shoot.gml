/// @description Insert description here
// You can write your code in this editor



if(life >= 0)
{
	life--;
	image_alpha -= 0.08;
	increase_scale *= 1.1;
}
else
{
	instance_destroy();	
}

instance_destroy(other);
