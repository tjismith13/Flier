/// @description Insert description here
// You can write your code in this editor

angle = 0
hascontrol = true
linear_sp = 0
flash = 0;
hp = 15;

if(file_exists(HPFILE)) {
	var hpfile = file_text_open_read(HPFILE);
	hp = file_text_read_real(hpfile);
	if(hp <= 0) hp = 15;
	file_text_close(hpfile);
}