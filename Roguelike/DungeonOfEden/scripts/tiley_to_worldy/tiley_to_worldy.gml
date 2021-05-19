///return the world y position for the tile(for placing objects in the tile
///@arg0 tile x position in the ds_grid
///@arg1 tile y position in the ds_grid
function tiley_to_worldy(i, j) {
	return ((i+j))*(th/2)
}