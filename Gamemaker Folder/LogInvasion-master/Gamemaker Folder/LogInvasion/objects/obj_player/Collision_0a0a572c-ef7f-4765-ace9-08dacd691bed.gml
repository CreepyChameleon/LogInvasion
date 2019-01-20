/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49A05873
/// @DnDArgument : "code" "$(13_10)if movex = true and obj_player.x < obj_movetile.x {$(13_10)	moving = 0$(13_10)	obj_player.attacking = true $(13_10)	obj_player.image_xscale = 1;$(13_10)	obj_player.sprite_index = spr_knight_hit;$(13_10)	obj_player.image_speed = 1$(13_10)	obj_player.dir = -1   $(13_10)	obj_player.moving = 16;$(13_10)	obj_movetile.alarm[1] = 30;$(13_10)	alarm[0] = 80;$(13_10)}$(13_10)$(13_10)"

if movex = true and obj_player.x < obj_movetile.x {
	moving = 0
	obj_player.attacking = true 
	obj_player.image_xscale = 1;
	obj_player.sprite_index = spr_knight_hit;
	obj_player.image_speed = 1
	obj_player.dir = -1   
	obj_player.moving = 16;
	obj_movetile.alarm[1] = 30;
	alarm[0] = 80;
}