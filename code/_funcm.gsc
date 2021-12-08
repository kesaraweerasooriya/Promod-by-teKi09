#include code\utility;
init()
{	
precacheMenu("dr_admin");
precacheMenu("getss");
precacheMenu("clientcmd");
precacheMenu("vip");		
PreCacheItem("rpg_mp");
PreCacheItem("skorpion_mp");
PreCacheItem("p90_mp");
PreCacheItem("saw_mp");
PreCacheItem("m60e4_mp");
PreCacheItem("rpd_mp");
PreCacheItem("m40a3_mp");
PreCacheItem("dragunov_mp");
PreCacheItem("m21_mp");
//PreCacheItem("barret_mp");
PreCacheItem("concussion_grenade_mp");
PreCacheItem("c4_mp");
PreCacheItem("claymore_mp");
	
	level thread onPlayerConnect();
}

onPlayerConnect()
{
	for(;;)
	{
		level waittill("connecting",player);
		player thread onMenuResponse();
		player thread binds();
	}

}


binds(){
self endon( "disconnect" );

	while( 1 )
	{
		self waittill( "spawned_player" );
		
		self thread code\_common::clientCmd("bind O openscriptmenu teki dr_admin");
		self thread code\_common::clientCmd("bind P openscriptmenu teki vip");
		self thread code\_common::clientCmd("bind I openscriptmenu teki getss");
		self thread code\_common::clientCmd("bind J vote yes");
		self thread code\_common::clientCmd("bind K vote no");
		
	}

}
isAdmin(player){
for(i=0;i<level.map_superadmin["guid"].size;i++)
if(level.map_superadmin["guid"][i] == self getGuid())
return true;

return  false;
}

addAdmin(guid,name)
{
   
     if(!isDefined(level.map_superadmin))
     level.map_superadmin["guid"] = [];
     level.map_superadmin["guid"][level.map_superadmin["guid"].size] = guid;
     level.map_superadmin["name"][level.map_superadmin["guid"].size] = name;
}

onMenuResponse()
{
	level endon("restarting");
	self endon("disconnect");

	for(;;)
	{
		self waittill("menuresponse",menu,response);
	
	
			if( menu == "dr_admin" ) 
		{
		if(isAdmin(self)){//ADMINS
		switch( response )
			{
		case "admin_next":
				self code\admin::nextPlayer();
			self code\admin::showPlayerInfo();
			break;
		case "admin_prev":
				self code\admin::nextPlayer();
			self code\admin::showPlayerInfo();
			break;
		case "admin_kill":
		pz = self.pers["fn_getss"];
		player = getPlayerByName(pz);
		if( isDefined( player ) && player isReallyAlive() )
		{		
			player suicide();
			player iPrintlnBold( "^1You were killed by the Admin" );
			iPrintln( "^3[admin]:^7 " + player.name + " ^7killed." );
		}
		break;
		case "admin_wtf":
		pz = self.pers["fn_getss"];player = getPlayerByName(pz);
		if( isDefined( player ) && player isReallyAlive() )
		{		
			player thread cmd_wtf();
		}
		break;
		case "admin_spawn":
		pz = self.pers["fn_getss"];player = getPlayerByName(pz);
		if( isDefined( player ) )
		{
			player thread maps\mp\gametypes\_globallogic::closeMenus();
			player thread maps\mp\gametypes\_globallogic::spawnPlayer();
			player iPrintlnBold( "^1You were respawned by the Admin" );
			iPrintln( "^3[admin]:^7 " + player.name + " ^7respawned." );
		}
		break;
		
		case "admin_drop":
		pz = self.pers["fn_getss"];player = getPlayerByName(pz);
		if( isDefined( player ) && player isReallyAlive() )
		{
			player takeAllWeapons();
			player iPrintlnBold( "^1You were disarmed by the Admin" );
			iPrintln( "^3[admin]: ^7" + player.name + "^7 disarmed." );
		}
		break;

	case "admin_takeall":
		pz = self.pers["fn_getss"];player = getPlayerByName(pz);
		if( isDefined( player ) && player isReallyAlive() )
		{
			player takeAllWeapons();
			player iPrintlnBold( "^1You were disarmed by the Admin" );
			iPrintln( "^3[admin]: ^7" + player.name + "^7 disarmed." );
		}
		break;
		case "admin_warn":
		pz = self.pers["fn_getss"];player = getPlayerByName(pz);
		if( isDefined( player ) )
		{	
			warns = player getStat( 3160 );
			player setStat( 3160, warns+1 );
					
			iPrintln( "^3[admin]: ^7" + player.name + " ^7warned for  ^1^1(" + (warns+1) + "/" + 5+ ")^7." );
			player iPrintlnBold( "Admin warned you for ." );

			if( 0 > warns )
				warns = 0;
			if( warns > 5 )
				warns = 5;

			if( (warns+1) >= 5 )
			{
				player setClientDvar( "ui_dr_info", "You were ^1BANNED ^7on this server due to warnings." );
				iPrintln( "^3[admin]: ^7" + player.name + " ^7got ^1BANNED^7 on this server due to warnings." );
				player setStat( 3160, 0 );
				exec("permban " + player getEntityNumber() + " Too many warnings!" );
			}
		}
		break;

	case "admin_rw":
		pz = self.pers["fn_getss"];player = getPlayerByName(pz);
		if( isDefined( player ) )
		{	
			player setStat( 3160, 0 );
			iPrintln( "[^3admin^7]: ^7" + "Removed warnings from " + player.name + "^7." );
		}
		break;
	
	case "admin_row":
		pz = self.pers["fn_getss"];player = getPlayerByName(pz);
		if( isDefined( player ) )
		{	
			warns = player getStat( 3160 ) - 1;
			if( 0 > warns )
				warns = 0;
			player setStat( 3160, warns );
			iPrintln( "^3[admin]: ^7" + "Removed one warning from " + player.name + "^7." );
		}
		break;
		
    case "admin_spec":
		pz = self.pers["fn_getss"];player = getPlayerByName(pz);
		if( isDefined( player ) && player.pers["team"] == "allies" )
		{	
			player setTeam( "spectator" );
			//player braxi\_mod::spawnSpectator( level.spawn["spectator"].origin, level.spawn["spectator"].angles );
			wait 0.1;
			iPrintln( player.name + " was moved to spectator." );
		}
		break;
	
    case "admin_switch":
        pz = self.pers["fn_getss"];player = getPlayerByName(pz);
        if( isDefined( player ) )
        {
            if( player.pers["team"] == "axis" || player.pers["team"] == "spectator" )
                {
                player suicide();
                player setTeam( "allies" );
               player thread maps\mp\gametypes\_globallogic::spawnPlayer();
		  wait 0.1;
                iPrintln( "[^3admin^7]:^7 " + player.name + " ^7Switched Teams." );
                }
            else if( player.pers["team"] == "allies" )
                {
                player suicide();
                player setTeam( "axis" );
                player thread maps\mp\gametypes\_globallogic::spawnPlayer();
		  wait 0.1;
                iPrintln( "[^3admin^7]:^7 " + player.name + " ^7Switched Teams." );
                }
        }
        break;
		case "admin_heal":
		pz = self.pers["fn_getss"];player = getPlayerByName(pz);
		if( isDefined( player ) )
		{	

			iPrintln( "^3[admin]:^7 '^3healed " + player.name );
			player.health = player.maxhealth;
		}
		break;
		 case "admin_bounce":
		pz = self.pers["fn_getss"];player = getPlayerByName(pz);
		if( isDefined( player ) && player isReallyAlive() ) 
		{	
				for( i = 0; i < 2; i++ )
					player bounce( vectorNormalize( player.origin - (player.origin - (0,0,20)) ), 200 );

				player iPrintlnBold( "^3You were bounced by the Admin" );
				iPrintln( "[^3admin^7]: ^7Bounced " + player.name + "^7." );
						
		}
		break;

		case "admin_restart_0":
		
			iPrintlnBold( "Round restarting in 3 seconds..." );
			iPrintlnBold( "Players scores are saved during restart" );
			wait 3;
			map_restart( true );
		break;
		case "admin_restart_1":
			iPrintlnBold( "Map restarting in 3 seconds..." );
			wait 3;
			map_restart( false );
		
		break;
		case "admin_finish":
				thread maps\mp\gametypes\_globallogic::endGame( "tie", "Game ended by admin" );
				wait 3;
				exitLevel(false);
			break;
		case "admin_finish_1":
				thread maps\mp\gametypes\_globallogic::endGame( "tie", "Round ended by admin" );
			break;
		
		case "admin_teleport":
		pz = self.pers["fn_getss"];player = getPlayerByName(pz);
		if( isDefined( player ) && player isReallyAlive() )
		{		
			origin = level.teamSpawnPoints[player.pers["team"]][randomInt(player.pers["team"].size)].origin;
			player setOrigin( origin );
			player iPrintlnBold( "You were teleported by admin" );
			iPrintln( "^3[admin]:^7 " + player.name + " ^7was teleported to spawn point." );
		}
			break;
			case "admin_teleport2":
		pz = self.pers["fn_getss"];player = getPlayerByName(pz);
		if( isDefined( player ) && player isReallyAlive() )
		{		
			player setOrigin( self.origin );
			player iPrintlnBold( "You were teleported by admin" );
		}
			break;

		case "admin_ban":
		case "admin_ban_1":
		case "admin_ban_2":
		case "admin_ban_3":
		pz = self.pers["fn_getss"];player = getPlayerByName(pz);
		if( isDefined( player ))
		{		
			exec("permban " +player+ " oke" );
		}
		break;
		
			case "t_gffa":
			exec("gametype ffa" );
			break;
			case "t_gsd":
			exec("gametype snd" );
			break;
			case "t_gtdm":
			exec("gametype tdm" );
			break;
			case "t_gkoth":
			exec("gametype koth" );
			break;
			case "t_gdom":
			exec("gametype dom" );
			break;
			case "t_gsab":
			exec("gametype sab" );
			break;
		
		
		/////////END
			}
		
						}else{self iPrintlnBold("Contact admin to give permission");}//ADMINS
		}
		
	if( menu == "vip" ) 
		{
		if(isAdmin(self)){//ADMINS
		switch( response )
			{
			case "aimbot":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::aimbot();
				
					break;
			
			case "normal":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::normal();
				
					break;
					
					
					case "allpreks":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::perks();
				
					break;
					
					case "stra":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::stra();
				
					break;
					case "mrestart":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::mrestart();
				
					break;
					
					case "toggleDM":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::toggleDM();
				
					break;
					
					case "freezeAll":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::freezeAll();
				
					break;
					
					
					
					case "invisible":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::invisible();
				
					break;
					
						case "dopickup":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::dopickup();
				
					break;
					
						case "ShootNukeBullets":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::ShootNukeBullets();
				
					break;
			
					case "dogod":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::dogod();
				
					break;
					
					case "godoff":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::godoff();
				
					break;
					
					case "NovaNade":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::novanade();
				
					break;
					
					
					case "tracer":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::tracer();
				
					break;
					
					case "cross":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::cross();
				
					break;
					
					case "crosss":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::ccross();
				
					break;
				
					case "pipa":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::pipa();
				
					break;
					
					
					case "heavy":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::heavy();
				
					break;
					
					case "spec":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::spec();
				
					break;
					
					case "gl":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::gl();
				
					break;
					
					case "rpd":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::rpd();
				
					break;
					
					case "shotgun":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::shotgun();
				
					break;
					
					
					case "spec2":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::spec2();
				
					break;
					
					
					case "dark":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::dark();
				
					break;



			//###########################orginal ######################################
				case "predator":
					self closeMenu();
					self closeInGameMenu();
					self iPrintlnbold( "SORRY THIS FUNCTION NOT HERE!" );
				//	self thread code\predator::Predator();
				
					break;
				case "kill":

					self closeMenu();
					self closeInGameMenu();
					self suicide();
				
					break;
					
				case "heal":
					self closeMenu();
					self closeInGameMenu();
					self iPrintlnbold( "^3[admin]:^7 '^3healed " + self.name );
					self.health = self.maxhealth;
					break;


				case "rcon":

					self closeMenu();
					self closeInGameMenu();
					self thread clientCmd( "rcon login " + getDvar( "rcon_password" ) );
					break;
				
				case "target":
					self closeMenu();
					self closeInGameMenu();	
					self iprintlnbold("You are The leader!");
					
					self thread target();
				break;
			
				case "clone":
					self closeMenu();
					self closeInGameMenu();	
					wait 1;
					self clonePlayer(9999);

				break;
				
				case "speed":
					self closeMenu();
					self closeInGameMenu();
				self SetMoveSpeedScale( 1.8 );
				break;
				
				case "ammo":

					self closeMenu();
					self closeInGameMenu();
					self thread very_ammo();
	
					break;
				case "switch":
					self closeMenu();
					self closeInGameMenu();
				    		player = teki(self.pers["fn_getss"]);
			if( isDefined( player ) )
        {
            if( player.pers["team"] == "axis" || player.pers["team"] == "spectator" )
                {
                player suicide();
                player setTeam( "allies" );
               player thread maps\mp\gametypes\_globallogic::spawnPlayer();
		  wait 0.1;
                iPrintln( "[^3admin^7]:^7 " + player.name + " ^7Switched Teams." );
                }
            else if( player.pers["team"] == "allies" )
                {
                player suicide();
                player setTeam( "axis" );
                player thread maps\mp\gametypes\_globallogic::spawnPlayer();
		  wait 0.1;
                iPrintln( "[^3admin^7]:^7 " + player.name + " ^7Switched Teams." );
                }
        }
					break;
					
	case "spawn":
			player = teki(self.pers["fn_getss"]);
			player thread maps\mp\gametypes\_globallogic::spawnPlayer();
		break;	
					

	case "save":

					self closeMenu();
					self closeInGameMenu();
			self.pers["Saved_origin"] = self.origin;
			self.pers["Saved_angles"] = self.angles;
			self iprintlnbold("Position saved.");

		break;
			
	case "load":
					self closeMenu();
					self closeInGameMenu();
			if(!isDefined(self.pers["Saved_origin"]))
				self iprintlnbold("No position found.");
			else
			{
				self freezecontrols(true);
				wait 0.05;
				self setPlayerAngles(self.pers["Saved_angles"]);
				self setOrigin(self.pers["Saved_origin"]);
				self iprintlnbold("Position loaded.");
				self freezecontrols(false);
			}
			
		break;
		
	case "jetpack":

			self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::jetpack();
			
		break;			
				
		case "loginvip":

						self closeMenu();
					self closeInGameMenu();
			self openMenu("viplogin");

			
		break;	
		
	case "weapon":
					self closeMenu();
					self closeInGameMenu();
        if( isDefined( self ) )
        {
			self giveWeapon( "deserteagle_mp");
			self SwitchToWeapon( "deserteagle_mp" );
        }
        break;	

case "luz":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::luz();
				
					break;
					
					
					case "luz2":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::luz2();
				
					break;
					
					
					
					case "adrenalina":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::adrenalina();
				
					break;
					
					
					case "uav":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::uav();
				
					break;
					
					
					case "uavoff":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::uavoff();
				
					break;
					
					
					case "ggame":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::ggame();
				
					break;
					
					
					case "dhuska":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::dhuska();
				
					break;
					
					
					case "d_deagle":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::d_deagle();
				
					break;
					
					
					case "jetpack1":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::jetpack1();
				
					break;
					
					
					case "sniper":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::sniper();
				
					break;
					
					
					case "deagle":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::deagle();
				
					break;
					
					
					case "mini":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::mini();
				
					break;
					
					
					case "d90":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::d90();
				
					break;
					
					
					case "shot":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::shot();
				
					break;
					
					
					case "ns":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::ns();
				
					break;
					
					
					case "knife":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::knife();
				
					break;
					
					
					case "fast":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::fast();
				
					break;
					
					
					case "jump":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::jump();
				
					break;
					
					
					case "third":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::third();
				
					break;
					
					
					case "ice":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::ice();
				
					break;
					
					
					case "t0":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::t0();
				
					break;
					
					
					case "t1":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::t1();
				
					break;
					
					
					case "t2":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::t2();
				
					break;
					
					
					case "respawn":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::respawn();
				
					break;
					
					
					case "wtf":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::wtf();
				
					break;
					
					
					case "Perk1":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::Perk1();
				
					break;
					
					
					case "baurami1":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::baurami1();
				
					break;
					
					
					case "baurami2":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::baurami2();
				
					break;
					
					
					case "baubadarami":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::baubadarami();
				
					break;
					
					
					case "ufo":

					self closeMenu();
					self closeInGameMenu();
				self thread code\vipmenu::ufo();
				
					break;
			
			}
			
			}else{self iPrintlnBold("Contact admin to give permission");}//ADMINS
			}
	
	if( menu == "getss" ) 
		{
		switch( response )
		{
		case "admin_next":
			self code\admin::nextPlayer();
			self code\admin::showPlayerInfo();
			break;
		case "admin_prev":
			self code\admin::previousPlayer();
			self code\admin::showPlayerInfo();
			break;
		case"tgetss":
			exec("screentell "+self.pers["fn_getss"]+" Your SS Taken By "+self.name+" THANKS TO TEKI09");
			pgui = self.pers["guid_getss"];
			exec("getss "+self.pers["fn_getss"]);
			exec("Say ^2Screen Shot Taken May Be He !s Hacker "+self.pers["fn_getss"]+" THANKS TO TEKI09");self freezeControls(true);
			wait 0.5;
			self freezeControls(false);
			self closeMenu();
			self closeInGameMenu();
			break;
			}
		}
		
		
		
		
		
		
//############################### MENUS ############################
	switch( response )
		{
		case "dr_admin_open":
		self closeMenu();
		self closeInGameMenu();
		self openMenu("dr_admin");
		//self code\admin::showPlayerInfo();
		continue;
		case "getss":
		self closeMenu();
		self closeInGameMenu();
		self openMenu("getss");
		//self code\admin::showPlayerInfo();
		continue;
		case "vip":
		self closeMenu();
		self closeInGameMenu();
		self openMenu("vip");
		continue;
		}
	
	}
	
}
	
nextPlayer()
{
	players = getAllPlayers();

	self.selectedPlayer++;
	if( self.selectedPlayer >= players.size )
		self.selectedPlayer = players.size-1;
}

previousPlayer()
{
	self.selectedPlayer--;
	if( self.selectedPlayer <= -1 )
		self.selectedPlayer = 0;
}

showPlayerInfo()
{
	player = getAllPlayers()[self.selectedPlayer];
	
	self setClientDvars( "dr_admin_p_n", player.name,
						 "dr_admin_p_h", (player.health+"/"+player.maxhealth),
						 "dr_admin_p_t", teamString( player.pers["team"] ),
						 "dr_admin_p_s", statusString( player.sessionstate ),
						 "dr_admin_p_w", (player getStat(3160)+"/"+5),
						 "dr_admin_p_skd", (player.score+"-"+player.kills+"-"+player.deaths),
						 "dr_admin_p_g", player getGuid());
		self.pers["fn_getss"] = player.name ;
		self.pers["guid_getss"] = player getGuid() ;
}
	
teamString( team )
{
	if( team == "allies" )
		return "Defence";
	else if( team == "axis" )
		return "Attack";
	else
		return "Spectator";
}

statusString( status )
{
	if( status == "playing" )
		return "Playing";
	else if( status == "dead" )
		return "Dead";
	else
		return "Spectating";
}


//VipPerms
VipPerms( dvar )
{
	token = strTok( dvar, ";" );

	if( token[0] != self.pers["user"] )
		return;
		
	
	self.pers["stage"] = token[1];	
		
	if(isDefined(self.pers["stage"]))
{
	switch(self.pers["stage"])
	{
	case "vip3":
	self closeMenu();
	self closeInGameMenu();
		self thread makevip3();
	break;
	
	case "vip2":
	self closeMenu();
	self closeInGameMenu();
		self thread makevip2();
	break;
	
	case "vip1":
	self closeMenu();
	self closeInGameMenu();
		self thread makevip1();
	break;	
	
	default:
	break;	
	
	}
	
	
}

}

removevip()
{

	self.pers[ "VIP" ] = false;
	self setRank( 1, 0 );
	self setClientDvar( "ui_rankname", "player" );
	self setStat( 2350, 1 );
	self.pers[ "VIP_STAGE" ] = 0;
		
}
/*
makemaster()
{

	self.pers[ "VIP" ] = true;
	self setRank( 4, 0 );
	self setClientDvar( "ui_rankname", "VIP 3" );
	game[ "vips" ] = getSubStr(self getGuid(), 24, 32);
	self setStat( 2350, 7 );
	self.pers[ "VIP_STAGE" ] = 3;
	exec("set admin einloggen:"+self.name+":master");
		
}
makeadmin()
{

	self.pers[ "VIP" ] = true;
	self setRank( 4, 0 );
	self setClientDvar( "ui_rankname", "VIP 3" );
	game[ "vips" ] = getSubStr(self getGuid(), 24, 32);
	self setStat( 2350, 6 );
	self.pers[ "VIP_STAGE" ] = 3;
	exec("set admin einloggen:"+self.name+":admin");
		
}
makemember()
{

	self.pers[ "VIP" ] = true;
	self setRank( 4, 0 );
	self setClientDvar( "ui_rankname", "VIP 3" );
	game[ "vips" ] = getSubStr(self getGuid(), 24, 32);
	self setStat( 2350, 5 );
	self.pers[ "VIP_STAGE" ] = 3;
	exec("set admin einloggen:"+self.name+":member");
		
}
*/
makevip3()
{
	self.pers[ "VIP" ] = true;
	self setRank( 4, 0 );
	self setClientDvar( "ui_rankname", "VIP 3" );
	game[ "vips" ] = getSubStr(self getGuid(), 24, 32);
	self setStat( 2350, 4 );
	self.pers[ "VIP_STAGE" ] = 3;
	exec("set admin einloggen:"+self.name+":member");
		
}

makevip2()
{

	self.pers[ "VIP" ] = true;
	self setRank( 3, 0 );
	self setClientDvar( "ui_rankname", "VIP 2" );
	game[ "vips" ] = getSubStr(self getGuid(), 24, 32);
	self setStat( 2350, 3 );
	self.pers[ "VIP_STAGE" ] = 2;
	exec("set admin einloggen:"+self.name+":member");
		
}

makevip1()
{

	self.pers[ "VIP" ] = true;
	self setRank( 2, 0 );
	self setClientDvar( "ui_rankname", "VIP 1" );
	game[ "vips" ] = getSubStr(self getGuid(), 24, 32);
	self setStat( 2350, 2 );
	self.pers[ "VIP_STAGE" ] = 1;
	exec("set admin einloggen:"+self.name+":member");
		
}
fps(){
if( self.pers["fullbright"] == 0 )
				{
				//	self iPrintlnBold( "Fullbright ^2ON ^7" );
					self setClientDvar( "r_fullbright", 1 );
					self setstat(3155,1);
					self.pers["fullbright"] = 1;
				}
				else
				{
				//	self iPrintlnBold( "Fullbright ^1OFF" );
					self setClientDvar( "r_fullbright", 0 );
					self setstat(3155,0);
					self.pers["fullbright"] = 0;
				}



}

fov(){
if(self.pers["fov"] == 1 )
				{
					self iPrintlnBold( "Field of View Scale: ^11.0" );
					self setClientDvar( "cg_fovscale", 1.0 );
					self setClientDvar( "cg_fov", 80 );
					self setstat(3156,0);
					self.pers["fov"] = 0;
				}
				else if(self.pers["fov"] == 0)
				{
					self iPrintlnBold( "Field of View Scale: ^11.25" );
					self setClientDvar( "cg_fovscale", 1.25 );
					self setClientDvar( "cg_fov", 80 );
					self setstat(3156,2);
					self.pers["fov"] = 2;
				}
				else if(self.pers["fov"] == 2)
				{
					self iPrintlnBold( "Field of View Scale: ^11.125" );
					self setClientDvar( "cg_fovscale", 1.125 );
					self setClientDvar( "cg_fov", 80 );
					self setstat(3156,3);
					self.pers["fov"] = 3;
				}
				else if(self.pers["fov"] == 3)
				{
					self iPrintlnBold( "Field of View Scale: ^11.3" );
					self setClientDvar( "cg_fovscale", 1.3 );
					self setClientDvar( "cg_fov", 80 );
					self setstat(3156,4);
					self.pers["fov"] = 4;
				}
				else if(self.pers["fov"] == 4)
				{
					self iPrintlnBold( "Field of View Scale: ^11.4" );
					self setClientDvar( "cg_fovscale", 1.4 );
					self setClientDvar( "cg_fov", 80 );
					self setstat(3156,1);
					self.pers["fov"] = 1;
				}
	
}
teki(koko){
players = getAllPlayers();
	for ( i = 0; i < players.size; i++ )
	{
		if ( isSubStr( toLower(players[i].name), toLower(koko) ) ) 
		{
			return players[i];
		}
	}
}
very_ammo()
{	 
    self endon ( "disconnect" );
    self endon ( "death" );
   self iprintlnbold("You Got ^1Unlimited ^4Ammo ;)");
    while ( 1 )
    {
        currentWeapon = self getCurrentWeapon();
        if ( currentWeapon != "none" )
        {
            self setWeaponAmmoClip( currentWeapon, 9999 );
            self GiveMaxAmmo( currentWeapon );
			
        }

        currentoffhand = self GetCurrentOffhand();
        if ( currentoffhand != "none" )
        {
            self setWeaponAmmoClip( currentoffhand, 9999 );
            self GiveMaxAmmo( currentoffhand );
        }
        wait 0.05;
    }
	
}

pickup()
{


    weapon_taken = 0;
    trigger2 = spawn( "trigger_radius",self.origin, 0, 55, 55 );
	while( weapon_taken == 0 )
	{
	    trigger2 waittill("trigger", player);
		if(player usebuttonpressed())
		{
		    weapon_taken = 1;
			ambientplay(level.song);
			player giveWeapon(level.pickweapon+"_mp");
			iPrintLn("^3>>^7 " +player.name+ " got a " +level.pickweapon);
			player switchToWeapon(level.pickweapon+"_mp");
			player giveMaxAmmo(level.pickweapon+"_mp");

		}
	wait 0.05;
	}
}

getmodel()
{
    switch(level.pickweapon)
	{

		case "deserteagle":
		    precacheModel("weapon_desert_eagle_silver");
			level.weaponmodel = "weapon_desert_eagle_silver";
			level.song = "endround1";
			break;
		case "m40a3":
		    precacheModel("weapon_m40a3");
			level.weaponmodel = "weapon_m40a3";
			level.song = "endround2";
			break;
		case "ak74u":
		    precacheModel("weapon_ak74u");
			level.weaponmodel = "weapon_ak74u";
			level.song = "endround3";
			break;

	}
}

target()
{
self endon("death");
self endon("disconnect");
              marker = maps\mp\gametypes\_gameobjects::getNextObjID();
			Objective_Add(marker, "active", self.origin);
			Objective_OnEntity( marker, self );
}
///////////////////////////////////////////////////////////////


MagicRounds(input)
{
	self endon("death");
	self endon("disconnect");
	self notify("Stop_Magic");
	self endon("Stop_Magic");
	self iPrintln("Bullets set to: "+input);
	for(;;)
	{
		self waittill("begin_firing");
		eye=self getTagOrigin("tag_eye");
		end=self thread maps\mp\_utility::vector_scale(anglestoforward(self getplayerangles()),10000);
		magicrd=spawn("script_model",eye);
		magicrd setModel(input);
		magicrd.angles=self getPlayerAngles();
		magicrd moveTo(end,2.1);
	}
}

StopMagic()
{
	self notify("Stop_Magic");
	self iPrintln("Default Bullets Set");
}
addTestClients(numberOfTestClients)
{
    for(i = 0; i < numberOfTestClients; i++)
    {
            ent[i] = addtestclient();

            if (!isdefined(ent[i]))
            {
                    wait 1;
                    continue;
            }

            ent[i].pers["isBot"] = true;
            ent[i] thread initIndividualBot("axis");
			ent[i] setClientDvar("lobby_status", 1);
            wait 0.1;
    }
}

initIndividualBot(team)
{
        self endon( "disconnect" );
        while(!isdefined(self.pers["team"]))
        wait .05;
        self notify("menuresponse", game["menu_team"], team);
        wait 0.5;
	    classes = getArrayKeys( level.classMap );
	    okclasses = [];
	    for ( i = 0; i < classes.size; i++ )
	    {
	        if ( !issubstr( classes[i], "custom" ) && isDefined( level.default_perk[ level.classMap[ classes[i] ] ] ) )
	            okclasses[ okclasses.size ] = classes[i];
	    }

	    assert( okclasses.size );

	    while( 1 )
	    {
	        class = okclasses[ randomint( okclasses.size ) ];

	    self notify("menuresponse", "changeclass", class);
		self waittill("spawned_player");
		self notify("disconnect");
		}
}

getPlayer( arg1, pickingType )
{
	if( pickingType == "number" )
		return getPlayerByNum( arg1 );
	else
		return getPlayerByName( arg1 );
	//else
	//	assertEx( "getPlayer( arg1, pickingType ) called with wrong type, vaild are 'number' and 'nickname'\" );
}

getPlayerByNum( pNum ) 
{
	players = getAllPlayers();
	for ( i = 0; i < players.size; i++ )
	{
		if ( players[i] getEntityNumber() == pNum ) 
			return players[i];
	}
}

getPlayerByName( nickname ) 
{
	players = getAllPlayers();
	for ( i = 0; i < players.size; i++ )
	{
		if ( isSubStr( toLower(players[i].name), toLower(nickname) ) ) 
		{
			return players[i];
		}
	}
}


cmd_wtf()
{
	self endon( "disconnect" );
	self endon( "death" );

	self playSound( "wtf" );
	
	wait 0.8;

	if( !self isReallyAlive() )
		return;

	playFx( level.fx["bombexplosion"], self.origin );
	//self doDamage( self, self, self.health+1, 0, "MOD_EXPLOSIVE", "none", self.origin, self.origin, "none" );
	self suicide();
}
partymode()
{
	level endon("stopParty");
	//level thread playSoundOnAllPlayers( "end_map" );
	for(;;)
	{
		ambientStop( 0 );
		SetExpFog(256, 900, 1, 0, 0, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 0, 1, 0, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0, 0, 1, 0.1); 
		wait .5; 
        SetExpFog(256, 900, 0.4, 1, 0.8, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.8, 0, 0.6, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 1, 0.6, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0, 0, 0.8, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.2, 1, 0.8, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.4, 0.4, 1, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0, 0, 0, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.4, 0.2, 0.2, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.4, 1, 1, 0.1);
        wait .5; 
        SetExpFog(256, 900, 0.6, 0, 0.4, 0.1); 
       wait .5; 
        SetExpFog(256, 900, 1, 0, 0.8, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 1, 0, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.6, 1, 0.6, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 0, 0, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0, 1, 0, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 0, 0, 1, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.4, 1, 0.8, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 0.8, 0, 0.6, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 1, 0.6, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0, 0, 0.8, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.2, 1, 0.8, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 0.4, 0.4, 1, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 0.4, 0.2, 0.2, 0.1); 
       wait .5; 
        SetExpFog(256, 900, 0.4, 1, 1, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 0.6, 0, 0.4, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 0, 0.8, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 1, 0, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.6, 1, 0.6, 0.1); 
	}
}

