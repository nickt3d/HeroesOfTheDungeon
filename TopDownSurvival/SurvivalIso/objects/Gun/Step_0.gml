/// @description Insert description here
// You can write your code in this editor

if(instance_place(x, y, Player)){
	focus = true;
}

if(focus){
	if (mouse_check_button_pressed(mb_left) && check_bounds(mouse_x, mouse_y, x + 30, y +16, x +60, y-16)){
		//pickup the weapon
		Player.weapon = weaponType.pistol;
		Player.range = 300;
		instance_destroy();
	}
}