/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49A05873
/// @DnDArgument : "code" "if movex = true and x < obj_movetile.x {$(13_10)	moving = 0$(13_10)	obj_player.dir = -1   $(13_10)	obj_player.moving = 20;$(13_10)	obj_player.image_xscale = 1;$(13_10)	obj_player.sprite_index = spr_knight_hit;$(13_10)$(13_10)}$(13_10)	$(13_10)	obj_player.dir = -1   $(13_10)	obj_player.moving = 40;$(13_10)	obj_player.image_xscale = 1;$(13_10)	obj_player.sprite_index = spr_knight;$(13_10)"
if movex = true and x < obj_movetile.x {
	moving = 0
	obj_player.dir = -1   
	obj_player.moving = 20;
	obj_player.image_xscale = 1;
	obj_player.sprite_index = spr_knight_hit;

}
	
	obj_player.dir = -1   
	obj_player.moving = 40;
	obj_player.image_xscale = 1;
	obj_player.sprite_index = spr_knight;