function camera_update() {
	with(CameraController){
		if(target != noone){
			vx = dw/zoom;
			vy = dh/zoom;

			var pm = matrix_build_projection_ortho(vx, vy, 0, 10000.0);
			camera_set_proj_mat(camera, pm);
			
			var vm = matrix_build_lookat(cx + cxoffset, cy + cyoffset, -z_dist*zoom, cx + cxoffset, cy + cyoffset, 0, 0, 1, 0);
			//var pm = matrix_build_projection_ortho(vx, vy, -100, 10000);
			camera_set_view_mat(camera, vm);
			//camera_set_proj_mat(camera, pm);
		} else {
			vx = dw/zoom;
			vy = dh/zoom;

			var pm = matrix_build_projection_ortho(vx, vy, 0, 10000.0);
			camera_set_proj_mat(camera, pm);
			
			var vm = matrix_build_lookat(cx + cxoffset, cy + cyoffset, -z_dist*zoom, cx + cxoffset, cy + cyoffset, 0, 0, 1, 0);
			//var pm = matrix_build_projection_ortho(vx, vy, -100, 10000);
			camera_set_view_mat(camera, vm);
			//camera_set_proj_mat(camera, pm);
		}  
	}


}
