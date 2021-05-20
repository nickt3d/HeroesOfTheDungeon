// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_tile_region(zz, x1, y1, x2, y2, tile_data){
	var grid = dungeon_data[? "map_data"][| zz];
	//create floor
	 ds_grid_set_region(grid, x1, y1, x2, y2, tile_data);
	 dungeon_data[? "map_data"][| zz] = grid;
	 //create the walls
	 var grid2 = dungeon_data[? "map_data"][| zz-1];
	 ds_grid_set_region(grid2, x1, y1, x1, y2, tile_type.wood);
	 ds_grid_set_region(grid2, x1, y1, x2, y1, tile_type.wood);
	 ds_grid_set_region(grid2, x2, y1, x2, y2, tile_type.wood);
	 ds_grid_set_region(grid2, x1, y2, x2, y2, tile_type.wood);
	 dungeon_data[? "map_data"][| zz-1] = grid2;
} 