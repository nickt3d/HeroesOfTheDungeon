//map is the sprite we take as input for creating the level in isometric
function read_map_data(map){
	var w = sprite_get_width(map);
	var h = sprite_get_height(map);
	
	var grid_data = ds_grid_create(w, h);
	
	//create a surface for the sprite we are parsing
	var surf = surface_create(w, h);
	surface_set_target(surf);
	//render the sprite to the surface
	draw_sprite(map, 0, 0, 0);
	
	//// TODO: use a buffer to get pixel data
	//var size = w*h*4; // set the size to a 4 bit buffer for each pixel
	//var buff = buffer_create(size, buffer_fast, 1);
	//buffer_get_surface(buff, surf, 0, 0, 0);
	
	//read the pixel data from the surface
	for(var xx = 0; xx < w; xx++){
		for(var yy = 0; yy < h; yy++){
			//set the grid to 0 for a white pixel and 1 for a black one.
			if(surface_getpixel(surf, xx, yy) != 0){
				grid_data[# xx, yy] = 0;
				instance_create_layer(tilex_to_worldx(xx, yy), tiley_to_worldy(xx, yy), "Collision", TileCollider)
			} else {
				grid_data[# xx, yy] = 1;
			}
			//show out put for debugging
			//if(surface_exists(surf)){
			//	show_debug_message(string(surface_getpixel(surf, xx, yy)));
			//}
		}
	}
	
	
	//TODO: change the values to tile data maps
	//TODO: auto tile configurations
		
	surface_reset_target();
	
	return grid_data;
}