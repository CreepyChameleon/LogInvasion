//draws health bar
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(75, 5, 265, 25, __dnd_health, $FFAAAAAA, $FF0000FF & $FFFFFF, $FF04FF00 & $FFFFFF, 0, (($FFAAAAAA>>24) != 0), (($FFFFFFFF>>24) != 0));

draw_set_colour($FF000000 & $ffffff);
var l0E2E241D_0=($FF000000 >> 24);
draw_set_alpha(l0E2E241D_0 / $ff);

//draws health letters
draw_text(80, 5, string("Health: ") + string(__dnd_health));

//draws supercharge bar
draw_set_colour($FFAAAAAA & $ffffff);
var l425B2888_0=($FFAAAAAA >> 24);
draw_set_alpha(l425B2888_0 / $ff);

draw_rectangle(75, 35, 265, 55, 0);

draw_set_colour($FFFFAC1D & $ffffff);
var l55A09E89_0=($FFFFAC1D >> 24);
draw_set_alpha(l55A09E89_0 / $ff);

draw_rectangle(75, 35, 65 + superchargemeter, 55, 0);

draw_set_colour($FFFFFFFF & $ffffff);
var l43CB4437_0=($FFFFFFFF >> 24);
draw_set_alpha(l43CB4437_0 / $ff);

//draws the supercharge wave
if supercharge == 100
{
	if wavechoice == 1
	{
		draw_rectangle_colour(75, 35, 265, 55, $FFFF2200 & $FFFFFF, $FFFF5C49 & $FFFFFF, $FFFF9F5B & $FFFFFF, $FFFF6D44 & $FFFFFF, 0);
		draw_rectangle_colour(75, 35, 75 + chargewave, 55, $FFFF9F5B & $FFFFFF, $FFFF6D44 & $FFFFFF, $FFFF2200 & $FFFFFF, $FFFF5C49 & $FFFFFF, 0);
		chargewave += 5;
	}
	if wavechoice == -1
	{
		draw_rectangle_colour(75, 35, 265, 55, $FFFF9F5B & $FFFFFF, $FFFF6D44 & $FFFFFF, $FFFF2200 & $FFFFFF, $FFFF5C49 & $FFFFFF, 0);
		draw_rectangle_colour(75, 35, 75 + chargewave, 55, $FFFF2200 & $FFFFFF, $FFFF5C49 & $FFFFFF, $FFFF9F5B & $FFFFFF, $FFFF6D44 & $FFFFFF, 0);
		chargewave += 5;
	}
}    
if chargewave > 190 
{
	chargewave = 0;
	wavechoice *= -1;
}

//supercharge letters
draw_set_colour($FF000000 & $ffffff);
var l0D4E1B77_0=($FF000000 >> 24);
draw_set_alpha(l0D4E1B77_0 / $ff);

draw_set_font(font_impact);

draw_text(80, 35, string("SUPERCHARGE: ") + string(string(supercharge) + "%"));

if supercharge >= 100
{//
	var hover=0;
	if point_in_triangle(window_mouse_get_x(),window_mouse_get_y(),872,705,990,705,931,645) or point_in_triangle(window_mouse_get_x(),window_mouse_get_y(),872,705,990,705,931,765) //checks if touching button while at 100 SC
	{///
		var hover=2;
		if mouse_check_button_pressed(mb_left) //checks if button is clicked
		{////
			show_debug_message("super ability used");
			supercharge = 0;
			damageMutiplier = 2;
			superused = true; 
			alarm[3] = 150;
			audio_play_sound(soldier_super, 10, false);
		}////
	}///
}//

else 
{ 
	var hover=1; 
}

draw_sprite(spr_superButton,hover,870,640);