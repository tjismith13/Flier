/// @description Trigger transition on contact
// You can write your code in this editor
with(o_ship) {
	if(hascontrol) {
		hascontrol = false;
		if(other.target_room == TitleRoom) {
			with(o_transition) {game_won = true;}
		}
		Transition(trans_mode.GOTO, other.target_room);
	}
}