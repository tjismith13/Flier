/// @description Insert description here
// You can write your code in this editor

//Speed changes based on keyboard
if(keyboard_check(vk_up)) {
	linear_sp += 0.15;
	linear_sp = min(linear_sp, 10);
	image_index = 1;
}
else {
	linear_sp -= 0.15;
	linear_sp = max(linear_sp, 0);
	image_index = 0;
}

//Angle changes
if(keyboard_check(vk_right) and not keyboard_check(vk_left)) {
	angle -= 2;
}
else if(keyboard_check(vk_left) and not keyboard_check(vk_right)) {
	angle += 2;
}

//change object position
image_angle = angle;
y -= dcos(angle) * linear_sp;
x -= dsin(angle) * linear_sp;

if(place_meeting(x, y, o_wall)) {
	hp -= 15;
}

//Actions to perform on ship destroy
function dead() {
	linear_sp = 0;
	image_index = 2;
	image_xscale = 3;
	image_yscale = 3;
	file_delete(SAVEFILE);
	file_delete(HPFILE);
	Transition(trans_mode.DEAD);
}

if(hp <= 0) {
	dead();
}