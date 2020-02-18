instance_create(x,y,obj_dragon_fire);
alarm[1] = 50;
if distance_to_object(obj_player) < 25
   {
  audio_emitter_pitch(audio_em,random_range(.85,1.15));
    //audio_emitter_gain(audio_em,random_range(.1,1));
    audio_play_sound_on(audio_em,s_attack,false,10);
   }


