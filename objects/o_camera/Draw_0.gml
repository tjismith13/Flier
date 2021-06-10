/// @description Insert description here
// You can write your code in this editor
draw_set_font(TitleFont);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
if(room != TitleRoom) {
	with(o_ship) {
		draw_text_color(other.x + 500, other.y - 300,  "HP: " + string(hp), c_white, c_white, c_white, c_white, 1);
	}
}