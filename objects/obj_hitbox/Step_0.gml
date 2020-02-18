/// @description Insert description here
// You can write your code in this editor
hit = instance_place(x,y,obj_enemy_boss)
if (hit != noone)
{
	hit.hp -= 1;
	instance_destroy();
	instance_create(x,y,obj_enemydeathpoof);
	
}