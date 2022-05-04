/// @description Insert description here
// You can write your code in this editor


var altura_gui = display_get_gui_height();

var x_position = 40

repeat(life)
{
	draw_sprite_ext(spr_player01, 0, x_position, altura_gui - 40, 0.3, 0.3, 0, c_white, 0.6);
	x_position += 40;
}
var x_position = 40

repeat(shield)
{
	draw_sprite_ext(spr_shield, 2, x_position, altura_gui - 80, 0.3, 0.3, 0, c_white, 0.6);
	x_position += 40;
}
