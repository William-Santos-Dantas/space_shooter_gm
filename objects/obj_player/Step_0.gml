/// @description Insert description here
// You can write your code in this editor


var up, down, left, right;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

y -= (up - down)* velocidade;
x -= (left - right) * velocidade;

