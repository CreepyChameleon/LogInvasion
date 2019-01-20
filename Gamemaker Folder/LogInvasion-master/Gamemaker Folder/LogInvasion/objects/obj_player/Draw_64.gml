/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 27E15613
/// @DnDArgument : "code" "//draws health bar$(13_10)if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;$(13_10)draw_healthbar(75, 5, 265, 25, __dnd_health, $FFAAAAAA, $FF0000FF & $FFFFFF, $FF04FF00 & $FFFFFF, 0, (($FFAAAAAA>>24) != 0), (($FFFFFFFF>>24) != 0));$(13_10)$(13_10)draw_set_colour($FF000000 & $ffffff);$(13_10)var l0E2E241D_0=($FF000000 >> 24);$(13_10)draw_set_alpha(l0E2E241D_0 / $ff);$(13_10)$(13_10)//draws health letters$(13_10)draw_text(80, 5, string("Health: ") + string(__dnd_health));$(13_10)$(13_10)//draws supercharge bar$(13_10)draw_set_colour($FFAAAAAA & $ffffff);$(13_10)var l425B2888_0=($FFAAAAAA >> 24);$(13_10)draw_set_alpha(l425B2888_0 / $ff);$(13_10)$(13_10)draw_rectangle(75, 35, 265, 55, 0);$(13_10)$(13_10)draw_set_colour($FFFFAC1D & $ffffff);$(13_10)var l55A09E89_0=($FFFFAC1D >> 24);$(13_10)draw_set_alpha(l55A09E89_0 / $ff);$(13_10)$(13_10)draw_rectangle(75, 35, 65 + superchargemeter, 55, 0);$(13_10)$(13_10)draw_set_colour($FFFFFFFF & $ffffff);$(13_10)var l43CB4437_0=($FFFFFFFF >> 24);$(13_10)draw_set_alpha(l43CB4437_0 / $ff);$(13_10)$(13_10)//draws the supercharge wave$(13_10)if supercharge == 100$(13_10){$(13_10)	if wavechoice == 1$(13_10)	{$(13_10)		draw_rectangle_colour(75, 35, 265, 55, $FFFF2200 & $FFFFFF, $FFFF5C49 & $FFFFFF, $FFFF9F5B & $FFFFFF, $FFFF6D44 & $FFFFFF, 0);$(13_10)		draw_rectangle_colour(75, 35, 75 + chargewave, 55, $FFFF9F5B & $FFFFFF, $FFFF6D44 & $FFFFFF, $FFFF2200 & $FFFFFF, $FFFF5C49 & $FFFFFF, 0);$(13_10)		chargewave += 5;$(13_10)	}$(13_10)	if wavechoice == -1$(13_10)	{$(13_10)		draw_rectangle_colour(75, 35, 265, 55, $FFFF9F5B & $FFFFFF, $FFFF6D44 & $FFFFFF, $FFFF2200 & $FFFFFF, $FFFF5C49 & $FFFFFF, 0);$(13_10)		draw_rectangle_colour(75, 35, 75 + chargewave, 55, $FFFF2200 & $FFFFFF, $FFFF5C49 & $FFFFFF, $FFFF9F5B & $FFFFFF, $FFFF6D44 & $FFFFFF, 0);$(13_10)		chargewave += 5;$(13_10)	}$(13_10)}    $(13_10)if chargewave > 190 $(13_10){$(13_10)	chargewave = 0;$(13_10)	wavechoice *= -1;$(13_10)}$(13_10)$(13_10)//supercharge letters$(13_10)draw_set_colour($FF000000 & $ffffff);$(13_10)var l0D4E1B77_0=($FF000000 >> 24);$(13_10)draw_set_alpha(l0D4E1B77_0 / $ff);$(13_10)$(13_10)draw_set_font(font_impact);$(13_10)$(13_10)draw_text(80, 35, string("SUPERCHARGE: ") + string(string(supercharge) + "%"));"
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

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B9A2C53
/// @DnDArgument : "code" "if point_in_rectangle(window_mouse_get_x(),window_mouse_get_y(),865,865,635,635)$(13_10){ $(13_10)	var hover=1;$(13_10)} $(13_10)else $(13_10){ $(13_10)	var hover=0; $(13_10)}$(13_10)draw_sprite(spr_player,hover,900,700);$(13_10)if (distance_to_point(mouse_x,mouse_y)<=0)$(13_10){$(13_10)if mouse_check_button(mb_left)$(13_10)show_debug_message("test")$(13_10)//draw_sprite(spr_player,2,865,360); $(13_10)}$(13_10)draw_set_color(make_colour_rgb(163,190,240));$(13_10)draw_set_font(font_impact);$(13_10)draw_text(865,350,"New  Game");"
if point_in_rectangle(window_mouse_get_x(),window_mouse_get_y(),865,865,635,635)
{ 
	var hover=1;
} 
else 
{ 
	var hover=0; 
}
draw_sprite(spr_player,hover,900,700);
if (distance_to_point(mouse_x,mouse_y)<=0)
{
if mouse_check_button(mb_left)
show_debug_message("test")
//draw_sprite(spr_player,2,865,360); 
}
draw_set_color(make_colour_rgb(163,190,240));
draw_set_font(font_impact);
draw_text(865,350,"New  Game");