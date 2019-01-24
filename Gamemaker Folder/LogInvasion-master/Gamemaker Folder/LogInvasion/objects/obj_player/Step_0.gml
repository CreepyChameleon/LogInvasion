

var fpressed;
fpressed = keyboard_check_pressed(ord("F"));
if (fpressed)
{
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-10);
}

var spacepressed;
spacepressed = keyboard_check_pressed(vk_space);
if (spacepressed)
{
	supercharge += 10;
}

var enterpressed;
enterpressed = keyboard_check_pressed(vk_enter);
if (enterpressed)
{
	playerturn += 1;
	if playerturn == 2 then playerturn = 0;
	show_debug_message(playerturn);
	exit;
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
	//playerturn = 0;
}


//Left & right movement
if keyboard_check_pressed(ord("D")) and moving == 0 and playerturn = 1{
movex = true;
dir = 1;
moving = 60;
image_xscale = 1;
}
if keyboard_check_pressed(ord("A")) and moving == 0 and playerturn = 1{
movex = true;
dir = -1;
moving = 60;
image_xscale = -1;
}
if moving > 0 and movex = true{
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
if keyboard_check_pressed(ord("W")) and moving == 0 and playerturn == 1{
movey = true;
dir = 1;
moving = 60;
}
if keyboard_check_pressed(ord("S")) and moving == 0 and playerturn == 1{
movey = true;
dir = -1;
moving = 60;
}
if moving > 0 and movey = true{
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
//Glowing movement tiles
/*if soldierTurn = true*/
if place_empty(obj_player.x+70, obj_player.y-45) and moving == 0 and playerturn == 1
{
	instance_create_layer(obj_player.x+70,obj_player.y-45,"instance_player",obj_move);
	instance_create_layer(obj_player.x+190,obj_player.y-45,"instance_player",obj_move);
	instance_create_layer(obj_player.x-170,obj_player.y-45,"instance_player",obj_move);
	instance_create_layer(obj_player.x-290,obj_player.y-45,"instance_player",obj_move);
	instance_create_layer(obj_player.x-50,obj_player.y+80,"instance_player",obj_move);
	instance_create_layer(obj_player.x-50,obj_player.y+200,"instance_player",obj_move);
	instance_create_layer(obj_player.x-50,obj_player.y-165,"instance_player",obj_move);
	instance_create_layer(obj_player.x-50,obj_player.y-285,"instance_player",obj_move);
}
if obj_player.movex = true or obj_player.movey = true or playerturn == 0
{
	instance_destroy(obj_move);
}
if obj_player.superused = true and playerturn == 1{
instance_create_layer(obj_player.x+310,obj_player.y-45,"instance_player",obj_supermove);
instance_create_layer(obj_player.x-410,obj_player.y-45,"instance_player",obj_supermove);
instance_create_layer(obj_player.x-50,obj_player.y+320,"instance_player",obj_supermove);
instance_create_layer(obj_player.x-50,obj_player.y-405,"instance_player",obj_supermove);
}
if obj_player.movex = true or obj_player.movey = true or playerturn == 0
{
	instance_destroy(obj_supermove);
}