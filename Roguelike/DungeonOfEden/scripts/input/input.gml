//make the controlls switch from gamepad to keyboard if hitting a keyboard or mouse button,
//make the controls switch from keyboard to gamepad when hitting a controller button
#region Keyboard	
		kb_left_xaxis = keyboard_check(ord("D")) - keyboard_check(ord("A"));
		kb_left_yaxis = keyboard_check(ord("S")) - keyboard_check(ord("W"));
		
		kb_right_xaxis = keyboard_check(vk_right) - keyboard_check(vk_left);
		kb_right_yaxis = keyboard_check(vk_up) - keyboard_check(vk_down);
	
		kb_start_press = keyboard_check(vk_enter);
		kb_select_press = keyboard_check(vk_backspace);	

		kb_space_press = keyboard_check_pressed(vk_space);
		kb_shift = keyboard_check(vk_shift);
		kb_control_press = keyboard_check_pressed(vk_control);
		
		kb_mouse_left = mouse_check_button_pressed(mb_left);
		kb_mouse_left_held = mouse_check_button(mb_left);
		kb_mouse_right = mouse_check_button(mb_right);
		
		kb_space_held = keyboard_check(vk_space);

		kb_b_key_press = keyboard_check_pressed(ord("B"));
		
		kb_zoom_up = mouse_wheel_up();
		kb_zoom_down = mouse_wheel_down();
#endregion


#region convert key presses to configured controls
	global.input_xaxis = kb_left_xaxis;
	global.input_yaxis = kb_left_yaxis;
#endregion