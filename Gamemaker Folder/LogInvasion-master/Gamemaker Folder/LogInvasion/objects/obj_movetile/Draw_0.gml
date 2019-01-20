/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 6D305120
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 2FEF547B
/// @DnDArgument : "x1" "-50"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "50"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "59"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "60"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "backcol" "$FFAAAAAA"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF04FF00"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -50, y + 50, x + 59, y + 60, __dnd_health, $FFAAAAAA, $FF0000FF & $FFFFFF, $FF04FF00 & $FFFFFF, 0, (($FFAAAAAA>>24) != 0), (($FFFFFFFF>>24) != 0));