// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScreenShake(magnitude, length){
	with(o_camera) {
		if(magnitude > shake_remain) {
			shake_magnitude = magnitude;
			shake_remain = magnitude;
			shake_length = length;
		}
	}
}