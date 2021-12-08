#include common_scripts\utility;
#include maps\mp\gametypes\_hud_util;
#include maps\mp\gametypes\_hud_message;

gunGame()
{
wait 2;
iPrintlnBold("^1GUN ^5GAME ^2mode Activated!");
iPrintln("^1GUN ^5GAME ^2is brought to you by: ^0[^8P^0]ro [^8V^0]alak ^1!");
self iPrintlnBold("^2Please Ensure To Fuck EveryOne");
for ( t=0; t < level.players.size; t++ )
{
players = level.players[t];
players notify ("gungame_start");
players thread gunhintMessage("^2Starting ^1GUN ^5GAME^2!");
players thread initGuns();
players thread doGun();
setDvar( "cg_objectiveText", "^1GUN ^5GAME^2: The First One To 20 Kills Wins! ");
setDvar("player_sustainAmmo", 0);
//setDvar("g_gametype", "dm");
//setDvar("scr_player_maxhealth", 100);
setDvar( "scr_game_perks", "0" );
setDvar("player_meleerange", 0);
//setDvar("scr_dm_scorelimit", ((self.gunList.size - 1) * self.upgscore) + (self.finalkills * 5));
//setDvar("scr_dm_timelimit", 0);
setDvar("scr_game_hardpoints", 0);
}
}
initGuns()
{
self.inverse = false;
self.upgscore = 5;
self.finalkills = 1;
self.gunList = [];
self.gunList[0] = createGun("usp_mp", false);
self.gunList[1] = createGun("colt45_mp", false);
self.gunList[2] = createGun("beretta_mp", false);
self.gunList[3] = createGun("deserteaglegold_mp", false);
self.gunList[4] = createGun("winchester1200_mp", false);
self.gunList[5] = createGun("m1014_mp", false);
self.gunList[6] = createGun("skorpion_mp", false);
self.gunList[7] = createGun("mp5_mp", false);
self.gunList[8] = createGun("mp44_mp", false);
self.gunList[9] = createGun("p90_mp", false);
self.gunList[10] = createGun("ak74u_mp", false);
self.gunList[11] = createGun("g3_mp", false);
self.gunList[12] = createGun("ak47_mp", false);
self.gunList[13] = createGun("m16_mp", false);
self.gunList[14] = createGun("m14_mp", false);
self.gunList[15] = createGun("m40a3_mp", false);
self.gunList[16] = createGun("m21_mp", false);
self.gunList[17] = createGun("saw_mp", false);
self.gunList[18] = createGun("rpd_mp", false);
self.gunList[19] = createGun("rpg_mp", true);
}
createGun(gunName, laserSight)
{
gun = spawnstruct();
gun.name = gunName;
gun.laser = laserSight;
return gun;
}
doGun()
{
self endon("disconnect");
if(self.inverse) self.curgun = self.gunList.size - 1;
else self.curgun = 0;
curscore = 0;
done = false;
while(true){
if(self.inverse && self.curgun <= 0) done = true;
if(!self.inverse && self.curgun >= (self.gunList.size - 1)) done = true;
if(!done){
if(self.inverse && (self.score - curscore >= self.upgscore)){
self.curgun--;
self thread gunhintMessage("^1Weapon ^2Downgraded!");
curscore = self.score;
}else if((self.score - curscore >= self.upgscore)){
self.curgun++;
self thread gunhintMessage("^1Weapon ^2Upgraded ^7- ^3Level "+self.curgun);
curscore = self.score;
}
}
while(self getCurrentWeapon() != self.gunList[self.curgun].name){
if(self.gunList[self.curgun].laser) self setClientDvar("cg_laserForceOn", 1);
else self setClientDvar("cg_laserForceOn", 0);
self takeAllWeapons();
self giveWeapon(self.gunList[self.curgun].name);
self switchToWeapon(self.gunList[self.curgun].name);
wait .2;
}
self giveMaxAmmo(self.gunList[self.curgun].name);
wait .2;
}
}
gunhintMessage( hintText )
{
notifyData = spawnstruct();
notifyData.notifyText = hintText;
notifyData.glowColor = (1, 1, 0);
self thread maps\mp\gametypes\_hud_message::notifyMessage( notifyData );
}
