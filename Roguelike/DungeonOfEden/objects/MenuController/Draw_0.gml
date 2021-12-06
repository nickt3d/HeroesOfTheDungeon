/// @description Insert description here
// You can write your code in this editor

draw_text_transformed(0, 0, "Main menu", 1, 1, 0);

var s = 4;

draw_sprite_ext(equiptest_spr, 0, 64, 64, s, s, 0, c_white, 1);
draw_sprite_ext(invtest_spr, 0, 64+sprite_get_width(equiptest_spr)*s+32, 64, s, s, 0, c_white, 1);