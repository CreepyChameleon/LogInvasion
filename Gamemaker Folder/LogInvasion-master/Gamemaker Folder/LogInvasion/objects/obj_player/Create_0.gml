hsp = 0;
vsp = 0;
walksp = 120;
go = true;
movex = false;
movey = false;
moving = 0;
attacking = false;
hit = false;

supercharge = 0;
superchargemeter = 0;
chargewave = 0; //how far along wave is
wavechoice = 1; //which wave type on charge meter

//window_set_fullscreen(true);

damageMutiplier = 1;

__dnd_health = real(100);

draw_set_font(font_corbel);

draw_set_colour($FF000000 & $ffffff);
var l1D22F97F_0=($FF000000 >> 24);
draw_set_alpha(l1D22F97F_0 / $ff);

moveRight = 0;
