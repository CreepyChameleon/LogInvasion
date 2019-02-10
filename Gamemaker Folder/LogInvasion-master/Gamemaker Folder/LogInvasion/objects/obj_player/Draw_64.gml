/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0D2EC40D
/// @DnDArgument : "code" "//draws health bar$(13_10)if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;$(13_10)draw_healthbar(75, 5, 265, 25, __dnd_health, $FFAAAAAA, $FF0000FF & $FFFFFF, $FF04FF00 & $FFFFFF, 0, (($FFAAAAAA>>24) != 0), (($FFFFFFFF>>24) != 0));$(13_10)$(13_10)draw_set_colour($FF000000 & $ffffff);$(13_10)var l0E2E241D_0=($FF000000 >> 24);$(13_10)draw_set_alpha(l0E2E241D_0 / $ff);$(13_10)$(13_10)//draws health letters$(13_10)draw_text(80, 5, string("Health: ") + string(__dnd_health));$(13_10)$(13_10)//draws supercharge bar$(13_10)draw_set_colour($FFAAAAAA & $ffffff);$(13_10)var l425B2888_0=($FFAAAAAA >> 24);$(13_10)draw_set_alpha(l425B2888_0 / $ff);$(13_10)$(13_10)draw_rectangle(75, 35, 265, 55, 0);$(13_10)$(13_10)draw_set_colour($FFFFAC1D & $ffffff);$(13_10)var l55A09E89_0=($FFFFAC1D >> 24);$(13_10)draw_set_alpha(l55A09E89_0 / $ff);$(13_10)$(13_10)draw_rectangle(75, 35, 65 + superchargemeter, 55, 0);$(13_10)$(13_10)draw_set_colour($FFFFFFFF & $ffffff);$(13_10)var l43CB4437_0=($FFFFFFFF >> 24);$(13_10)draw_set_alpha(l43CB4437_0 / $ff);$(13_10)$(13_10)//draws the supercharge wave$(13_10)if supercharge == 100$(13_10){$(13_10)	if wavechoice == 1$(13_10)	{$(13_10)		draw_rectangle_colour(75, 35, 265, 55, $FFFF2200 & $FFFFFF, $FFFF5C49 & $FFFFFF, $FFFF9F5B & $FFFFFF, $FFFF6D44 & $FFFFFF, 0);$(13_10)		draw_rectangle_colour(75, 35, 75 + chargewave, 55, $FFFF9F5B & $FFFFFF, $FFFF6D44 & $FFFFFF, $FFFF2200 & $FFFFFF, $FFFF5C49 & $FFFFFF, 0);$(13_10)		chargewave += 5;$(13_10)	}$(13_10)	if wavechoice == -1$(13_10)	{$(13_10)		draw_rectangle_colour(75, 35, 265, 55, $FFFF9F5B & $FFFFFF, $FFFF6D44 & $FFFFFF, $FFFF2200 & $FFFFFF, $FFFF5C49 & $FFFFFF, 0);$(13_10)		draw_rectangle_colour(75, 35, 75 + chargewave, 55, $FFFF2200 & $FFFFFF, $FFFF5C49 & $FFFFFF, $FFFF9F5B & $FFFFFF, $FFFF6D44 & $FFFFFF, 0);$(13_10)		chargewave += 5;$(13_10)	}$(13_10)}    $(13_10)if chargewave > 190 $(13_10){$(13_10)	chargewave = 0;$(13_10)	wavechoice *= -1;$(13_10)}$(13_10)$(13_10)//supercharge letters$(13_10)draw_set_colour($FF000000 & $ffffff);$(13_10)var l0D4E1B77_0=($FF000000 >> 24);$(13_10)draw_set_alpha(l0D4E1B77_0 / $ff);$(13_10)$(13_10)draw_set_font(font_impact);$(13_10)$(13_10)draw_text(80, 35, string("SUPERCHARGE: ") + string(string(supercharge) + "%"));$(13_10)$(13_10)//draw super button$(13_10)if supercharge >= 100$(13_10){//$(13_10)	var superhover=0;$(13_10)	if point_in_triangle(window_mouse_get_x(),window_mouse_get_y(),872,705,990,705,931,645) or point_in_triangle(window_mouse_get_x(),window_mouse_get_y(),872,705,990,705,931,765) //checks if touching button while at 100 SC$(13_10)	{///$(13_10)		var superhover=2;$(13_10)		if mouse_check_button_pressed(mb_left) and playerturn == 1 //checks if button is clicked$(13_10)		{////$(13_10)			show_debug_message("super ability used");$(13_10)			supercharge = 0;$(13_10)			damageMutiplier = 2;$(13_10)			superused = true; $(13_10)			alarm[3] = 15;$(13_10)			audio_play_sound(soldier_super, 10, false);$(13_10)		}////$(13_10)	}///$(13_10)}//$(13_10)$(13_10)else $(13_10){ $(13_10)	var superhover=1; $(13_10)}$(13_10)$(13_10)draw_sprite(spr_superButton,superhover,870,640);$(13_10)$(13_10)//turn display$(13_10)$(13_10)draw_set_colour($FF000000 & $ffffff);$(13_10)var l6CD21A96_0=($FF000000 >> 24);$(13_10)draw_set_alpha(l6CD21A96_0 / $ff);$(13_10)$(13_10)draw_set_font(font_impact);$(13_10)$(13_10)if playerturn == 1 then draw_text_transformed(500, 20, string("Your Turn ") + "", 1.5, 1.5, 0);$(13_10)if playerturn == 0 then draw_text_transformed(500, 20, string("Their Turn ") + "", 1.5, 1.5, 0);$(13_10)$(13_10)//draw healthpack button$(13_10)if healthpacks >= -5$(13_10){$(13_10)	var healthpackhover = 0;$(13_10)	if point_in_rectangle(window_mouse_get_x(),window_mouse_get_y(),25,645,140,763) and playerturn = 1$(13_10)	{$(13_10)		var healthpackhover = 1;$(13_10)		if mouse_check_button_pressed(mb_left) and playerturn == 1 //checks if button is clicked$(13_10)		{$(13_10)			show_debug_message("healthpack used");$(13_10)			healthpacks -= 1;$(13_10)			__dnd_health += 10 //change to how much will be healed by$(13_10)			playerturn = 0;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)else $(13_10){$(13_10)	healthpackhover = 0;$(13_10)}$(13_10)draw_sprite_ext(spr_healthpackbutton,healthpackhover,20,640,.25,.25,0,c_white,1);$(13_10)"
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

//draw super button
if supercharge >= 100
{//
	var superhover=0;
	if point_in_triangle(window_mouse_get_x(),window_mouse_get_y(),872,705,990,705,931,645) or point_in_triangle(window_mouse_get_x(),window_mouse_get_y(),872,705,990,705,931,765) //checks if touching button while at 100 SC
	{///
		var superhover=2;
		if mouse_check_button_pressed(mb_left) and playerturn == 1 //checks if button is clicked
		{////
			show_debug_message("super ability used");
			supercharge = 0;
			damageMutiplier = 2;
			superused = true; 
			alarm[3] = 15;
			audio_play_sound(soldier_super, 10, false);
		}////
	}///
}//

else 
{ 
	var superhover=1; 
}

draw_sprite(spr_superButton,superhover,870,640);

//turn display

draw_set_colour($FF000000 & $ffffff);
var l6CD21A96_0=($FF000000 >> 24);
draw_set_alpha(l6CD21A96_0 / $ff);

draw_set_font(font_impact);

if playerturn == 1 then draw_text_transformed(500, 20, string("Your Turn ") + "", 1.5, 1.5, 0);
if playerturn == 0 then draw_text_transformed(500, 20, string("Their Turn ") + "", 1.5, 1.5, 0);

//draw healthpack button
if healthpacks >= -5
{
	var healthpackhover = 0;
	if point_in_rectangle(window_mouse_get_x(),window_mouse_get_y(),25,645,140,763) and playerturn = 1
	{
		var healthpackhover = 1;
		if mouse_check_button_pressed(mb_left) and playerturn == 1 //checks if button is clicked
		{
			show_debug_message("healthpack used");
			healthpacks -= 1;
			__dnd_health += 10 //change to how much will be healed by
			playerturn = 0;
		}
	}
}
else 
{
	healthpackhover = 0;
}
draw_sprite_ext(spr_healthpackbutton,healthpackhover,20,640,.25,.25,0,c_white,1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6D00F7E5
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l6D00F7E5_0=($FF000000 >> 24);
draw_set_alpha(l6D00F7E5_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0B03B4F7
/// @DnDArgument : "font" "font_impact"
/// @DnDSaveInfo : "font" "28a5811a-45bb-4253-afdb-1eadd6af6ba6"
draw_set_font(font_impact);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 31C231AA
/// @DnDArgument : "x" "35"
/// @DnDArgument : "y" "730"
/// @DnDArgument : "caption" ""Healthpacks: " + string(healthpacks)"
draw_text_transformed(35, 730, string("Healthpacks: " + string(healthpacks)) + "", 1, 1, 0);