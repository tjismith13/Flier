/// @description Transition
// You can write your code in this editor


w = display_get_gui_width();
h = display_get_gui_height();

h_half = h / 2;

enum trans_mode {
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO,
	DEAD
}

mode = trans_mode.INTRO;
percent = 1;
target = room;

title = true;
dead_title = false;