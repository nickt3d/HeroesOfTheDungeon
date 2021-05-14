/********************************CAMERA USAGE*********************************/
#region camera usage
/*
camera_update() - checks the current camera position and zoom level and resets the view matrix
camera_follow() - follows the current camera target
change_camera_mode()
camera_move_to_follow_target()
camera_edge
camera_drag
camera_get_x
camera_get_y
camera_get_w
camera_get_h
camera_shake(shake force) - offsets the camera by a specified force variable to create a camera shake effect
*/
#endregion
/*****************************************************************************/
//TODO add fullscreen and windowed modes, using the display width to set the window size and aspect

//create the camera
camera = camera_create();

#region zoom
maxzoom = 4;			//the maximum zoom level
zoom	= 2;			//the starting zoom level
vx		= (dw)/zoom;	//view size x
vy		= (dh)/zoom;	//view size y
#endregion

cx = 0;			//the camera x position
cy = 0;			//the camera y position
cz = 0;

cxoffset = 0;
cyoffset = 0;

z_dist = 50;
dir = 0;
pitch = 0;
cursor_index = 0;
cursor_visible = true;

//set the view width and height based on the screen size
var pm = matrix_build_projection_ortho(vx, vy, -10000.0, 10000.0);

//set the camera projection matrix
camera_set_proj_mat(camera, pm);

//set the room viewport
view_visible[0] = true;
view_enabled = true;
view_set_camera(0, camera);
view_camera[0] = camera;

//default starting state
state = cam_mode.mouse_drag;

//the object this camera is attached to
target = noone;

mxp = 1;
myp = 1;

//smooth the movement
smoothing_level = 0.25;

//the camera update script
camera_set_update_script(camera, camera_update);