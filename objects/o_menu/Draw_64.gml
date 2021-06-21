/// @description Insert description here
// You can write your code in this editor

//set fonts
draw_set_font(TitleFont);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

//display menu items
for(var i = 0; i < menu_items; i ++) {
	var offset = 2;
	var txt = menu[i];
	
	if(menu_cursor == i) {
		txt = string_insert("> ", txt, 0);
		var color = c_white;
	}
	else {
		var color = c_grey;
	}
	
	var xx = menu_x;
	var yy = menu_y - (menu_item_height * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx, yy + offset, txt);
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_text(xx, yy - offset, txt);
	
	draw_set_color(color);
	draw_text(xx, yy, txt);
}

//Decide title text to display
with(o_transition) {
	draw_set_font(FlierFont);
	if(title and not game_won) draw_text_color(w / 2 + 100, h / 2,  "FLIER", c_white, c_white, c_white, c_white, 1);
	if(dead_title) draw_text_color(w / 2, h / 2,  "YOU DIED", c_white, c_white, c_white, c_white, 1);
	if(game_won) draw_text_color(w / 2 + 100, h / 2,  "YOU WON!", c_white, c_white, c_white, c_white, 1);
}