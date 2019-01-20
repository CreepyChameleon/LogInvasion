/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B33B046
/// @DnDArgument : "code" "hsp = 0;$(13_10)vsp = 0;$(13_10)walksp = 120;$(13_10)go = true;$(13_10)movex = false;$(13_10)movey = false;$(13_10)moving = 0;$(13_10)attacking = false;$(13_10)hit = false;$(13_10)$(13_10)supercharge = 0;$(13_10)superchargemeter = 0;$(13_10)chargewave = 0;$(13_10)wavechoice = 1;$(13_10)$(13_10)//window_set_fullscreen(true);"
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
chargewave = 0;
wavechoice = 1;

//window_set_fullscreen(true);

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 49DF4ADE
/// @DnDArgument : "health" "100"

__dnd_health = real(100);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2A8AC801
/// @DnDArgument : "font" "font_corbel"
/// @DnDSaveInfo : "font" "900878cb-a1f1-4ae0-99b3-b66ec6c608f7"
draw_set_font(font_corbel);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1D22F97F
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l1D22F97F_0=($FF000000 >> 24);
draw_set_alpha(l1D22F97F_0 / $ff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4DC5CC61
/// @DnDArgument : "var" "moveRight"
moveRight = 0;