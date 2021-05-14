/// @description Insert description here
// You can write your code in this editor

mx = mouse_x;
my = mouse_y;

dir = point_direction(x, y, mx, my);

//player move direction

if(instance_place(mx, my, Enemy)){
	target = instance_place(mx, my, Enemy);
	//move into range
	//shooot
		if(mouse_check_button_pressed(mb_left)){
			show_debug_message("Bang");
			var inst = instance_create_layer(x, y, "Entities", Bullet)
			with(inst){
				target = other.target;
				damage = 10;
				spd = 1000;
				dir = point_direction(x, y, target.x, target.y);
				
			}
		}
} else {
	if(mouse_check_button(mb_left)){
		spd += accel;
	}
}

event_inherited();