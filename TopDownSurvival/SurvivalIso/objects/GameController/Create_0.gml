#region macros
#macro dt delta_time/1000000
//display width and height
#macro dh display_get_height()
#macro dw display_get_width()

#macro guih display_get_gui_height()
#macro guiw display_get_gui_width()

//room editor tile size
#macro etw 8
#macro eth 8
//tile size in pixels
#macro tw 32
#macro th 16
//chunk size in tiles
#macro cs 16
//world size in chunks
#macro wx 8
#macro wy 8
#endregion

#region globals
	global.cursor_index = 0;
	global.cursor_visible = false;
	global.debug = false;
	
	global.grav = 10;
#endregion

#region enums
	init_camera_enum();
	
	enum weaponType{
		unarmed,
		melee,
		pistol,
		rifle
	}
#endregion

//hide windows cursor
//window_set_cursor(cr_none);