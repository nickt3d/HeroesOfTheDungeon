mx = mouse_x;
my = mouse_y;

//Basic movement (to be removed)
if(mouse_check_button(mb_left)){
	dir = point_direction(x, y, mx, my);
	spd = max_move_speed;
} else {
		
}

if(mouse_check_button_pressed(mb_left)){
	pathfind(x, y, mx, my);
}

#region Pathfinding

	if(mouse_check_button(mb_left)){
		//set new target position
		target_position_x = mouse_x;
		target_position_y = mouse_y;
		
		//pathfind(x, y, target_position_x, target_position_y);
	}
	
	//is the player at the target position (add a distance check for avoiding the spasms)
	if(Player.x == target_position_x && Player.y == target_position_y){
		
	} else {
		//check for the next point in the target path	
	}
		

#endregion


event_inherited();


#region sprite controller
//change directional sprites
//RIGHT
if((dir >= 0 && dir < 22.5) || (dir >= 337.5)){
	image_index = 3
	image_xscale = 1;
}
//RIGHT UP
else if(dir >= 22.5 && dir < 67.5){
	image_index = 4;
	image_xscale = 1;
}
//UP
else if(dir >= 67.5 && dir < 112.5){
	image_index = 5;
	image_xscale = 1;
}
//LEFT UP
else if(dir >= 112.5 && dir < 157.5){
	image_index = 4;
	image_xscale = -1;
}
//LEFT
else if(dir >= 157.5 && dir < 202.5){
	image_index = 3;
	image_xscale = -1;
}
//LEFT DOWN
else if(dir >= 202.5 && dir < 247.5){
	image_index = 2;
	image_xscale = -1;
}
//DOWN
else if(dir >= 247.5 && dir < 292.5){
	image_index = 1;
	image_xscale = 1;
}
//RIGHT DOWN
else if(dir >= 292.5 && dir < 337.5){
	image_index = 2;
	image_xscale = 1;
}

#endregion