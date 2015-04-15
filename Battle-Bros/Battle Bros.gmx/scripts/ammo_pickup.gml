// 0 - Pistol
// 1 - Shotgun
// 2 - Assult Rifle
// 3 - Rockets
// 4 - Railgun

if place_meeting(x,y,argument0) // Pickup bullet ammmo.
{
    pickup = CLIP_SIZE[argument1] * 2;
    if ammo_clip[argument1] < CLIP_SIZE[argument1]
    {
        pickup[argument1] = CLIP_SIZE[argument1] - ammo_clip[argument1];
        ammo_clip[argument1] = CLIP_SIZE[argument1];
        ammo[argument1] += pickup[argument1];
    }
    else if ammo_clip[argument1] >= CLIP_SIZE[argument1]
    {
        ammo[argument1] += pickup[argument1];
        if (ammo[argument1] > MAX_AMMO[argument1]) ammo[argument1] = MAX_AMMO[argument1]
    }          
}
