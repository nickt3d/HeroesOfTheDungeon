// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_position() {
#region Collision
//TODO: tile based collision with isometric offsets
	////horizontal collisions with collider object
	//if (place_meeting(x+hspd*dt, y, Collider)) {
	//    while (!place_meeting(x+sign(hspd)*dt, y, Collider)){
	//        x += sign(hspd)*dt;
	//    }
	//   hspd = 0;
	//}

	////vertical collisions with collider object
	// if (place_meeting(x, y+vspd*dt, Collider)) {
	//  while(!place_meeting(x, y+sign(vspd)*dt, Collider)){
	//        y += sign(vspd)*dt;
	//    }
	//    vspd = 0;
	//}
#endregion

	x += hspd*dt;
	y += (vspd/2)*dt;

	//send the position update to the server

}