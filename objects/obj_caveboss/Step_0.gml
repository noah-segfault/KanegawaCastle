/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{ 
	instance_destroy();
	instance_create(3567,310,obj_enemybossdeath);
};

if(image_index == 6)
{
    alarm[1] = 1;
}
