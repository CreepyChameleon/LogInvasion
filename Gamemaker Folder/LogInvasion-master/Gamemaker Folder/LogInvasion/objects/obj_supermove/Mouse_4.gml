moveclicked = true
if -60 < (obj_player.x - x) and (obj_player.x - x) < 60 {
	obj_player.movex = false;
}
else {
if obj_player.x < x and obj_player.moving = 0 {
	obj_player.movex = true;
	obj_player.dir = round((x - obj_player.x)/120)   
	obj_player.moving = 64 + 16;
	obj_player.image_xscale = 1;
	 
}
  if obj_player.x > x and obj_player.moving = 0 {
	obj_player.movex = true;
	obj_player.dir = round(-(obj_player.x - x)/120)   
	obj_player.moving = 64 + 16;
	obj_player.image_xscale = -1;
}
	
}

 

if obj_player.y > y and obj_player.moving == 0 and obj_player.movex = false  {
	obj_player.movey = true;
	obj_player.dir = round((obj_player.y - y)/165) + 1;  
	obj_player.moving = 64 + 16;

}
  if obj_player.y < y and obj_player.moving == 0 and obj_player.movex = false {
	obj_player.movey = true;
	obj_player.dir = round(-(y - obj_player.y)/85) + 1;  
	obj_player.moving = 64 + 16;

}