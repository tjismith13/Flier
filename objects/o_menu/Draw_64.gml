/// @description Insert description here
// You can write your code in this editor

draw_set_font(TitleFont);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

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