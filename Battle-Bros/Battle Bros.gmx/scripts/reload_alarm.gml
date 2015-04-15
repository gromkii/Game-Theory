//If ammo >= clipsize
if ammo[current_selection] >= CLIP_SIZE[current_selection]
{  
    //Ammo -= Clipsize
    ammo[current_selection] -= CLIP_SIZE[current_selection] - ammo_clip[current_selection];
    //Ammo_clip = Clipsize
    ammo_clip[current_selection] = CLIP_SIZE[current_selection];
}
//Else if ammo < Clip size
else if ammo[current_selection] < CLIP_SIZE[current_selection]
{    
    //Needed_Ammo = Clip_size - ammo clip
    var needed_ammo = CLIP_SIZE[current_selection] - ammo_clip[current_selection];    
    //if needed_ammo > ammo, added_ammo = needed_ammo - ammo
    if needed_ammo > ammo[current_selection]
    {
        //ammo clip += added_ammo
        var ammo_added = needed_ammo - ammo[current_selection];
        ammo[current_selection] = 0;
        ammo_clip[current_selection] += ammo_added;
    }
    //else ammo -= needed_ammo
    else if needed_ammo <= ammo[current_selection]
    {
        ammo[current_selection] -= needed_ammo;
        //ammo clip = clip_size
        ammo_clip[current_selection] = CLIP_SIZE[current_selection];
    }
}   
