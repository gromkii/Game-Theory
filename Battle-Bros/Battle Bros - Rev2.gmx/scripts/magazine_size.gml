//Take away CLIP_SIZE from ammo if ammo > CLIP_SIZE



if (key_reload && reloading = false && (ammo_clip[current_selection] < CLIP_SIZE[current_selection]))
{
    if (ammo[current_selection] > 0)
    {
        reloading = true;
        can_fire = false;
        alarm[3] = RELOAD_SPEED[current_selection];
    }
}   