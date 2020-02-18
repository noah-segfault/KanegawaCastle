/// @description (Old DnD) - draw life
/// @param x	x position 
/// @param y	y position 
/// @param msg	message to disply before lives

var xx = argument0;
var yy = argument1;
if (global.__argument_relative) {
	xx += x;
	yy += y;
}  // end if

draw_text( xx, yy, string_hash_to_newline(argument2)+string(lives));

