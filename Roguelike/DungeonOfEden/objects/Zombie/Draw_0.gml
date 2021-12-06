/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red);
draw_line(x, y, x+lengthdir_x(spd, dir),y+ lengthdir_y(spd, dir));
draw_set_color(c_white);

draw_self();

//draw health bar
draw_set_color(c_gray);
draw_rectangle(x-8, y -19, (x+8), y-25, 0);
draw_set_color(c_red);
draw_rectangle(x-7, y-20, (x-7+(14*hp/10)), y-24, 0);