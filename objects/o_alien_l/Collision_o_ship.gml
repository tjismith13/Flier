/// @description Diminish HP and spawn replacement
// You can write your code in this editor

with(other) {
	hp -= 15;
	flash = 5;
}

instance_create_layer(650, 100, "Alien_Layer", o_alien_s)

instance_destroy();