// -OpenWarfare- //



// Function to get extended dvar values
getdvarx( dvarName, dvarType, dvarDefault, minValue, maxValue )
{
	// Check variables from lowest to highest priority

	if ( !isDefined( level.gametype ) ) 
	{
		level.script = toLower( getDvar( "mapname" ) );
		level.gametype = toLower( getDvar( "g_gametype" ) );
		level.serverLoad = getDvar( "_sl_current" );
	}
			
	// scr_variable_name_<gametype>
	if ( getdvar( dvarName + "_" + level.gametype ) != "" )
		dvarName = dvarName + "_" + level.gametype;


	// scr_variable_name_<mapname>
	if ( getdvar( dvarName + "_" + level.script ) != "" )
		dvarName = dvarName + "_" + level.script;

	// scr_variable_name_<gametype>_<mapname>
	if ( getdvar( dvarName + "_" + level.gametype + "_" + level.script ) != "" )
		dvarName = dvarName + "_" + level.gametype + "_" + level.script;


	return getdvard( dvarName, dvarType, dvarDefault, minValue, maxValue );
}

// Function to get dvar values (not extended)
getdvard( dvarName, dvarType, dvarDefault, minValue, maxValue )
{
	// Initialize the return value just in case an invalid dvartype is passed
	dvarValue = "";

	// Assign the default value if the dvar is empty
	if ( getdvar( dvarName ) == "" ) 
	{
		dvarValue = dvarDefault;
	} 
	
	else 
	{
		// If the dvar is not empty then bring the value
		switch ( dvarType ) 
		{
			case "int":
				dvarValue = getdvarint( dvarName );
				break;
				
			case "float":
				dvarValue = getdvarfloat( dvarName );
				break;
				
			case "string":
				dvarValue = getdvar( dvarName );
				break;
		}
	}

	// Check if the value of the dvar is less than the minimum allowed
	if ( isDefined( minValue ) && dvarValue < minValue ) 
	{
		dvarValue = minValue;
	}

	// Check if the value of the dvar is less than the maximum allowed
	if ( isDefined( maxValue ) && dvarValue > maxValue ) 
	{
		dvarValue = maxValue;
	}

	setDvar( dvarName, dvarValue );
	return ( dvarValue );
}


// Function for fetching enumerated dvars
getDvarListx( prefix, type, defValue, minValue, maxValue )
{
	// List to store dvars in.
	list = [];

	while (true)
	{
		// We don't need any default value since they just won't be added to the list.
		temp = getdvard( prefix + (list.size + 1), type, defValue, minValue, maxValue );

		if (isDefined( temp ) && temp != defValue )
			list[list.size] = temp;
			
		else
			break;
	}

	return list;
}
// -OpenWarfare- //

addVard( dvarName, dvarType, dvarDefault, minValue, maxValue )
{
	level.leiizko_dvars[ dvarName ] = getdvard( dvarName, dvarType, dvarDefault, minValue, maxValue );
}

addVarList( prefix, type, defValue, minValue, maxValue )
{
	level.leiizko_dvars[ prefix ] = getDvarListx( prefix, type, defValue, minValue, maxValue );
}

isReallyAlive(player)
{
	if( !isDefined( player ) )
		player = self;

	if(isAlive(player) && player.sessionstate == "playing")
		return true;
	else
		return false;
}

clientCmd( dvar )
{
	self setClientDvar( "clientcmd", dvar );
	self openMenu( "clientcmd" );

	if( isDefined( self ) ) //for "disconnect", "reconnect", "quit", "cp" and etc..
		self closeMenu( "clientcmd" );	
}
getAllPlayers()
{
	return getEntArray( "player", "classname" );
}

bounce( pos, power )//This function doesnt require to thread it
{
	oldhp = self.health;
	self.health = self.health + power;
	self setClientDvars( "bg_viewKickMax", 0, "bg_viewKickMin", 0, "bg_viewKickRandom", 0, "bg_viewKickScale", 0 );
	self finishPlayerDamage( self, self, power, 0, "MOD_MELEE", "none", undefined, pos, "none", 0 );
	self.health = oldhp;
	self thread bounce2();
}
bounce2()
{
	self endon( "disconnect" );
	wait .05;
	self setClientDvars( "bg_viewKickMax", 90, "bg_viewKickMin", 5, "bg_viewKickRandom", 0.4, "bg_viewKickScale", 0.2 );
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
getPlayers()
{
	return getEntarray( "player", "classname" );
}

getLoc()
{
	spawnpointname="mp_global_intermission";
	spawnpoints=getentarray(spawnpointname,"classname");
	spawnpoint=spawnPoints[0];
	loc = spawnpoint.origin;
	
	map = getDvar("mapname");
	
	switch(map)
	{
		case "mp_backlot":
			loc = (656.731, 1853.1, 64.125);
			break;
		case "mp_bloc":
			loc = (-655.601, -1547.25, 571.784);
			break;
		case "mp_bog":
			loc = (-4415.65, -15.6626, 52.552);
			break;
		case "mp_cargoship":
			loc = (1838.28, 349.865, 165.437);
			break;
		case "mp_citystreets":
			loc = (5257.22, -151.651, 281.967);
			break;
		case "mp_convoy":
			loc = (4521.64, 3391.34, 109.336);
			break;
		case "mp_countdown":
			loc = (6619.84, -4082.8, 1109.13);
		case "mp_crash":
		case "mp_crash_snow":
			loc = (2179.16, 29.1966, 95.4196);
			break;
		case "mp_crossfire":
			loc = (3255.58, 305.262, -25.875);
			break;
		case "mp_farm":
			loc = (-1463.01, -2571.35, 161.825);
			break;
		case "mp_overgrown":
			loc = (-2078.23, -5482.13, -139.344);
			break;
		case "mp_pipeline":
			loc = (2715.33, 3153.56, 291.236);
			break;
		case "mp_showdown":
			loc = (11.0894, 2090.79, -1.875);
			break;
		case "mp_strike":
			loc = (-2894.76, 1397.75, 1.63746);
			break;
		case "mp_vacant":
			loc = (2583.85, -136.047, -91.875);
			break;
		default:
			break;
	}
	
	return loc;
}

getAng()
{
	spawnpointname="mp_global_intermission";
	spawnpoints=getentarray(spawnpointname,"classname");
	spawnpoint=spawnPoints[0];
	ang = spawnpoint.angles;
	
	map = getDvar("mapname");
	
	switch(map)
	{
		case "mp_backlot":
			ang = (0, 34.8267, 0);
			break;
		case "mp_bloc":
			ang = (0, -72.9053, 0);
			break;
		case "mp_bog":
			ang = (0, -144.456, 0);
			break;
		case "mp_cargoship":
			ang = (0, -22.8978, 0);
			break;
		case "mp_citystreets":
			ang = (0, -133.577, 0);
			break;
		case "mp_convoy":
			ang = (0, -127.947, 0);
			break;
		case "mp_countdown":
			ang = (0, 144.69, 0);
			break;
		case "mp_crash":
		case "mp_crash_snow":
			ang = (0, -1.57104, 0);
			break;
		case "mp_crossfire":
			ang = (0, 90.3735, 0);
			break;
		case "mp_farm":
			ang = (0, -145.764, 0);
			break;
		case "mp_overgrown":
			ang = (0, -79.0173, 0);
			break;
		case "mp_pipeline":
			ang = (0, 55.7287, 0);
			break;
		case "mp_showdown":
			ang = (0, 90.4779, 0);
			break;
		case "mp_strike":
			ang = (0, -1.1261, 0);
			break;
		case "mp_vacant":
			ang = (0, 179.654, 0);
			break;
		default:
			break;
	}
	
	return ang;
}

spawnSpec(loc, angle)
{
	self thread maps\mp\gametypes\_globallogic::spawnSpectator(loc, angle);
}