/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i < 15; i++){
	for(var j = 0; j < 15; j++){
		var xx = tilex_to_worldx(i, j);
		var yy = tiley_to_worldy(i, j);

		draw_sprite_ext(test_isometric_tiles, test_map[# i, j], xx, yy, 1, 1, 0, c_white, 1);

	}
}