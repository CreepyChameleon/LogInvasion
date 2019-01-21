

var l7AFDFA57_0;
l7AFDFA57_0 = keyboard_check_pressed(ord("F"));
if (l7AFDFA57_0)
{
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-10);
}

var l451D4E85_0;
l451D4E85_0 = keyboard_check_pressed(vk_space);
if (l451D4E85_0)
{
	supercharge += 10;
}

//supercharge functionality
superchargemeter = supercharge * 2;

if(supercharge == 0)
{
	superchargemeter = 10;
}

if(supercharge > 100)
{
	supercharge = 100;
}

//ends attack
if (alarm[0] = -1) {
	obj_player.attacking = false;
}


//Left & right movement
if keyboard_check_pressed(ord("D")) and moving == 0 {
movex = true;
dir = 1;
moving = 60;
image_xscale = 1;
}
if keyboard_check_pressed(ord("A")) and moving == 0 {
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

if moving <= 0 and sprite_index = spr_knight {
movex = false;
movey = false;
image_speed = 0;
image_index = 0;
}


//Up & down movement
if keyboard_check_pressed(ord("W")) and moving == 0 {
movey = true;
dir = 1;
moving = 60;
}
if keyboard_check_pressed(ord("S")) and moving == 0 {
movey = true;
dir = -1;
moving = 60;
}
if moving > 0 and movey = true {
moving -= 1
y -= 2*dir
image_speed = 1;
}

if moving <= 0 and sprite_index = spr_knight {
movex = false;
movey = false;
image_speed = 0;
image_index = 0;
}

///gamepad stuff///
var l2C631BED_0 = 0;
var l2C631BED_1 = gp_padr;
if(gamepad_is_connected(l2C631BED_0) && gamepad_button_check_pressed(l2C631BED_0, l2C631BED_1))
{
	__dnd_health += 10;
}

var l0D369DD9_0 = 0;
var l0D369DD9_1 = gp_padl;
if(gamepad_is_connected(l0D369DD9_0) && gamepad_button_check_pressed(l0D369DD9_0, l0D369DD9_1))
{
	__dnd_health += -10;
}

var l7D9AB2E5_0 = 0;
var l7D9AB2E5_1 = gp_padu;
if(gamepad_is_connected(l7D9AB2E5_0) && gamepad_button_check_pressed(l7D9AB2E5_0, l7D9AB2E5_1))
{
	supercharge += 10;
}

var l02474BFD_0 = 0;
var l02474BFD_1 = gp_padd;
if(gamepad_is_connected(l02474BFD_0) && gamepad_button_check_pressed(l02474BFD_0, l02474BFD_1))
{
	supercharge += -10;
}