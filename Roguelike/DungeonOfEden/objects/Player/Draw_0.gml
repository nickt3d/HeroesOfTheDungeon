draw_self();

draw_line(x, y, x + lengthdir_x(spd, dir), y + lengthdir_y(spd, dir));


//debug

//draw position under player
draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(x-12, y+2, x+12, y+8, 0);

draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_text_transformed(x, y+3, "("+string(floor(x-8))+","+string(floor(y))+")", 0.25, 0.25, 0);
