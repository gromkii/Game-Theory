hsp = h_move * movespeed;
if (vsp < 20) vsp += grav;


if place_meeting(x,y+1,obj_wall)
{
    jumps = 2;
}

if (key_jump) && jumps > 0
{
    jumps -= 1;
    vsp = -jumpspeed;
}

if key_jump && jumps > 0 && (place_meeting(x+1,y,obj_wall) || place_meeting(x-1,y,obj_wall))
{
    jumps -= 1;
    vsp = -jumpspeed;
}

if place_meeting(x+hsp,y,obj_wall)
{
    while !place_meeting(x+sign(hsp),y,obj_wall)
    {
        x += sign(hsp);   
    }
    
    hsp = 0;
}


if place_meeting(x,y+vsp,obj_wall)
{
    while !place_meeting(x,y+sign(vsp),obj_wall)
    {
        y += sign(vsp);
    }
    
    vsp = 0;   
}   

x += hsp;
y += vsp;
