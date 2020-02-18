/// @description Insert description here
// You can write your code in this editor
score += 10;
instance_destroy();
audio_play_sound(s_enemykill,20,false);
instance_create(x,y,obj_enemydeath);

