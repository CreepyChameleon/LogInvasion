//need to eventually compare instance position to player position, 
turn = argument0;
randomize();

eninst = instance_find(obj_movetile,(turn-1));

if eninst.x > obj_player.x //enemy to the right of the player
{
	if (eninst.x - obj_player.x) >= 120 //if 2 tiles to right
	{
		var randmove;
		randmove = choose(1,2);
		moving = 10 * randmove;
		var randdir;
		randdir = choose(-1,1);
		dir = randdir;
		obj_movetile.enemyturn += 1;
		return [moving, dir, eninst];
	}
	if (eninst.x - obj_player.x) >= 20
	{
		moving = 10;
		var randdir;
		randdir = choose(-1,1);
		dir = randdir;
		return [moving, dir, eninst];
	}
}

if eninst.x < obj_player.x //enemy to the left of the player
{
	dir = 1;
	moving = 10;
	return [moving, dir, instance];
}

//instance_position( x, y, obj );