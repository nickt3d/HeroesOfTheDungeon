mx = mouse_x;
my = mouse_y;

dir = point_direction(x, y, mx, my);

if(mouse_check_button(mb_left)){
	spd = max_move_speed;
} else {
	spd = 0;	
}

if(point_distance(x, y, Zombie.x, Zombie.y) < 10){
		
}

event_inherited();
