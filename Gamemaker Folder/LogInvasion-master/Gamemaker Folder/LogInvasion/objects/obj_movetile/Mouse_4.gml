/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66F3EE13
/// @DnDArgument : "code" "if obj_player.moving = 0 {$(13_10)	obj_player.go = true$(13_10)}$(13_10)$(13_10)if -50 < (obj_player.x - x) and (obj_player.x - x) < 50 {$(13_10)	obj_player.movex = false;$(13_10)	obj_player.moving = 0;$(13_10)}$(13_10)else {$(13_10)if obj_player.x < x and obj_player.moving = 0 {$(13_10)	obj_player.movex = true;$(13_10)	obj_player.dir = round((x - obj_player.x)/120)   $(13_10)	obj_player.moving = 60;$(13_10)	obj_player.image_xscale = 1;$(13_10)	 $(13_10)}$(13_10)  if obj_player.x > x and obj_player.moving = 0 {$(13_10)	obj_player.movex = true;$(13_10)	obj_player.dir = round(-(obj_player.x - x)/120)   $(13_10)	obj_player.moving = 60;$(13_10)	obj_player.image_xscale = -1;$(13_10)}$(13_10)	$(13_10)}$(13_10)$(13_10)if (obj_player.x - x) < 50 and -50 < (obj_player.x - x) {$(13_10)$(13_10)if obj_player.y > y and obj_player.go = true {$(13_10)	obj_player.movey = true;$(13_10)	obj_player.dir = 1;  $(13_10)	obj_player.moving = 60;$(13_10)$(13_10)}$(13_10)  if obj_player.y < y and obj_player.go = true {$(13_10)	obj_player.movey = true;$(13_10)	obj_player.dir = -1;  $(13_10)	obj_player.moving = 60;$(13_10)$(13_10)}$(13_10)	$(13_10)}$(13_10)$(13_10)else { $(13_10)	obj_player.movey = false;$(13_10)}$(13_10)"
if obj_player.moving = 0 {
	obj_player.go = true
}

if -50 < (obj_player.x - x) and (obj_player.x - x) < 50 {
	obj_player.movex = false;
	obj_player.moving = 0;
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

if (obj_player.x - x) < 50 and -50 < (obj_player.x - x) {

if obj_player.y > y and obj_player.go = true {
	obj_player.movey = true;
	obj_player.dir = 1;  
	obj_player.moving = 60;

}
  if obj_player.y < y and obj_player.go = true {
	obj_player.movey = true;
	obj_player.dir = -1;  
	obj_player.moving = 60;

}
	
}

else { 
	obj_player.movey = false;
}