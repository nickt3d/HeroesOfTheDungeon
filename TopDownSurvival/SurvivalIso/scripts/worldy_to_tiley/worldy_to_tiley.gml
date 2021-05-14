///return the tile y position for the current position in the world
///@arg0 x position
///@arg1 y position
function worldy_to_tiley(argument0, argument1) {
	var i = argument0;
	var j = argument1;
	return floor((j/(th/2) - i/(tw/2))/2);


}
