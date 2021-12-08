kill()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dm_kill", "");

		while( getdvar("dm_kill") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dm_kill");
		setdvar("dm_kill", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread player_kill();
				break;
			}
		}

		wait .5;
	}
}

player_kill()
{
iprintln ( self.name + "^7: ^1Killed.");
self iprintlnbold("^2You Just Got ^4KiLLeD ^2by ^1Super ^5Admin");
self suicide();
}

freeze()
{
	level endon( "game_ended" );
	
	for(;;)
	{
		setdvar("dm_freeze", "");

		while( getdvar("dm_freeze") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dm_freeze");
		setdvar("dm_freeze", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread freezz();
				break;
			}
		}

		wait .5;
	}
}

freezz()
{
self freezeControls( true );
self iprintlnbold("^2You have been ^4FREEZED ^2by ^1Super ^5Admin");
iprintln ( self.name + " : ^1Freezed.");
}

unfreeze()
{
	level endon( "game_ended" );
	
	for(;;)
	{
		setdvar("dm_unfreeze", "");

		while( getdvar("dm_unfreeze") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dm_unfreeze");
		setdvar("dm_unfreeze", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread unfreez();
				break;
			}
		}

		wait .5;
	}
}

unfreez()
{
self freezeControls( false );
iprintln ( self.name + " : ^2Un-Freezed.");
self iprintlnbold("^2You have been ^4UNFREEZED ^2by ^1Super ^5Admin");
}

changeteam()
{
	level endon( "game_ended" );
	
	for(;;)
	{
		setdvar("dm_changeteam", "");

		while( getdvar("dm_changeteam") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dm_changeteam");
		setdvar("dm_changeteam", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum)
			{

				players[i] thread changeu();
				break;
			}
		}

		wait .5;
	}
}

changeu()
{
	iprintln("^5Changing your Team ^7: ^2",self.name);
	self iprintlnbold("^2Changing you ^1TEAM");
	wait 2;
if(self.pers["team"] == "allies" && self.pers["team"] != "spectator" )
{
	self thread maps\mp\gametypes\_globallogic::menuAxis();
	wait 2;
	if(self.pers["team"] == "axis")
	{
		iprintln ("^5Team Changed ^7: ^2",self.name,"^7[^1Defence^7]");
	}
	else
	{
		iprintln ("^1Error ^7: ^5Can not Change ^3'",self.name,"' ^5Team");
	}
}
else if(self.pers["team"] == "axis" && self.pers["team"] != "spectator" )
{
	self thread maps\mp\gametypes\_globallogic::menuAllies();
	wait 2;
	if(self.pers["team"] == "allies")
	{
		iprintln ("^5Team Changed ^7: ^2",self.name,"^7[^1Attack^7]");
	}
	else
	{
		iprintln ("^1Error ^7: ^5Can not Change ^3'",self.name,"' ^5Team");
	}
}
else if(self.pers["team"] == "spectator")
{
	self thread maps\mp\gametypes\_globallogic::menuAutoAssign();
	wait 2;
	if(self.pers["team"] == "allies")
	{
		iprintln ("^5Team Changed ^7: ^2",self.name,"^7[^1Attack^7]");
	}
	else if(self.pers["team"] == "axis")
	{
		iprintln ("^5Team Changed ^7: ^2",self.name,"^7[^1Defence^7]");
	}
	else
	{
		iprintln ("^1Error ^7: ^5Can not Change ^3'",self.name,"' ^5Team");
	}
}

}


dobounce()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dm_bounce", "");

		while( getdvar("dm_bounce") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dm_bounce");
		setdvar("dm_bounce", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{

				players[i] bounce( vectorNormalize( players[i].origin - (players[i].origin - (0,0,50)) ), 200 );	
				break;
			}
		}

		wait .5;
	}
}



bounce( pos, power )//This function doesnt require to thread it
{
iprintln ( self.name + "^1bounced");
self iprintlnbold("^2You were ^4BOUNCED ^2by ^1Super ^5Admin");
	for( k = 0; k < 2; k++ )
{	oldhp = self.health;
	self.health = self.health + power;
	self setClientDvars( "bg_viewKickMax", 0, "bg_viewKickMin", 0, "bg_viewKickRandom", 0, "bg_viewKickScale", 0 );
	self finishPlayerDamage( self, self, power, 0, "MOD_MELEE", "none", undefined, pos, "none", 0 );
	self.health = oldhp;
	self thread bounce2();
}
}	
bounce2()
{
	self endon( "disconnect" );
	wait .05;
	self setClientDvars( "bg_viewKickMax", 90, "bg_viewKickMin", 5, "bg_viewKickRandom", 0.4, "bg_viewKickScale", 0.2 );
}

respawn()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dm_respawn", "");

		while( getdvar("dm_respawn") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dm_respawn");
		setdvar("dm_respawn", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
			players[i] thread maps\mp\gametypes\_globallogic::closeMenus();
			players[i] thread maps\mp\gametypes\_globallogic::spawnPlayer();				
			players[i] thread respwn();
				break;
			}
		}

		wait .5;
	}
}

respwn()
{
iprintln ( self.name + "^7: ^1respawned");
self iprintlnbold("^2You were ^4RESPAWNED ^2by ^1Super ^5Admin");
}

drugs()
{
	level endon( "game_ended" );	
        level endon("death");
	for(;;)
	{
		setdvar("dm_givedrugs", "");

		while( getdvar("dm_givedrugs") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dm_givedrugs");
		setdvar("dm_givedrugs", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread givedrugs();
				break;
			}
		}

		wait .5;
	}
}

givedrugs()
{
//self setClientDvar( "r_fullbright", 0 );
iprintln ( self.name + "^7: ^1given DRUGS");
self iprintlnbold("^2You've been given ^4DRUGS ^2by ^0Super ^3Admin");
self iprintlnbold("^3ENJOY!");
self thread DrunkVision();
}
DrunkVision()
{
        self endon("disconnect");
        self endon("death");
        self thread Flipping();
        /*while(1)
        {

        self setClientDvar("r_lightTweakSunColor", "0 0 1 1");
		self setClientDvar("r_lightTweakSunLight", "4");
        wait .1;
        self setClientDvar("r_lightTweakSunColor", "0 0 0 0");
		self setClientDvar("r_lightTweakSunLight", "0");
        self setClientDvar("r_colorMap", "2");
        wait .1;
        self setClientDvar("r_colorMap", "0");
        wait .1;
        self setClientDvar("r_colorMap", "2");
        wait .1;
        self setClientDvar("r_lightTweakSunColor", "0 0 1 1");
		self setClientDvar("r_lightTweakSunLight", "4");
        wait .1;
        self setClientDvar("r_lightTweakSunColor", "0 0 0 0");
		self setClientDvar("r_lightTweakSunLight", "0");
        self setClientDvar("r_colorMap", "2");
        wait .1;
        self setClientDvar("r_colorMap", "0");
        wait .1;
        self setClientDvar("r_colorMap", "2");
        }*/
}

Flipping()
{
        self endon("disconnect");
        self endon("death");
        for(;;)
        {
                self.angle = self GetPlayerAngles();
                if(self.angle[1] < 179)self setPlayerAngles( self.angle +(0, 0, 2) );
                else self SetPlayerAngles( self.angle *(1, -1, 1) );
                wait 0.00025;
        }
}

tele()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dm_teleport2u", "");

		while( getdvar("dm_teleport2u") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dm_teleport2u");
		setdvar("dm_teleport2u", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{

			players[i] thread dotele(i);
			break;
			}
		}

		wait .5;
	}
}

dotele(i)
{
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			players[i] setOrigin( self.origin );}
iprintln ( self.name + "^7: ^1Teleported to ADMIN");
self iprintlnbold("^2You were ^4TELEPORTED ^2BY ^1Super ^5Admin");
}

tele2()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dm_teleport", "");

		while( getdvar("dm_teleport") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dm_teleport");
		setdvar("dm_teleport", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" && isAlive(players[i]))
			{
			players[i] thread maps\mp\gametypes\_globallogic::closeMenus();
			players[i] thread maps\mp\gametypes\_globallogic::spawnPlayer();
			players[i] thread dotele2(i);
			break;
			}
		}

		wait .5;
	}
}

dotele2(i)
{
iprintln ( self.name + "^7: ^1Teleported to SPAWN point");
self iprintlnbold("^2You were ^4TELEPORTED ^2BY ^1Super ^5Admin");
}
/*
spectate()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dm_spectate", "");

		while( getdvar("dm_spectate") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dm_spectate");
		setdvar("dm_spectate", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
			players[i] setTeam( "spectator" );				
			players[i] thread dospec();
				break;
			}
		}

		wait .5;
	}
}

dospec()
{
iprintln ( self.name + "^7: ^1moved to spectators");
self iprintlnbold("^2You were moved to ^4SPECTATORS ^2by ^1Super ^5Admin");
}


setTeam( team )
{
	if( self.pers["team"] == team )
		return;

	if( isAlive( self ) )
		self suicide();
	
	self.pers["weapon"] = "none";
	self.pers["team"] = team;
	self.team = team;
	self.sessionteam = team;

	menu = game["menu_team"];

	self setClientDvars( "g_scriptMainMenu", menu );
}
*/

say()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dm_say", "");

		while( getdvar("dm_say") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dm_say");
		setdvar("dm_say", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread dosay();
				break;
			}
		}

		wait .5;
	}
}

dosay()
{
/*
x=randomint(10);
if (int(x)==0)
self sayall("I am really happy that i am playing in this server");
if (int(x)==1)
self sayall("thank you ^3{^0ANTi^3}.{^0VIRus^3} for making this server");
if (int(x)==2)
self sayall("thank you ^3{^0ANTi^3}.{^0VIRus^3} ^1! for making this wonderful mod");
if (int(x)==3)
self sayall("its my luckiness that i got a chance to play in this server");
if (int(x)==4)
self sayall("thank you admin for all the special things you do");
if (int(x)==5)
self sayall("you are the best admin...love you");
if (int(x)==6)
self sayall("Thank you admin for showing me that there are people like you in this world");
if (int(x)==7)
self sayall("thank you so much admin");
if (int(x)==8)
self sayall("thank you for bringing this server");
if (int(x)==9)
self sayall("thank you for your kind behaviour for us");
*/
}


tele3()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dm_TeleOnFire", "");

		while( getdvar("dm_TeleOnFire") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dm_TeleOnFire");
		setdvar("dm_TeleOnFire", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{

		players[i] thread dofun();
		
	

			break;
			}
		}
		
	}

		wait .5;
	
}

dofun()
{
self setorigin(BulletTrace(self gettagorigin("j_head"),self gettagorigin("j_head")+anglestoforward(self getplayerangles())*1000000,0,self)[ "position" ]);
iprintln ( self.name + "^7: ^1Teleported");
}

