/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3B55FDE0
/// @DnDArgument : "code" "$(13_10)$(13_10)if -60 < (obj_player.x - x) and (obj_player.x - x) < 60 {$(13_10)	obj_player.movex = false;$(13_10)}$(13_10)else {$(13_10)if obj_player.x < x and obj_player.moving = 0 {$(13_10)	obj_player.movex = true;$(13_10)	obj_player.dir = round((x - obj_player.x)/120)   $(13_10)	obj_player.moving = 60;$(13_10)	obj_player.image_xscale = 1;$(13_10)	 $(13_10)}$(13_10)  if obj_player.x > x and obj_player.moving = 0 {$(13_10)	obj_player.movex = true;$(13_10)	obj_player.dir = round(-(obj_player.x - x)/120)   $(13_10)	obj_player.moving = 60;$(13_10)	obj_player.image_xscale = -1;$(13_10)}$(13_10)	$(13_10)}$(13_10)$(13_10) $(13_10)$(13_10)if obj_player.y > y and obj_player.moving == 0 and obj_player.movex = false  {$(13_10)	obj_player.movey = true;$(13_10)	obj_player.dir = round((obj_player.y - y)/165);  $(13_10)	obj_player.moving = 60;$(13_10)$(13_10)}$(13_10)  if obj_player.y < y and obj_player.moving == 0 and obj_player.movex = false {$(13_10)	obj_player.movey = true;$(13_10)	obj_player.dir = round(-(y - obj_player.y)/85);  $(13_10)	obj_player.moving = 60;$(13_10)$(13_10)}$(13_10)	"


if -60 < (obj_player.x - x) and (obj_player.x - x) < 60 {
	obj_player.movex = false;
}
else {
if obj_player.x < x and obj_player.moving = 0 {
	obj_player.movex = true;
	obj_player.dir = round((x - obj_player.x)/120)   
	obj_player.moving = 60;
	obj_player.image_xscale = 1;
	 
}
  if obj_player.x > x and obj_player.moving = 0 {
	obj_player.movex = true;
	obj_player.dir = round(-(obj_player.x - x)/120)   
	obj_player.moving = 60;
	obj_player.image_xscale = -1;
}
	
}

 

if obj_player.y > y and obj_player.moving == 0 and obj_player.movex = false  {
	obj_player.movey = true;
	obj_player.dir = round((obj_player.y - y)/165);  
	obj_player.moving = 60;

}
  if obj_player.y < y and obj_player.moving == 0 and obj_player.movex = false {
	obj_player.movey = true;
	obj_player.dir = round(-(y - obj_player.y)/85);  
	obj_player.moving = 60;

}