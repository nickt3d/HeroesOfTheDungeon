/// @description Insert description here
// You can write your code in this editor
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir)*2;
spd = 1200;

if(instance_place(x, y, Enemy)){
	with(instance_place(x, y, Enemy)){
		hp -= other.damage;
	}
	instance_destroy();
}
// Inherit the parent event
event_inherited();

image_angle = dir;