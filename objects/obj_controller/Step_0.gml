/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_player01) && !game_over)
{
	game_over = layer_sequence_create("Sequences", room_width / 2, room_height / 2, sq_game_over);
}else if(keyboard_check(vk_enter))
{
	game_restart();
}
