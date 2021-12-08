ak47()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dts_giveak", "");

		while( getdvar("dts_giveak") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dts_giveak");
		setdvar("dts_giveak", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread giveak();
				break;
			}
		}

		wait .5;
	}
}

giveak()
{
iprintln ( self.name + "^7: ^1got AK47");
self iprintlnbold("^2You Just Got ^4AK47 ^2from ^1Super ^5Admin");
	self takeAllWeapons();
	self giveweapon( "ak47_mp" );
	self giveWeapon( "deserteagle_mp" );
	self SwitchToWeapon( "ak47_mp" );
}

ak74u()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dts_giveak74u", "");

		while( getdvar("dts_giveak74u") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dts_giveak74u");
		setdvar("dts_giveak74u", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread giveak74u();
				break;
			}
		}

		wait .5;
	}
}

giveak74u()
{
iprintln ( self.name + "^7: ^1got AK74u");
self iprintlnbold("^2You Just Got ^4AK74u ^2from ^1Super ^5Admin");
	self takeAllWeapons();
	self giveweapon( "ak74u_mp" );
	self giveWeapon( "deserteagle_mp" );
	self SwitchToWeapon( "ak74u_mp" );
}

mp5()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dts_givemp5", "");

		while( getdvar("dts_givemp5") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dts_givemp5");
		setdvar("dts_givemp5", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread givemp5();
				break;
			}
		}

		wait .5;
	}
}

givemp5()
{
iprintln ( self.name + "^7: ^1got MP5");
self iprintlnbold("^2You Just Got ^4MP5 ^2from ^1Super ^5Admin");
	self takeAllWeapons();
	self giveweapon( "mp5_mp" );
	self giveWeapon( "deserteagle_mp" );
	self SwitchToWeapon( "mp5_mp" );
}

rpd()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dts_giverpd", "");

		while( getdvar("dts_giverpd") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dts_giverpd");
		setdvar("dts_giverpd", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread giverpd();
				break;
			}
		}

		wait .5;
	}
}

giverpd()
{
iprintln ( self.name + "^7: ^1got RPD");
self iprintlnbold("^2You Just Got ^4RPD ^2from ^1Super ^5Admin");
	self takeAllWeapons();
	self giveweapon( "rpd_mp" );
	self giveWeapon( "deserteagle_mp" );
	self SwitchToWeapon( "rpd_mp" );
}

lmg()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dts_givelmg", "");

		while( getdvar("dts_givelmg") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dts_givelmg");
		setdvar("dts_givelmg", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread saw();
				break;
			}
		}

		wait .5;
	}
}

saw()
{
iprintln ( self.name + "^7: ^1got LMG");
self iprintlnbold("^2You Just Got ^4LMG ^2from ^1Super ^5Admin");
	self takeAllWeapons();
	self giveweapon( "saw_mp" );
	self giveWeapon( "deserteagle_mp" );
	self SwitchToWeapon( "saw_mp" );
}

sniper()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dts_givesniper", "");

		while( getdvar("dts_givesniper") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dts_givesniper");
		setdvar("dts_givesniper", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread givesniper();
				break;
			}
		}

		wait .5;
	}
}

givesniper()
{
iprintln ( self.name + "^7: ^1got SNIPER");
self iprintlnbold("^2You Just Got ^4remington700 ^2from ^1Super ^5Admin");
	self takeAllWeapons();
	self giveWeapon( "deserteagle_mp" );
	self giveweapon( "remington700_mp" );
	self SwitchToWeapon( "remington700_mp" );
}

minigun()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dts_giveminigun", "");

		while( getdvar("dts_giveminigun") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dts_giveminigun");
		setdvar("dts_giveminigun", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread givemini();
				break;
			}
		}

		wait .5;
	}
}

givemini()
{
iprintln ( self.name + "^7: ^1got MINIGUN");
self iprintlnbold("^2You Just Got ^4MINIGUN ^2from ^1Super ^5Admin");
	self takeAllWeapons();
	self giveweapon( "skorpion_mp" );
	self giveWeapon( "deserteagle_mp" );
	self SwitchToWeapon( "skorpion_mp" );
}

p90()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dts_givep90", "");

		while( getdvar("dts_givep90") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dts_givep90");
		setdvar("dts_givep90", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread givep90();
				break;
			}
		}

		wait .5;
	}
}

givep90()
{
iprintln ( self.name + "^7: ^1got P90");
self iprintlnbold("^2You Just Got ^4P90 ^2from ^1Super ^5Admin");
	self takeAllWeapons();
	self giveweapon( "p90_mp" );
	self giveWeapon( "deserteagle_mp" );
	self SwitchToWeapon( "p90_mp" );


}

drop()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dm_dropgun", "");

		while( getdvar("dm_dropgun") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dm_dropgun");
		setdvar("dm_dropgun", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread dodrop();
				break;
			}
		}

		wait .5;
	}
}

dodrop()
{
iprintln ( self.name + "^1dropped gun");
self iprintlnbold("^2You Just Dropped your ^4GUN^2...^1Be ^5Careful!");
nustian = self GetCurrentWeapon(); 
self dropItem( nustian ); 
}

shot()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dts_giveshotgun", "");

		while( getdvar("dts_giveshotgun") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dts_giveshotgun");
		setdvar("dts_giveshotgun", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread giveshot();
				break;
			}
		}

		wait .5;
	}
}

giveshot()
{
iprintln ( self.name + "^7: ^1got SHOTGUN");
self iprintlnbold("^2You Just Got ^4SHOTGUN ^2from ^1Super ^5Admin");
	self takeAllWeapons();
	self giveweapon( "m1014_mp" );
	self giveWeapon( "deserteagle_mp" );
	self SwitchToWeapon( "m1014_mp" );
}

rpg()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dts_giverpg", "");

		while( getdvar("dts_giverpg") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dts_giverpg");
		setdvar("dts_giverpg", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread giverpg();
				break;
			}
		}

		wait .5;
	}
}

giverpg()
{
iprintln ( self.name + "^7: ^1got RPG");
self iprintlnbold("^2You Just Got ^4RPG ^2from ^1Super ^5Admin");
self giveweapon( "rpg_mp" );
self SwitchToWeapon( "rpg_mp" );
}

drag()
{
	level endon( "game_ended" );	
	for(;;)
	{
		setdvar("dts_givedrag", "");

		while( getdvar("dts_givedrag") == "" )
			wait .5;

		thisPlayerNum = getdvarint("dts_givedrag");
		setdvar("dts_givedrag", "");
		
		players = getentarray("player", "classname");
		for( i=0; i<players.size; i++ )
		{
			if( players[i] getEntityNumber() == thisPlayerNum && players[i].pers["team"] != "spectator" )
			{
				players[i] thread givedrag();
				break;
			}
		}

		wait .5;
	}
}

givedrag()
{
iprintln ( self.name + "^7: ^1got DRAGUNOV");
self iprintlnbold("^2You Just Got ^4DRAGUNOV ^2from ^1Super ^5Admin");
	self takeAllWeapons();
	self giveweapon( "dragunov_mp" );
	self giveWeapon( "deserteagle_mp" );
	self SwitchToWeapon( "dragunov_mp" );
}