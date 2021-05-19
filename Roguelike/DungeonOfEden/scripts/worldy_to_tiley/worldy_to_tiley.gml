///return the tile y position for the current position in the world
///@arg0 x position
///@arg1 y position
function worldy_to_tiley(i, j) {
	return floor((j/(th/2) - i/(tw/2))/2);
}