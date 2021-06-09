/// @description Control Camera
// You can write your code in this editor

// Item ease in

menu_x += (menu_x_target - menu_x) / menu_speed;

// Keyboard control

if(menu_control) {
	if(keyboard_check_pressed(vk_up)) {
		menu_cursor ++;
		if(menu_cursor >= menu_items) menu_cursor = 0;
	}
	if(keyboard_check_pressed(vk_down)) {
		menu_cursor --;
		if(menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	if(keyboard_check_pressed(vk_enter)) {
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		ScreenShake(4, 30);
		menu_control = false;
		with(o_transition) {
			title = false;
		}
	}
}

if((menu_x > gui_width + 150) and (menu_committed != -1)) {
	switch(menu_committed) {
		case 2: default: Transition(trans_mode.GOTO, Room1); break;
		case 1: {
			if(!file_exists(SAVEFILE)) {
				Transition(trans_mode.GOTO, Room1);
			}
			else {
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				Transition(trans_mode.GOTO, target);
			}
		} break;
		case 0: game_end(); break;
			
		
	}
}