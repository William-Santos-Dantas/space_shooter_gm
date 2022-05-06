/// @description Insert description here
// You can write your code in this editor

layer_sequence_create("boss_defeat", x, room_height / 2 - 32, sq_boss_defeat);

global.total_enemies++;
obj_controller.earn_points(200);
