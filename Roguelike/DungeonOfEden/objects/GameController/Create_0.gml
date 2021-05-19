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
#macro tw 16
#macro th 8
#macro td 8

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
#endregion

#region enums
	init_camera_enum();
#endregion

//hide windows cursor
//window_set_cursor(cr_none);