if (image_index = 8)
{
alarm[0] = 1;
}
if (hp <= 0)
{ 
	instance_destroy();
	//instance_create(4287,422,obj_enemybossdeath);
	instance_create(4492,443,obj_enemyboss_teleport);
};