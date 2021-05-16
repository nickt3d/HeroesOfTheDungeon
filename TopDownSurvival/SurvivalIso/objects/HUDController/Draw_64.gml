/// @description Insert description here
// You can write your code in this editor


//Draw the Top bar
draw_set_color(c_blue);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height()*0.1, 0);

//draw the bottom bar
draw_rectangle(0, display_get_gui_height(), display_get_gui_width(),display_get_gui_height() - display_get_gui_height()*0.1, 0);