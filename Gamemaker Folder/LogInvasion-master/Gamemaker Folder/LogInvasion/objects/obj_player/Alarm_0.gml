/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68C814C4
/// @DnDArgument : "code" "if movex = true and obj_player.x < instance.x {$(13_10)/*obj_player.sprite_index = spr_knight;$(13_10)obj_player.image_speed = 1;$(13_10)obj_player.image_xscale = 1;$(13_10)obj_player.dir = -1   $(13_10)obj_player.moving = 27; $(13_10)obj_player.attacking = false$(13_10)*/$(13_10)alarm[4] = 70;$(13_10)}$(13_10)if movex = true and instance.x < obj_player.x {$(13_10)/*obj_player.sprite_index = spr_knight;$(13_10)obj_player.image_speed = 1;$(13_10)obj_player.image_xscale = -1;$(13_10)obj_player.dir = 1   $(13_10)obj_player.moving = 27; $(13_10)obj_player.attacking = false$(13_10)*/$(13_10)alarm[5] = 70;$(13_10)}"
if movex = true and obj_player.x < instance.x {
/*obj_player.sprite_index = spr_knight;
obj_player.image_speed = 1;
obj_player.image_xscale = 1;
obj_player.dir = -1   
obj_player.moving = 27; 
obj_player.attacking = false
*/
alarm[4] = 70;
}
if movex = true and instance.x < obj_player.x {
/*obj_player.sprite_index = spr_knight;
obj_player.image_speed = 1;
obj_player.image_xscale = -1;
obj_player.dir = 1   
obj_player.moving = 27; 
obj_player.attacking = false
*/
alarm[5] = 70;
}/**/