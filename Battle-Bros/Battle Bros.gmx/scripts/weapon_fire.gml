if (key_fire && can_fire = true && ammo_clip[argument0] > 0 && reloading = false && current_selection = argument0)
{
    can_fire = false;
    ammo_clip[current_selection] -= 1;
    
    alarm[1] = FIRE_SPEED[current_selection];
    instance_create(x+32*image_xscale,y,argument1);
    
}
