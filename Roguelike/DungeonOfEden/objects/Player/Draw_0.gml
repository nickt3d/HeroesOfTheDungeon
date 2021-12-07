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

//draw the cursor here for now
draw_sprite_ext(cursor_spr, 0, mouse_x, mouse_y, 1, 1, 0, c_white, 1);

//Debug the target move positions

//draw lines to show pathing
draw_line(x, y, target_position_x, target_position_y);
//draw the target move to position
draw_sprite_ext(move_target_spr, 0, target_position_x, target_position_y, 1, 1, 0, c_white, 1);