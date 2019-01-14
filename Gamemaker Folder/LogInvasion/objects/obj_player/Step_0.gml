/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4AA1ACB2
/// @DnDDisabled : 1
/// @DnDArgument : "code" "$(13_10)//Get move input$(13_10)key_left = keyboard_check_pressed(ord("A"));$(13_10)key_right = keyboard_check_pressed(ord("D"));$(13_10)key_space = keyboard_check_pressed(vk_space);$(13_10)key_up = keyboard_check_pressed(ord("W"));$(13_10)key_down = keyboard_check_pressed(ord("S"));$(13_10)$(13_10)//Calculate movement$(13_10)var hmove = key_right - key_left;$(13_10)var vmove = key_up - key_down;$(13_10)$(13_10)hsp = ((hmove * walksp));$(13_10)vsp = (-(vmove * walksp));$(13_10)$(13_10)$(13_10)if place_meeting(x+hsp, y, obj_barrier)$(13_10){$(13_10)	while (!place_meeting(x+sign(hsp), y, obj_barrier))$(13_10)	{$(13_10)		x = x + sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)	$(13_10)}$(13_10)$(13_10)if place_meeting(x, y+vsp, obj_barrier)$(13_10){$(13_10)	while (!place_meeting(x, y+sign(vsp), obj_barrier))$(13_10)	{$(13_10)		y += 1;$(13_10)	}$(13_10)	vsp = 0;$(13_10)	$(13_10)}$(13_10)$(13_10)x = x + hsp;$(13_10)y = y + vsp;$(13_10)$(13_10)if key_right = 1$(13_10){$(13_10)	image_xscale = 1;$(13_10)	image_yscale = 1;$(13_10)}$(13_10)$(13_10)if key_left = 1$(13_10){$(13_10)	image_xscale = -1;$(13_10)	image_yscale = 1;$(13_10)	health = 100;$(13_10)}$(13_10)$(13_10)show_debug_message(supercharge)$(13_10)show_debug_message(superchargemeter)"


/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 7AFDFA57
/// @DnDArgument : "key" "ord("F")"
var l7AFDFA57_0;
l7AFDFA57_0 = keyboard_check_pressed(ord("F"));
if (l7AFDFA57_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 5A8BBB7D
	/// @DnDParent : 7AFDFA57
	/// @DnDArgument : "health" "-10"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-10);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 451D4E85
var l451D4E85_0;
l451D4E85_0 = keyboard_check_pressed(vk_space);
if (l451D4E85_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03BF70C4
	/// @DnDParent : 451D4E85
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "supercharge"
	supercharge += 10;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3DCD1C79
/// @DnDArgument : "expr" "supercharge * 2"
/// @DnDArgument : "var" "superchargemeter"
superchargemeter = supercharge * 2;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 133F5763
/// @DnDArgument : "code" "if(supercharge == 0)$(13_10){$(13_10)	superchargemeter = 10;$(13_10)}$(13_10)$(13_10)if(supercharge == 110)$(13_10){$(13_10)	supercharge = 100;$(13_10)}"
if(supercharge == 0)
{
	superchargemeter = 10;
}

if(supercharge == 110)
{
	supercharge = 100;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 55B89EA4
/// @DnDArgument : "code" "//Left & right$(13_10)if keyboard_check_pressed(ord("D")) {$(13_10)movex = true;$(13_10)dir = 1;$(13_10)moving = 60;$(13_10)image_xscale = 1;$(13_10)}$(13_10)if keyboard_check_pressed(ord("A")) {$(13_10)movex = true;$(13_10)dir = -1;$(13_10)moving = 60;$(13_10)image_xscale = -1;$(13_10)}$(13_10)$(13_10)if moving > 0 and movex = true {$(13_10)moving -= 1$(13_10)x+= 2*dir$(13_10)image_speed = 1;$(13_10)}$(13_10)$(13_10)$(13_10)if moving <= 0 {$(13_10)movex = false;$(13_10)movey = false;$(13_10)image_speed = 0;$(13_10)image_index = 0;$(13_10)}$(13_10)//Up and down$(13_10)if keyboard_check_pressed(ord("W")) {$(13_10)movey = true;$(13_10)dir = 1;$(13_10)moving = 60;$(13_10)}$(13_10)if keyboard_check_pressed(ord("S")) {$(13_10)movey = true;$(13_10)dir = -1;$(13_10)moving = 60;$(13_10)}$(13_10)$(13_10)if moving > 0 and movey = true {$(13_10)moving -= 1$(13_10)y-= 2*dir$(13_10)image_speed = 1;$(13_10)}$(13_10)$(13_10)$(13_10)if moving <= 0 {$(13_10)movex = false;$(13_10)movey = false;$(13_10)image_speed = 0;$(13_10)image_index = 0;$(13_10)}"
//Left & right
if keyboard_check_pressed(ord("D")) {
movex = true;
dir = 1;
moving = 60;
image_xscale = 1;
}
if keyboard_check_pressed(ord("A")) {
movex = true;
dir = -1;
moving = 60;
image_xscale = -1;
}

if moving > 0 and movex = true {
moving -= 1
x+= 2*dir
image_speed = 1;
}


if moving <= 0 {
movex = false;
movey = false;
image_speed = 0;
image_index = 0;
}
//Up and down
if keyboard_check_pressed(ord("W")) {
movey = true;
dir = 1;
moving = 60;
}
if keyboard_check_pressed(ord("S")) {
movey = true;
dir = -1;
moving = 60;
}

if moving > 0 and movey = true {
moving -= 1
y-= 2*dir
image_speed = 1;
}


if moving <= 0 {
movex = false;
movey = false;
image_speed = 0;
image_index = 0;
}