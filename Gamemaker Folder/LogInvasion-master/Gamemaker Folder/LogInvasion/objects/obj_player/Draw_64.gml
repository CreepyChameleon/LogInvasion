if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(75, 5, 265, 25, __dnd_health, $FFAAAAAA, $FF0000FF & $FFFFFF, $FF04FF00 & $FFFFFF, 0, (($FFAAAAAA>>24) != 0), (($FFFFFFFF>>24) != 0));

draw_set_colour($FF000000 & $ffffff);
var l0E2E241D_0=($FF000000 >> 24);
draw_set_alpha(l0E2E241D_0 / $ff);

draw_text(80, 5, string("Health: ") + string(__dnd_health));

draw_set_colour($FFAAAAAA & $ffffff);
var l425B2888_0=($FFAAAAAA >> 24);
draw_set_alpha(l425B2888_0 / $ff);

draw_rectangle(75, 35, 265, 55, 0);

if supercharge == 100
{
	var randcolor = choose(1, 2, 3);
	if randcolor == 1
	{
		draw_set_colour($FFFFAC1D & $ffffff);
		var l7C2CADB4_0=($FFFFAC1D >> 24);
		draw_set_alpha(l7C2CADB4_0 / $ff);

	}
	if randcolor == 2
	{
		draw_set_colour($FFFF4F49 & $ffffff);
		var l5078CB09_0=($FFFF4F49 >> 24);
		draw_set_alpha(l5078CB09_0 / $ff);
	}
	if randcolor == 3
	{
		draw_set_colour($FFFF0008 & $ffffff);
		var l49E9AC62_0=($FFFF0008 >> 24);
		draw_set_alpha(l49E9AC62_0 / $ff);
	}
}
else
{
	draw_set_colour($FFFFAC1D & $ffffff);
	var l55A09E89_0=($FFFFAC1D >> 24);
	draw_set_alpha(l55A09E89_0 / $ff);
}

draw_rectangle(75, 35, 65 + superchargemeter, 55, 0);

draw_set_colour($FF000000 & $ffffff);
var l0D4E1B77_0=($FF000000 >> 24);
draw_set_alpha(l0D4E1B77_0 / $ff);

draw_set_font(font_impact);

draw_text(80, 35, string("SUPERCHARGE: ") + string(string(supercharge) + "%"));