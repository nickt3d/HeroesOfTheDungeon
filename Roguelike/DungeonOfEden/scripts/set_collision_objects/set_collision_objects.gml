// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_collision_objects(grid){
	var w = ds_grid_width(grid);
	var h = ds_grid_height(grid);
	
	//loop through the grid
	for(var xx = 0; xx < w; xx++){
		for(var yy = 0; yy < w; yy++){
			//save the current tile data
			var ti = grid[# xx, yy];
			//check if this is an open tile
			if(ti == 0){
				//check the boundary tiles	
			}
		}
	}
}