/// @description Insert description here
// You can write your code in this editor

if(vk_up) {
	linear_sp += 3;
	linear_sp = min(linear_sp, 10);
	sprite_index = 1;
}
else {
	linear_sp -= 3;
	linear_sp = max(linear_sp, 0);
	sprite_index = 0;
}

if(vk_right and not vk_left) {
	angle += 2;
}
else if(vk_left and not vk_right) {
	angle -= 2;
}
image_angle = angle;
x = x + ();
