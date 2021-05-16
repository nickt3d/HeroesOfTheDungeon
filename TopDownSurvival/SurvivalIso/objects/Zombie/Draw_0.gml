/// @description Insert description here
// You can write your code in this editor

draw_self();

//draw hp bar
draw_set_color(c_gray);
draw_rectangle(x- 12, y - 32, x + 12, y - 28, 0);

draw_set_color(c_red);
draw_rectangle(x-12, y - 32, x-12 +(24*(hp/50)), y - 28, 0);