/// @description Insert description here
// You can write your code in this editor

if(floatdir){
	yy += dt * hoverspd;	
	if(yy >= floatMax){
		floatdir = !floatdir;	
	}
} else if (!floatdir){
	yy -= dt * hoverspd;
	if(yy <= -floatMax){
		floatdir = !floatdir;	
	}
}