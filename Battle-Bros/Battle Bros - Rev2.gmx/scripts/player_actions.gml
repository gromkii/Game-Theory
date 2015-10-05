if (key_flip) image_xscale *= -1; //Right Bumper.

if (reloading = false)
{
    if (key_cycleL)
    {
        weapon_show = true;
        alarm[4] = 180;
        current_selection -= 1;
        if (current_selection < 0) current_selection = 4; //Cycles to last weapon.
    }
    
    if (key_cycleR)
    {
        weapon_show = true;
        alarm[4] = 180;
        current_selection += 1;
        if (current_selection > 4) current_selection = 0;
    }
}

if (key_esc) game_end();