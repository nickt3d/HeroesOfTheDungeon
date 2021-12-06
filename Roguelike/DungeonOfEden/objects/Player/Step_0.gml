mx = mouse_x;
my = mouse_y;

dir = point_direction(x, y, mx, my);

if(mouse_check_button(mb_left)){
	spd = max_move_speed;
} else {
	spd = 0;	
}

event_inherited();


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