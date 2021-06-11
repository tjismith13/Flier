/// @description Insert description here
// You can write your code in this editor
if(file_exists(HPFILE)) file_delete(HPFILE);

//Create new save
var hpfilee;
hpfilee = file_text_open_write(HPFILE);
file_text_write_real(hpfilee, hp);
file_text_close(hpfilee);