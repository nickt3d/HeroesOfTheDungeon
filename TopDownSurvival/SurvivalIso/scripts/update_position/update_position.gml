function update_position() {
#region Collision
//TODO: Isometricify this code
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

	if(spd != 0){
		spd -= frict;
		if(spd <= 0){
			spd = 0;	
		}
	}

	x += hspd*dt;
	y += (vspd/2)*dt;
	z += zspd*dt;

#region apply gravity and friction
	if(!grounded){
		frict = 1;
		zspd -= global.grav*weight/10;
		if(z <= 0){
			z = 0;
			grounded = true;
			zspd = 0;
			frict = 3;
		}
	}
#endregion

}
