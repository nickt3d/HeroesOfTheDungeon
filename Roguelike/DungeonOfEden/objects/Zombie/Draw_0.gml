/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red);
draw_line(x, y, x+lengthdir_x(spd, dir),y+ lengthdir_y(spd, dir));
draw_set_color(c_white);

draw_self();