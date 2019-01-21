/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0AFFEAF7
/// @DnDArgument : "code" "if obj_player.x < obj_movetile.x and obj_player.moving = 0 {$(13_10)	obj_player.movex = true;$(13_10)	obj_player.dir = round((obj_movetile.x - obj_player.x)/120)   $(13_10)	obj_player.moving = 60;$(13_10)	obj_player.image_xscale = 1;$(13_10)	 $(13_10)}$(13_10)  if obj_player.x > obj_movetile.x and obj_player.moving = 0 {$(13_10)	obj_player.movex = true;$(13_10)	obj_player.dir = round(-(obj_player.x - obj_movetile.x)/120)   $(13_10)	obj_player.moving = 60;$(13_10)	obj_player.image_xscale = -1;$(13_10)}"
if obj_player.x < obj_movetile.x and obj_player.moving = 0 {
	obj_player.movex = true;
	obj_player.dir = round((obj_movetile.x - obj_player.x)/120)   
	obj_player.moving = 60;
	obj_player.image_xscale = 1;
	 
}
  if obj_player.x > obj_movetile.x and obj_player.moving = 0 {
	obj_player.movex = true;
	obj_player.dir = round(-(obj_player.x - obj_movetile.x)/120)   
	obj_player.moving = 60;
	obj_player.image_xscale = -1;
}