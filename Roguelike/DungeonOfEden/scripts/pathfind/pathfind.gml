// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pathfind(xpos, ypos, x_target, y_target){
	//get the tile of the target position
	var ttx = worldx_to_tilex(x_target, y_target);
	var tty = worldy_to_tiley(x_target, y_target);
	
	//get the tile of the player
	var stx = worldx_to_tilex(xpos, ypos);
	var sty = worldy_to_tiley(xpos, ypos);
	
	////create a variable referencing the level grid data
	var grid = WorldController.dungeon_data[? "map_data"];
	
	#region constructors for storing node data
		function vector2d(x1, y1) constructor { xx = x1; yy = y1; }
		function Node(gg, hh, ff, paren, v2d) constructor {
			g		= gg;
			h		= hh;
			f		= ff;
			par		= paren;
			pos		= v2d;
		}
	#endregion
	
	////the astar pathing
	var path = ds_list_create();
	
	////list that we will add all the pathing points to
	var pathingPoints = ds_list_create();
		
	
	////Do A*
	#region A star
			
	//	//the lists we will use for our A*
		var openList   = ds_list_create();
		var closedList = ds_list_create();
		
	//	//get the first and last tile positions and create nodes
		var startNode	= new Node(0, 0, 0, 0, new vector2d(stx, sty));
		var endNode		= new Node(0, 0, 0, 0, new vector2d(ttx, tty));
			
	//	//add the first tile position to open list
		ds_list_add(openList, startNode);
		
	//	//loop until we find the end node
		while (ds_list_size(openList) > 0){
	//		//set the current node we want to check
			var currentNode = openList[| 0];
			
	//		//loop through each node in our current list
			for(var i = 0; i < ds_list_size(openList); i++){
				var item = openList[| i];
				if(item.f < currentNode.f){
					currentNode = item;
				}
			}
			
			ds_list_delete(openList, i);
			ds_list_add(closedList, currentNode);
			
			//check if the current node is the end position - or if there is not a path
			//if(currentNode == endNode || ){				
				//var current = currentNode;
				//while (current != noone){
				//	ds_list_add(path, current.pos);
				//	current = current.par;
				//}
				//flip the list?
				
			//}
			
			#region getting child nodes
			
				var childList = ds_list_create();
			
				//create nodes for the 8 nodes around the current one
				for (var i = -1; i <= 1; i++){
					for (var j = -1; j <= 1; j++){
						var nodePos = new vector2d (currentNode.pos.xx + i, currentNode.pos.yy + j);
					
						//check if this node is in range of the map
						if(nodePos.xx > ds_grid_width(grid)-1 || nodePos.xx < 0 || nodePos.yy > ds_grid_height(grid)-1 || nodePos.yy < 0){
							show_debug_message("OOB");
							continue;
						}
					
						//check if this terrain is walkable || skip if so
						if(grid[# nodePos.xx, nodePos.yy] == 0){
							show_debug_message("collision at ");
							show_debug_message(nodePos);
							continue;
						}
					
						//create the new node
						var newNode = new Node(currentNode.g, currentNode.h, currentNode.f, currentNode, nodePos);
					
						//append the new node to the child node list
						ds_list_add(childList, newNode);
					}
				}
			#endregion
			
			for(var i = 0; i < ds_list_size(childList); i++){
				var child = childList[| i];
				//check for children in closed list
				for(var j = 0; j > ds_list_size(closedList); j++){
					var closed_child = closedList[| 0]
					if(child == closed_child){
						continue;
					}
				}
				
				child.g = currentNode.g + 1;
				child.h = sqr(child.pos.xx - endNode.pos.xx) + sqr(child.pos.yy - endNode.pos.yy);
				child.f = currentNode.g + currentNode.h;
				
				for (var k = 0; k < ds_list_size(openList); k++){
					var openNode = openList[| k];
					if(child == openNode && child.g > openList.g){
						continue;
					}
				}
			}
			//break the loop for now
			ds_list_clear(openList);
		}
		
		
	#endregion

	//add the player pixel position to the start of the point list
	//var point = new vector2d(stx, sty);

	//pathingPoints[| 0] = point;
	
	//work backwards toward the player position in the grid, 
	//adding points any time we reach a tile we need to navigate around a line collision
	
		//check for the next closest tile we need to move to
		//add a point if this path can see

	

	//return the path list
	//return pathingPoints;	
}