// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destroy_sequence(){
	var elements = layer_get_all_elements("boss_start");
	layer_sequence_destroy(elements[0]);
	instance_create_layer(992, 256, "boss", obj_boss_combat);
}