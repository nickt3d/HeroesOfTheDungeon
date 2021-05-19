//get the current camera position
//cx = camera_get_view_x(camera);
//cy = camera_get_view_y(camera);
input();

#region state machine
switch state {
	#region idle
		case cam_mode.idle: 
		break;
		#endregion
	#region follow
		case cam_mode.follow: 
			if(!instance_exists(target)) { break;}
				camera_follow();
		break;
		#endregion
	#region mouse_border
		case cam_mode.mouse_border:
			camera_edge();
		break;
		#endregion
	#region mouse_drag
		case cam_mode.mouse_drag:	
			camera_drag();
		break;
		#endregion
	#region mouse_peak
		case cam_mode.mouse_peek: 
		break;
		#endregion
	#region move to target
		case cam_mode.move_to_target: 
			cx = lerp(cx, target_x, 0.1);
			cy = lerp(cy, target_y, 0.1);
		break;
		#endregion
	#region move to follow target
		case cam_mode.move_to_follow_target:
			camera_move_to_follow_target();
		break;
		#endregion	
}
#endregion

#region zoom
	if(keyboard_check(vk_numpad8)){
		zoom += 0.1;
		if(zoom >= maxzoom){
			zoom = maxzoom;	
		}
		vx = dw/zoom;
		vy = dh/zoom;

		var pm = matrix_build_projection_ortho(vx, vy, 0, 10000.0);
		camera_set_proj_mat(camera, pm);
	}
	if(keyboard_check(vk_numpad2)){
		zoom -= 0.1;
		if(zoom <= 1){
			zoom = 1;	
		}
	
		vx = dw/zoom;
		vy = dh/zoom;

		var pm = matrix_build_projection_ortho(vx, vy, 0, 10000.0);
		camera_set_proj_mat(camera, pm);
	}
	
#endregion
