/// @description Insert description here
// You can write your code in this editor


var x_random = irandom_range(64, room_width);
var y_random = -irandom_range(0, room_height);

instance_create_layer(x_random, y_random, layer, obj_enemy01);


alarm[0] = room_speed;

