/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_buttons);
draw_text(80, 180, "Maior Pontuação: " + string(round(points)));
draw_text(80, 280, "Inimigos Mortos: " + string(global.total_enemies));
draw_text(80, 380, "Total Mortes: " + string(global.total_death));
draw_set_font(-1);

if(points < global.max_points)
{
	var _increment_points = global.max_points * 0.005;
	points += _increment_points;
}
