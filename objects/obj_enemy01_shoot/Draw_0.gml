/// @description Insert description here
// You can write your code in this editor

draw_self();

gpu_set_blendmode(bm_add)
draw_sprite_ext(spr_shine_shoot_2, image_index, x, y, image_xscale * 0.7, image_yscale * 0.7, image_angle, cores, 0.5);
gpu_set_blendmode(bm_normal);
