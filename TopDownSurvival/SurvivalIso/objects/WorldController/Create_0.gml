//temporary 15 x 15 square map
test_map = ds_grid_create(15, 15);
//fill with floor
for(var i = 0; i < 15; i++){
	for(var j = 0; j < 15; j++){
		test_map[# i, j] = 1;
	}
}

//make the outer edges walls
for(var i = 0; i < 15; i++){
	test_map[# i, 0] = 2;
	test_map[# i, 14] = 2;
}
for(var j = 0; j < 15; j++){
	test_map[# 0, j] = 2;
	test_map[# 14, j] = 2;
}

show_debug_message("generated world");

//create the player
instance_create_layer(tilex_to_worldx(5, 5), tiley_to_worldy(5, 5), "Entities", Player);
//create a render controller
//instance_create_layer(0, 0, "Controllers", RenderController);

with (instance_create_layer(0, 0, "Camera", CameraController)){
	change_camera_mode(cam_mode.move_to_follow_target, Player)
}