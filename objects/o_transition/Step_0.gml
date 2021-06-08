/// @description Progress the transition
// You can write your code in this editor

if(mode != trans_mode.OFF) {
	if(mode == trans_mode.INTRO) {
		percent = max(0, percent - max((percent / 10), 0.005));
	}
	else {
		percent = min(1.0, percent + max(((1.0 - percent) / 10), 0.005));
	}
	
	if((percent == 1) || (percent == 0)) {
		switch(mode) {
			case(trans_mode.INTRO): {
				mode = trans_mode.OFF;
				break;
			}
			case(trans_mode.NEXT): {
				mode = trans_mode.INTRO;
				room_goto_next();
				break;
			}
			case(trans_mode.GOTO): {
				mode = trans_mode.INTRO;
				room_goto(target);
				break;
			}
			case(trans_mode.RESTART): {
				game_restart();
				break;
			}
		}
	}
}