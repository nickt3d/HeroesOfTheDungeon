/// @description Insert description here
// You can write your code in this editor
if(player_floor-2 < 0){
	var pf = 0;
} else {
	var pf = player_floor;	
}
for(var l = dungeond; l >= 0; l--){
	for(var i = 0; i < dungeonw; i++){
		for(var j = 0; j < dungeond; j++){
			switch(get_tile(i, j, l)){
				case tile_type.empty: break;
				case tile_type.block:
					draw_sprite_ext(brick_tile_spr, tile_type.block, tilex_to_worldx(i, j), tiley_to_worldy(i, j)+l*td, 1, 1, 0, c_white, 1);
				break;
				case tile_type.wood:
					draw_sprite_ext(brick_tile_spr, tile_type.wood, tilex_to_worldx(i, j), tiley_to_worldy(i, j)+l*td, 1, 1, 0, c_white, 1);
				break;
				default: draw_sprite_ext(brick_tile_spr, 0, tilex_to_worldx(i, j), tiley_to_worldy(i, j)+l*td, 1, 1, 0, c_white, 1); break;
			}
		}
	}
}