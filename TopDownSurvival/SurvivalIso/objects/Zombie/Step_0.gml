/// @description Insert description here
// You can write your code in this editor

//Move towards the player


//kill
if (hp == 0){ 
	show_debug_message("Killed Zombie");
	instance_destroy();
}


// Inherit the parent event
event_inherited();

