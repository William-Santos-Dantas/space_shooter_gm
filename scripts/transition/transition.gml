// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function transition(){
	var _transition = instance_create_layer(0, 0, "Player", obj_transition);
	_transition.destiny = rm_start;
}