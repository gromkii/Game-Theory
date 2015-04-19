if (weapon_show = true)
{
    draw_set_alpha(.5);
    back_index = current_selection - 1;
    if(back_index < 0) back_index = 4; 
    draw_sprite(spr_weapon_index,back_index,x-34,y-48);
    
    draw_set_alpha(1);
    draw_sprite(spr_weapon_index,current_selection,x,y-48);
    draw_sprite(spr_weapon_cursor,0,x,y-48);
    
    draw_set_alpha(.5);
    draw_sprite(spr_weapon_index,current_selection+1,x+34,y-48);
}