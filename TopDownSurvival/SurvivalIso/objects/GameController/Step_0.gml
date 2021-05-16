#region skip past the spash screen room
	if(room == splashscreen_rm){
		show_debug_message("Main Menu");
		room_goto(menu_rm);
	}
	#endregion

	#region toggle debug mode
	if(keyboard_check_pressed(vk_f3)){
		global.debug = !global.debug;	
		show_debug_overlay(global.debug);
	}
#endregion

if(keyboard_check_released(vk_enter) || mouse_check_button_pressed(mb_left) && room != world_rm){
	room_goto(world_rm);	
}

if(keyboard_check_released(vk_escape)){
	game_end();	
}