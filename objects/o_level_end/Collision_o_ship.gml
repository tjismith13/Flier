/// @description Insert description here
// You can write your code in this editor
with(o_ship) {
	if(hascontrol) {
		hascontrol = false;
		Transition(trans_mode.GOTO, other.target_room);
	}
}