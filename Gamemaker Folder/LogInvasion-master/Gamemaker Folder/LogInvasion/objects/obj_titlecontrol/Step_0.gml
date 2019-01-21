/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 6041077A
/// @DnDArgument : "key" "vk_enter"
var l6041077A_0;
l6041077A_0 = keyboard_check_pressed(vk_enter);
if (l6041077A_0)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 474B1338
	/// @DnDParent : 6041077A
	room_goto_next();
}