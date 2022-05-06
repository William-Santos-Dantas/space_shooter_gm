/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_player01) && !game_over && !boss_win)
{
	game_over = layer_sequence_create("Sequences", room_width / 2, room_height / 2, sq_game_over);
	audio_play_sound(sfx_lose, 1, false);
}
else if(keyboard_check(vk_enter))
{
	var _transition = instance_create_layer(0, 0, "Player", obj_transition);
	_transition.destiny = rm_start;
}
