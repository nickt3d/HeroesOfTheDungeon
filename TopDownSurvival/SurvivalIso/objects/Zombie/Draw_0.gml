/// @description Insert description here
// You can write your code in this editor

draw_self();

//draw hp bar
draw_set_color(c_gray);
draw_rectangle(x- 12, y - 32 + 8, x + 12, y - 24 + 8, 0);

draw_set_color(c_red);
draw_rectangle(x- 12, y - 32 + 8, x + 12 * hp/50, y - 24 + 8, 0);