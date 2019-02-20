turn = argument0;

//obj_movetile.alarm[0] = 10;

turn += 1;
eninst = scr_enemyTurn(turn);


show_debug_message(obj_player.x);

if place_empty(eninst.x + 160, eninst.y) and enemymoving == 14 and enemydir == 1
{
	var enemy = obj_movetile;
	enemy.moving = enemymoving;
	enemy.dir = enemydir;
	//enemy.instancenum = list[2];
	enemy.movex = true;
	enemy.movey = false;

	exit
}
if place_empty(eninst.x - 160, eninst.y) and enemymoving == 14 and enemydir == -1
{
	var enemy = obj_movetile;
	enemy.moving = enemymoving;
	enemy.dir = enemydir;
	//enemy.instancenum = list[2];
	enemy.movex = true;
	enemy.movey = false;

	exit
}
if place_empty(eninst.x + 320, eninst.y) and enemymoving == 28 and enemydir == 1
{
	var enemy = obj_movetile;
	enemy.moving = enemymoving;
	enemy.dir = enemydir;
	//enemy.instancenum = list[2];
	enemy.movex = true;
	enemy.movey = false;

	exit
}
if place_empty(eninst.x - 320, eninst.y) and enemymoving == 28 and enemydir == -1
{
	var enemy = obj_movetile;
	enemy.moving = enemymoving;
	enemy.dir = enemydir;
	//enemy.instancenum = list[2];
	enemy.movex = true;
	enemy.movey = false;

	exit
}
show_debug_message("oops");