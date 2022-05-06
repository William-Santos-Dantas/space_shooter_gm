/// @description Insert description here
// You can write your code in this editor
if(atual_state != 4)
{
	if(life > 0) life--;
	else instance_destroy();
	instance_destroy(other);
}
