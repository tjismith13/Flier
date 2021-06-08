/// @description Auto save
// You can write your code in this editor

if(file_exists(SAVEFILE)) file_delete(SAVEFILE);

//Create new save
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file, room);
file_text_close(file);