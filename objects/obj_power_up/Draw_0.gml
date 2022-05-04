/// @description Insert description here
// You can write your code in this editor

draw_self();

gpu_set_blendmode(bm_add);
var color = c_red;
if(chance >= 90)
{
	color = c_maroon;
}
else if(chance >= 45)
{
	color = c_yellow;
}
else
{
	color = c_lime;
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 0.7, image_yscale * 0.7, image_angle, color, image_alpha - 0.3);
gpu_set_blendmode(bm_normal);
