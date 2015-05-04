if (key_flip && rolling = false) image_xscale *= -1; //Right Bumper.

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

if place_meeting(x,y+1,obj_wall) && key_roll && can_roll = true
{
    can_roll = false;
    alarm[5] = 60;
    rolling = true;
    alarm[0] = 20;
    alarm[6] = 30;
}

if can_roll = false && rolling = true
{
    rollspeed -= .5;
    movespeed = 0;
    hsp = rollspeed * sign(image_xscale);
    if place_meeting(x+hsp,y,obj_wall)
    {
        while !place_meeting(x+sign(hsp),y,obj_wall)
        {
            x += sign(hsp);   
        }
        
        hsp = 0;
    }
    x += hsp;
}

if rolling = true
{
    can_hit = false;
}

//Reaction to hit
if (can_hit = false && rolling = false) image_blend = c_red;
else image_blend = c_white;


if (key_esc) game_end();
