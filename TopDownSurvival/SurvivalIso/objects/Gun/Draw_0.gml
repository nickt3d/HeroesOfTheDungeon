/// @description Insert description here
// You can write your code in this editor
#region display gun data
	if(focus){
		draw_set_color(c_black);
		draw_set_alpha(0.5);
		draw_rectangle(x-16, y-32, x+32, y-8, 0);
		
		//draw the data
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_text_transformed(x-14, y-30, name, 0.5, 0.5, 0);
		draw_text_transformed(x-14, y-24, "Clip:"+string(clip), 0.5, 0.5, 0);
		draw_text_transformed(x-14, y-18, "Accuracy:"+string(accuracy), 0.5, 0.5, 0);
		
		//draw the pickup weapon icon
		draw_set_color(c_green);
		draw_rectangle(x + 30, y +16, x +60, y-16, 0);
	}
#endregion

draw_sprite_ext(gun_spr, 0, x, y, 0.5, 0.5, 0, c_white, 1);