///return the world x position for the tile(for placing objects in the tile
///@arg0 x position in the ds_grid
///@arg1 y position in the ds_grid
function tilex_to_worldx(i, j) {
	return ((i-j))*(tw/2);
}