if (key_fire && can_fire = true && ammo_clip[argument0] > 0 && reloading = false && current_selection = argument0)
{
    can_fire = false;
    ammo_clip[current_selection] -= 1;
    
    alarm[1] = FIRE_SPEED[current_selection];
    
    if argument1 = obj_bullet_shotgun_p1
    {
        instance_create(x,y,obj_bullet_shotgun_p1);
        instance_create(x,y,obj_bullet_shotgun_p1_up);
        instance_create(x,y,obj_bullet_shotgun_p1_down);
    }
    
    else if argument1 = obj_bullet_shotgun_p2
    {
        instance_create(x,y,obj_bullet_shotgun_p2);
        instance_create(x,y,obj_bullet_shotgun_p2_up);
        instance_create(x,y,obj_bullet_shotgun_p2_down);
    }
    
    else instance_create(x+32*image_xscale,y,argument1);
    
    
}
