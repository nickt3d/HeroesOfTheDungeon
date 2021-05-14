/// @description Insert description here
// You can write your code in this editor
	
event_inherited();

spd = 1200;
max_spd = 1500;
frict = 0;
grounded = false;
zspd = 0;
z = -12;
weight = 0.01;
dir = 0
// Inherit the parent eventw
with (instance_place(x, y, Enemy)){
	hp -= damage;
	instance_destroy(other);
}