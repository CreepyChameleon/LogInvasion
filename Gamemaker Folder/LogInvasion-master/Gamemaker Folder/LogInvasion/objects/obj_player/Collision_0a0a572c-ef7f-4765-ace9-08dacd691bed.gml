/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49A05873
/// @DnDArgument : "code" "instance = other.id$(13_10)if movex = true and obj_player.x < instance.x {$(13_10)	moving = 0$(13_10)	obj_player.attacking = true $(13_10)	obj_player.image_xscale = 1;$(13_10)	obj_player.sprite_index = spr_knight_hit;$(13_10)	obj_player.image_speed = 1$(13_10)	obj_player.dir = -1   $(13_10)	obj_player.moving = 16;$(13_10)	alarm[1] = 50;$(13_10)	alarm[4] = 70;$(13_10)	alarm[2] = 15;$(13_10)$(13_10)}$(13_10)if movex = true and instance.x < obj_player.x {$(13_10)	moving = 0$(13_10)	obj_player.attacking = true $(13_10)	obj_player.image_xscale = -1;$(13_10)	obj_player.sprite_index = spr_knight_hit;$(13_10)	obj_player.image_speed = 1$(13_10)	obj_player.dir = 1   $(13_10)	obj_player.moving = 16;$(13_10)	alarm[1] = 50;$(13_10)	alarm[2] = 15;$(13_10)	alarm[5] = 70;$(13_10)$(13_10)}$(13_10)$(13_10)"
instance = other.id
if movex = true and obj_player.x < instance.x {
	moving = 0
	obj_player.attacking = true 
	obj_player.image_xscale = 1;
	obj_player.sprite_index = spr_knight_hit;
	obj_player.image_speed = 1
	obj_player.dir = -1   
	obj_player.moving = 16;
	alarm[1] = 50;
	alarm[4] = 70;
	alarm[2] = 15;

}
if movex = true and instance.x < obj_player.x {
	moving = 0
	obj_player.attacking = true 
	obj_player.image_xscale = -1;
	obj_player.sprite_index = spr_knight_hit;
	obj_player.image_speed = 1
	obj_player.dir = 1   
	obj_player.moving = 16;
	alarm[1] = 50;
	alarm[2] = 15;
	alarm[5] = 70;

}