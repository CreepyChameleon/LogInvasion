turn = argument0;

turn += 1;
list = scr_enemyTurn(turn);

var enemy = obj_movetile;
enemy.moving = enemymoving;
enemy.dir = enemydir;
//enemy.instancenum = list[2];
enemy.movex = true;
enemy.movey = false;
exit