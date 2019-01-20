/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 304C7669
/// @DnDArgument : "var" "obj_player.hit"
/// @DnDArgument : "value" "true"
if(obj_player.hit == true)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 481C3BA0
	/// @DnDParent : 304C7669
	/// @DnDArgument : "health" "-10"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-10);
}