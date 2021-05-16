mx = mouse_x;
my = mouse_y;

dir = point_direction(x, y, mx, my);

#region player input logic
	if(instance_place(mx, my, Enemy)){
		var t = instance_place(mx, my, Enemy);
		//move into range
		if(mouse_check_button(mb_left)){
			switch(weapon){
				#region unarmed
					case weaponType.unarmed:
					//move to towards the position clicked
					if(range <= point_distance(x, y, t.x, t.y)){
						dir = point_direction(x, y, mx, my);
						spd += accel;
					} else {
						//melee attack
						t.hp -= 10;
					}
					break;
				#endregion
				#region pistol
					case weaponType.pistol:
					//move to towards the position clicked
						dir = point_direction(x, y, t.x, t.y)
				
						//if not in range
						if(range <= point_distance(x, y, t.x, t.y)){
							spd += accel;
						} else {
							//shoot the pistol
							if(t != noone && cooldown <= 0){
								cooldown = 0.1;
								var inst = instance_create_layer(x, y, "Entities", Bullet)
								with(inst){
									target = t;
									damage = 10;
									spd = 1000;
									dir = point_direction(x, y, target.x, target.y);
								}
							}
						}
					break;
					
				default: spd += accel; break;
				#endregion
			}
		}
	} else {
		if(mouse_check_button(mb_left)){
			spd += accel;
		}	
	}
#endregion

hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

cooldown -= dt;

event_inherited();