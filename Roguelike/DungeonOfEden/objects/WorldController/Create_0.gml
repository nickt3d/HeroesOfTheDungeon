//controls the world stream data

dungeonw = 30;
dungeonh = 30;
dungeond = 30;

dungeon_data = ds_map_create();
dungeon_data[? "map_data"] = ds_list_create();
floor_data = ds_grid_create(dungeonw, dungeonh);

player_floor = 1;

for(var l = dungeonh; l > 0; l--){
	var floor_data = ds_grid_create(dungeonw, dungeonh);
	for(var i = 0; i < dungeonw; i++){
		for(var j = 0; j < dungeond; j++){
			//fill the floor with empty tildata
			floor_data[# i, j] = tile_type.empty;
		}
	}
	dungeon_data[? "map_data"][| l] = floor_data;
}    

set_tile_region(1, 5, 10, 15, 6, tile_type.block);
set_tile_region(3, 1, 6, 7, 22, tile_type.block);

with(instance_create_layer(0, 0, "Entities", Player)){
	
}

with(instance_create_layer(0, 0, "Camera", CameraController)){
	state = cam_mode.follow;
	target = Player;
}

with(instance_create_layer(200, 200, "Entities", Zombie)){
	
}