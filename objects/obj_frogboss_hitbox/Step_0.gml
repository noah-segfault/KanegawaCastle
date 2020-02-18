if (dp <= 0)
{
    alarm[0] = -1;
    with (obj_frog_boss)
    {
        instance_destroy();
    }
    instance_destroy();
}

if (hit_check == false) && (place_meeting(x,y,obj_attack_hitbox))
{
 dp-= 1; // subtracts one hitpoint off dragon's health
 hit_check = true; // sets switch to true 
 show_debug_message("Counted") //this helps to tell if the loop was sucessful
 alarm[0] = 40 ; // starts an alarm for invincibility frames for the boss
instance_create(x,y,obj_enemydeath);
score += 10;
audio_play_sound(s_enemykill,20,false);
}


