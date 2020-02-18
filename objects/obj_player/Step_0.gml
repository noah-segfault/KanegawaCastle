key_right = keyboard_check(vk_right) || (gamepad_axis_value(0,gp_axislh) > 0);
key_left = -(keyboard_check(vk_left) || (gamepad_axis_value(0,gp_axislh) < 0));
key_jump = keyboard_check(vk_space) || (gamepad_button_check_pressed(0, gp_face1));
key_jump_held = keyboard_check(vk_space);// || (gamepad_button_check_pressed(0, gp_face1))

//React to inputs
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;
 
if (place_meeting(x,y+1,obj_wall))
{
    vsp = key_jump * -jumpspeed
}
if (vsp < 0) && (!key_jump_held) vsp = max(vsp,-jumpspeed/4)


//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
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
}
y += vsp;
// Animations
if (move != 0) image_xscale = move;
if (place_meeting(x,y+1,obj_wall))
{
    if(move != 0) sprite_index = spr_player1_run; else sprite_index = spr_player1_still;
  
}
else
{
    if (vsp < 0) sprite_index = spr_player1_jump; else  sprite_index = spr_player1_still;
}

// Attack
if (keyboard_check(ord("Z")) && slash_stam = true)
{
    hsp = 0;
    vsp = 0;
   
	sprite_index = spr_player1_attack2;
    alarm[0] = 10;
	audio_emitter_pitch(audio_em,random_range(.85,1.15));
    //audio_emitter_gain(audio_em,random_range(.1,1));
    slash_stam = false;
    
    audio_play_sound_on(audio_em,s_attack,false,10);
   if (image_index >= 1) or (image_index <= 5) {
      
       (instance_create(x,y,obj_hitbox)).image_xscale = image_xscale;
		
      
  
   } 
}

