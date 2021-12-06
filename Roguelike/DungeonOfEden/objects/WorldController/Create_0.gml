//controls the world stream data

dungeonw = sprite_get_width(testmap_spr);
dungeonh = sprite_get_height(testmap_spr);

dungeon_data = ds_map_create();
var g = ds_grid_create(dungeonw, dungeonh);
g = read_map_data(testmap_spr);
dungeon_data[? "map_data"] = g;

//set player start position to a specific place in the map
var xs = tilex_to_worldx(35, 35);
var ys = tiley_to_worldy(35, 35);

with(instance_create_layer(xs, ys, "Entities", Player)){
	
}

with(instance_create_layer(0, 0, "Camera", CameraController)){
	state = cam_mode.follow; 
	target = Player;
}