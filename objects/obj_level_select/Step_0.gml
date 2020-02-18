/// @description Insert description here
// You can write your code in this editor
var move = 0;
move -= max(keyboard_check_pressed(vk_left),keyboard_check_pressed(ord("a")),0);
move += max(keyboard_check_pressed(vk_right),keyboard_check_pressed(ord("d")),0);

if (move!= 0)
{
	mpos += move;
	if (mpos < 0) mpos = array_length_1d(menu) - 1;
	if (mpos > array_length_1d(menu) - 1) mpos = 0;
}	


var push;
push = max(keyboard_check_released(vk_enter),keyboard_check_released(vk_shift),keyboard_check_released(vk_space), 0);
if (push == 1) scr_menu();

