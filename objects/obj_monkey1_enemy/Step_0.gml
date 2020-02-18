hsp = dir * movespeed;
vsp += grav;

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
    dir *= 1;
}
x += hsp;
 
//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;

   if (fearofheights) && !position_meeting(x+16*dir, y+ (sprite_height/2)+3,obj_wall)
    {
       dir *= -1
    }
}
y += vsp;

image_xscale = dir;




