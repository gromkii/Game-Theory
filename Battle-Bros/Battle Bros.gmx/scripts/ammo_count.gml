//Initialize Ammo Ammount

// 0 - Pistol
// 1 - Shotgun
// 2 - Assault
// 3 - Rocket Launcher
// 4 - Railgun

// enum weapons { PISTOL, SHOTGUN, ASSAULT, ROCKET, RAILGUN }; 
// ^ This would've been more work, but hella readability. weapons.PISTOL = 0
// Not dealing with enumeration since y'all aren't editing the code~ 
// - Dax :3

current_selection = 0;

for (i = 0; i < 5; i++) //Set all ammount count to 0.
{
    ammo[i] = 0;
    ammo_clip[i] = 0;
}


ammo[0] = 12; //Give players 12 pistol ammo on spawn.
ammo_clip[0] = 12;

//Set up constants for maximum ammo capacity.
MAX_AMMO[0] = 60;
MAX_AMMO[1] = 24;
MAX_AMMO[2] = 120;
MAX_AMMO[3] = 6;
MAX_AMMO[4] = 0;

//Set up constants for maximum magazine size.
CLIP_SIZE[0] = 12;
CLIP_SIZE[1] = 6;
CLIP_SIZE[2] = 30;
CLIP_SIZE[3] = 2;
CLIP_SIZE[4] = 1;

//Set up constants to establish reloading times, @60fps.
RELOAD_SPEED[0] = 60;
RELOAD_SPEED[1] = 120;
RELOAD_SPEED[2] = 120;
RELOAD_SPEED[3] = 360;
RELOAD_SPEED[4] = 0;

//Set up constants to establish firing speeds.
FIRE_SPEED[0] = 30;
FIRE_SPEED[1] = 60;
FIRE_SPEED[2] = 15;
FIRE_SPEED[3] = 120;
FIRE_SPEED[4] = 120;