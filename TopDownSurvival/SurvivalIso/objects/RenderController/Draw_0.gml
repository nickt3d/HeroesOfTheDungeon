//draw the map
with(WorldController){

}
//draw player
draw_sprite_ext(temp_player_spr, 0, Player.x, Player.y, 1, 1, 0, c_white, 1);

//draw the cursor
var mx = mouse_x;
var my = mouse_y;
if(instance_place(mx, my, Player)){
	draw_sprite_ext(cursor_spr, 1 ,mouse_x, mouse_y, 1, 1, 0, c_white, 1);
} else {
	draw_sprite_ext(cursor_spr, 0 ,mouse_x, mouse_y, 1, 1, 0, c_white, 1);
}