// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_tile(xx, yy, zz, tile_data){
	dungeon_data[? "map_data"][| zz][# xx, yy] = tile_data;
}