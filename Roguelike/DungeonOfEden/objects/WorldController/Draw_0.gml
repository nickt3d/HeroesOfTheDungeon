/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < dungeonw; i++){
	for(var j = 0; j < dungeonh; j++){
		switch(dungeon_data[? "map_data"][# i, j]){
			case 0: 
				draw_sprite_ext(empty_tile_spr, tile_type.block, tilex_to_worldx(i, j), tiley_to_worldy(i, j), 1, 1, 0, c_white, 1);
			break;
			case 1:
				draw_sprite_ext(grass_spr, tile_type.block, tilex_to_worldx(i, j), tiley_to_worldy(i, j), 1, 1, 0, c_white, 1);
			break;
			default: break;
		}
	}
}