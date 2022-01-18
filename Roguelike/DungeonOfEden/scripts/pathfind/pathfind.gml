// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pathfind(xpos, ypos, x_target, y_target){
	
	//show_debug_message("find path");
	
	//get the tile of the target position
	var ttx = worldx_to_tilex(x_target, y_target);
	var tty = worldy_to_tiley(x_target, y_target);
	
	//get the tile of the player
	var stx = worldx_to_tilex(xpos, ypos);
	var sty = worldy_to_tiley(xpos, ypos);
	
	show_debug_message("the entity is at tile: x: " + string(stx) + " y: " + string(sty));
	show_debug_message("the target is at tile: x: " + string(ttx) + " y: " + string(tty));
	
	////create a variable referencing the level grid data
	var grid = WorldController.dungeon_data[? "map_data"];
	
		
	#region constructors for storing node data
		function Vector2d(x1, y1) constructor { xx = x1; yy = y1; }
		function Node(gg, hh, ff, v2d) constructor {
			g		= gg;
			h		= hh;
			f		= ff;
			pos		= v2d;
			parentNode		= noone; //store the branch node next to this one
			
		}
	#endregion
	
	//init variables needed by this function
	var openList = ds_list_create();
	
	var startNode = new Node(0, 0, 0, new Vector2d(stx, stx));
	var endNode = new Node(0, 0, 0, new Vector2d(ttx, tty));
	
	while(ds_list_size(openList) != 0){
	
	//check tiles near this one
	for(var i = -1; i <= 1; i++){
		for(var j = -1; j <= 1; j++){
			//skip the 0, 0 tile because thats the one we are at
			if(i == 0 && j ==0){
				continue;	
			}
			//check if this tile is a collider if it is ignore it
			
		}
	}
	
	//find the tile closest to the end
	
	//loop to the start if we hit a collision tile
	
	}
	
}