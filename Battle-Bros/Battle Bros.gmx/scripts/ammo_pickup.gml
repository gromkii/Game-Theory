// 0 - Pistol
// 1 - Shotgun
// 2 - Assult Rifle
// 3 - Rockets
// 4 - Railgun

if place_meeting(x,y,argument0) // Pickup bullet ammmo.
{
    pickup = CLIP_SIZE[argument1] * 2;
    if ammo_clip[argument1] < CLIP_SIZE[argument1] && ammo[argument1] < MAX_AMMO[argument1]
    {
        pickup = CLIP_SIZE[argument1] - ammo_clip[argument1];
        ammo_clip[argument1] = CLIP_SIZE[argument1];
        ammo[argument1] += pickup;
        
    }
    else if ammo_clip[argument1] >= CLIP_SIZE[argument1]
    {
        ammo[argument1] += pickup;
        if (ammo[argument1] > MAX_AMMO[argument1]) ammo[argument1] = MAX_AMMO[argument1]
    }
    with (instance_nearest(x,y,argument0)) instance_destroy();          
}
