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
			if(l == 1){
				ds_grid_set_region(floor_data, 5, 7, 10, 13, tile_type.block);
				ds_grid_set_region(floor_data, 3, 5, 14, 8, tile_type.block);
			}
		}
	}
	dungeon_data[? "map_data"][| l] = floor_data;
}    

with(instance_create_layer(0, 0, "Camera", CameraController)){
	
}