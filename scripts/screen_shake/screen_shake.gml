// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screen_shake(_shake){
	var screen = instance_create_layer(0, 0, "Shield", obj_screen_shake);
	screen.shake = _shake;
}
