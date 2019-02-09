turn = argument0;

//obj_movetile.alarm[0] = 10;

turn += 1;
scr_enemyTurn(turn);
var enemy = obj_movetile;
enemy.moving = enemymoving;
enemy.dir = enemydir;
//enemy.instancenum = list[2];
enemy.movex = true;
enemy.movey = false;

exit