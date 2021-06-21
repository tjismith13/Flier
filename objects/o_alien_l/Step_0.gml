/// @description Insert description here
// You can write your code in this editor

//Determine speed, check for wall collisions and bounce if so
x_sp = dcos(dir) * sp;
y_sp = dsin(dir) * sp;

if(place_meeting(x, y - y_sp, o_wall)) {
	y_sign *= -1;
}
else if(place_meeting(x, y + y_sp, o_wall)) {
	y_sign *= -1;
}
else if(place_meeting(x - x_sp, y, o_wall)) {
	x_sign *= -1;	
}
else if(place_meeting(x + x_sp, y, o_wall)) {
	x_sign *= -1;	
}

x += x_sp * x_sign;
y += y_sp * y_sign;