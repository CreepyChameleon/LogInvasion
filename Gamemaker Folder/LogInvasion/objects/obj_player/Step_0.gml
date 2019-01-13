/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4AA1ACB2
/// @DnDArgument : "code" "$(13_10)//Get move input$(13_10)key_left = keyboard_check_pressed(ord("A"));$(13_10)key_right = keyboard_check_pressed(ord("D"));$(13_10)key_space = keyboard_check_pressed(vk_space);$(13_10)key_up = keyboard_check_pressed(ord("W"));$(13_10)key_down = keyboard_check_pressed(ord("S"));$(13_10)$(13_10)//Calculate movement$(13_10)var hmove = key_right - key_left;$(13_10)var vmove = key_up - key_down;$(13_10)$(13_10)hsp = ((hmove * walksp));$(13_10)vsp = (-(vmove * walksp));$(13_10)$(13_10)$(13_10)if place_meeting(x+hsp, y, obj_barrier)$(13_10){$(13_10)	while (!place_meeting(x+sign(hsp), y, obj_barrier))$(13_10)	{$(13_10)		x = x + sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)	$(13_10)}$(13_10)$(13_10)if place_meeting(x, y+vsp, obj_barrier)$(13_10){$(13_10)	while (!place_meeting(x, y+sign(vsp), obj_barrier))$(13_10)	{$(13_10)		y += 1;$(13_10)	}$(13_10)	vsp = 0;$(13_10)	$(13_10)}$(13_10)$(13_10)x = x + hsp;$(13_10)y = y + vsp;$(13_10)$(13_10)if key_right = 1$(13_10){$(13_10)	image_xscale = 1;$(13_10)	image_yscale = 1;$(13_10)}$(13_10)$(13_10)if key_left = 1$(13_10){$(13_10)	image_xscale = -1;$(13_10)	image_yscale = 1;$(13_10)}$(13_10)"

//Get move input
key_left = keyboard_check_pressed(ord("A"));
key_right = keyboard_check_pressed(ord("D"));
key_space = keyboard_check_pressed(vk_space);
key_up = keyboard_check_pressed(ord("W"));
key_down = keyboard_check_pressed(ord("S"));

//Calculate movement
var hmove = key_right - key_left;
var vmove = key_up - key_down;

hsp = ((hmove * walksp));
vsp = (-(vmove * walksp));


if place_meeting(x+hsp, y, obj_barrier)
{
	while (!place_meeting(x+sign(hsp), y, obj_barrier))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	
}

if place_meeting(x, y+vsp, obj_barrier)
{
	while (!place_meeting(x, y+sign(vsp), obj_barrier))
	{
		y += 1;
	}
	vsp = 0;
	
}

x = x + hsp;
y = y + vsp;

if key_right = 1
{
	image_xscale = 1;
	image_yscale = 1;
}

if key_left = 1
{
	image_xscale = -1;
	image_yscale = 1;
}