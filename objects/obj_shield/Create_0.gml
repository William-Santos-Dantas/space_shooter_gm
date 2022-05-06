/// @description Insert description here
// You can write your code in this editor

target = noone;

if(target != noone || !instance_exists(target))
{
	image_xscale *= 1.2;
	image_yscale *= 1.2;
}


audio_play_sound(sfx_shieldUp, 1, false);
