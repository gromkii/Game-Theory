// arg0 - Bullet
// arg1 - Damage Value

if (place_meeting(x,y,argument0) && can_hit = true)
{
    can_hit = false;
    alarm[0] = 60;
    hit_points -= argument1;
    with (instance_nearest(x,y,argument0)) instance_destroy();
    
}

/* if place_meeting(x,y,argument0) && can_hit = false
{
    with (instance_nearest(x,y,argument0)) instance_destroy();
}
*/

