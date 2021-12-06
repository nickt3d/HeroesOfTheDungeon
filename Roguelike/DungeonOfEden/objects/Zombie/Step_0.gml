/// @description Insert description here
// You can write your code in this editor
if(point_distance(x, y, Player.x, Player.y) < 150){
	spd = 75;
	dir = point_direction(x, y, Player.x, Player.y);
} else {
	spd = 0;	
}

event_inherited();

if(hp <= 0){
	hp = 0;	
}