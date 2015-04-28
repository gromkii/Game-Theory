draw_player = current_selection;

switch (draw_player)
{
case 0:
    
    
case 1:
    draw_sprite(spr_p1_pistol,0,x,y);
    image_speed = 0;
    break;
    
case 2:
    draw_sprite(spr_p1_assault,0,x,y);
    image_speed = 0;
    break;
    
case 3:
    draw_sprite(spr_p1_rocket,0,x,y);
    image_speed = 0;
    break;
    
case 4:
    draw_sprite(spr_p1_assault,0,x,y);
    image_speed = 0;
    break;
    
}  

if hsp != 0 && place_meeting(x,y+1,obj_wall)
{
    image_speed = 10;
}

else if !place_meeting(x,y+1,obj_wall)
{
    image_index = 2;
    image_speed = 0;
}

else
{
    image_index = 0;
    image_speed = 0;
}
