if key_cycleL || key_cycleR
{
    audio_play_sound(sfx_cycle,3,0)
}

if key_jump && place_meeting(x,y+1,obj_wall)
{
    audio_play_sound(sfx_jump,3,0);
}

