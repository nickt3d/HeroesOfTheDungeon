///return the tile x position for the current position in the world
///@arg0 x position
///@arg1 y position
function worldx_to_tilex(argument0, argument1) {
	var i = argument0;
	var j = argument1;
	return floor((i/(tw/2) + j/(th/2))/2);


}
