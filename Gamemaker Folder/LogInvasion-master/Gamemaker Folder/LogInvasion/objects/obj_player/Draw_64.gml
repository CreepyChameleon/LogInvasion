/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 0BC17246
/// @DnDArgument : "x1" "75"
/// @DnDArgument : "y1" "5"
/// @DnDArgument : "x2" "265"
/// @DnDArgument : "y2" "25"
/// @DnDArgument : "backcol" "$FFAAAAAA"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF04FF00"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(75, 5, 265, 25, __dnd_health, $FFAAAAAA, $FF0000FF & $FFFFFF, $FF04FF00 & $FFFFFF, 0, (($FFAAAAAA>>24) != 0), (($FFFFFFFF>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0E2E241D
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l0E2E241D_0=($FF000000 >> 24);
draw_set_alpha(l0E2E241D_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 76849FBE
/// @DnDArgument : "x" "80"
/// @DnDArgument : "y" "5"
/// @DnDArgument : "caption" ""Health: ""
/// @DnDArgument : "var" "__dnd_health"
draw_text(80, 5, string("Health: ") + string(__dnd_health));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 425B2888
/// @DnDArgument : "color" "$FFAAAAAA"
draw_set_colour($FFAAAAAA & $ffffff);
var l425B2888_0=($FFAAAAAA >> 24);
draw_set_alpha(l425B2888_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 2E437162
/// @DnDArgument : "x1" "75"
/// @DnDArgument : "y1" "35"
/// @DnDArgument : "x2" "265"
/// @DnDArgument : "y2" "55"
/// @DnDArgument : "fill" "1"
draw_rectangle(75, 35, 265, 55, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 55A09E89
/// @DnDArgument : "color" "$FFFFAC1D"
draw_set_colour($FFFFAC1D & $ffffff);
var l55A09E89_0=($FFFFAC1D >> 24);
draw_set_alpha(l55A09E89_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 4C7D7169
/// @DnDArgument : "x1" "75"
/// @DnDArgument : "y1" "35"
/// @DnDArgument : "x2" "65 + superchargemeter"
/// @DnDArgument : "y2" "55"
/// @DnDArgument : "fill" "1"
draw_rectangle(75, 35, 65 + superchargemeter, 55, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0D4E1B77
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l0D4E1B77_0=($FF000000 >> 24);
draw_set_alpha(l0D4E1B77_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 3DD836B3
/// @DnDArgument : "font" "font_impact"
/// @DnDSaveInfo : "font" "28a5811a-45bb-4253-afdb-1eadd6af6ba6"
draw_set_font(font_impact);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6CA09EF3
/// @DnDArgument : "x" "80"
/// @DnDArgument : "y" "35"
/// @DnDArgument : "caption" ""SUPERCHARGE: ""
/// @DnDArgument : "var" "string(supercharge) + "%""
draw_text(80, 35, string("SUPERCHARGE: ") + string(string(supercharge) + "%"));

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.1
/// @DnDHash : 66D8647F
/// @DnDArgument : "layer" ""instance_HUD""
system = part_system_create_layer("instance_HUD", 0);