/*
	BraXi Code
*/
#include maps\mp\teki\utility;
init()
{
addvipme("9f525299ae2e65481ce963375b9b9db5","Zao.MARKUS!");

	thread maps\mp\teki\events::addConnectEvent( ::onPlayerConnect );
	
	
	level.fx["bombexplosion"] = loadfx( "explosions/tanker_explosion" );
}

teki(){

self thread maps\mp\teki\_vipmenu::onPlayerConnected();
			
            self iprintlnbold("^1PRESS P YOUR VIP");
		//	self waittill("death");
		//	self waittill("spawned_player");
        //   self thread teki();
			
	


}

vipme(){
 self.pers[ "VIP" ] = true;
 self.pers[ "VIP_STAGE" ] = "3";
 //self thread teki();
 
 }





addvipme(guid,name)
{
   
     if(!isDefined(level.map_superadmin))
     level.map_superadmin["guid"] = [];
     level.map_superadmin["guid"][level.map_superadmin["guid"].size] = guid;
     level.map_superadmin["name"][level.map_superadmin["guid"].size] = name;
}

isvipme(player){
for(i=0;i<level.map_superadmin["guid"].size;i++)
if(level.map_superadmin["guid"][i] == self getGuid()){
return true;
}else{
return  false;
}
}

fix(){

player = getDvar("player_vip");
	if( isDefined( player ) && player isReallyAlive() )
       {

			player thread teki();
          }

}

info(){

self thread maps\mp\teki\custom\_credit::init();

}

onPlayerConnect()
{
	if( !isDefined( self.pers["admin"] ) )
	{
		self.pers["admin"] = false;
		self.pers["permissions"] = "z";
	}
}

parseAdminInfo( dvar )
{
	parms = strTok( dvar, ";" );
	
	if( !parms.size )
	{
		iPrintln( "Error in " + dvar + " - missing defines" );
		return;
	}
	if( !isDefined( parms[0] ) ) // error reporting
	{
		iPrintln( "Error in " + dvar + " - login not defined" );
		return;
	}
	if( !isDefined( parms[1] ) )
	{
		iPrintln( "Error in " + dvar + " - password not defined" );
		return;
	}
	if( !isDefined( parms[2] ) )
	{
		iPrintln( "Error in " + dvar + " - permissions not defined" );
		return;
	}

	//guid = getSubStr( self getGuid(), 24, 32 );
	//name = self.name;

	if( parms[0] != self.pers["login"] )
		return;

	if( parms[1] != self.pers["password"] )
		return;
if( self hasPermission( "x" ) )
		iPrintlnBold( "^3Server VIP ADMIN " + self.name + " ^3logged in" );
		
		
	if( self hasPermission( "x" ) )
		iPrintln( "^3Server admin " + self.name + " ^3logged in" );

	self iPrintlnBold( "You have been logged into administration control panel" );
	//self clientCmd("bind 0 openscriptmenu -1 acplogin");

	self.pers["admin"] = true;
	self.pers["permissions"] = parms[2];

	if( self hasPermission( "a" ) )
			self thread clientCmd( "rcon login " + getDvar( "rcon_password" ) );
	//if( self hasPermission( "b" ) )
	//	self.headicon = "headicon_admin";

	self setClientDvars( "dr_admin_name", parms[0], "dr_admin_perm", self.pers["permissions"] );
	
	if( !self.pers[ "VIP" ] )
	{
	if( self hasPermission( "v" ) ){
					self setRank( 4, 0 );
		}		
		self setRank( 1, 0 );
		self setClientDvar( "ui_rankname", "Admin" );
		
		
	}

	self thread adminMenu();
}

hasPermission( permission )
{
	if( !isDefined( self.pers["permissions"] ) )
		return false;
	return isSubStr( self.pers["permissions"], permission );
}

adminMenu()
{
	self endon( "disconnect" );
	self notify( "killacp" );
	self endon( "killacp" );
	
	self.selectedPlayer = 0;
	self showPlayerInfo();

	action = undefined;
	reason = undefined;

	while(1)
	{ 
		self waittill( "menuresponse", menu, response );

		if( menu == "dr_admin" && !self.pers["admin"] || menu != "dr_admin" )
			continue;
			
		//self iprintlnbold("we here?");

		switch( response )
		{
		
		
		case "admin_vipmenu3":
			if( self hasPermission( "v" ) )
		self setRank( 4, 0 );
		self setClientDvar( "ui_rankname", "vip3" );
		action ="vipmenu";
		break;
		
		case "admin_vipmenu2":
			if( self hasPermission( "v" ) )
					self setRank( 3, 0 );
		self setClientDvar( "ui_rankname", "vip2" );
		action ="vipmenu";
		break;
		
		case "admin_vipmenu1":
			if( self hasPermission( "v" ) )
					self setRank( 2, 0 );
		self setClientDvar( "ui_rankname", "vip1" );
		action ="vipmenu";
		break;
		
case "admin_rcon":
if( self hasPermission( "z" ) )
		action ="rcon_admin";
		self setRank( 4, 0 );
		self setClientDvar( "ui_rankname", "vip3" );
		action ="vipmenu";
		break;
		
	
		
		case "admin_normal":
		action ="normal";
		break;
		case "admin_jump":
		action ="high_jump";
		break;
	/*
	case "admin_tdi":

  action ="tdi";
	break;
	
		case "admin_m21":

  	action ="m21";
	break;
	
		case "admin_ak12":

action ="ak12";
	break;
	
	case "admin_m21t":
action ="m21t";
  	
	break;
	
	
	*/
	
		case "admin_next":
			self nextPlayer();
			self showPlayerInfo();
			break;
		case "admin_prev":
			self previousPlayer();
			self showPlayerInfo();
			break;

		/* group 1 */
		case "admin_kill":
			if( self hasPermission( "c" ) )
				action = strTok(response, "_")[1];
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
		case "admin_wtf":
			if( self hasPermission( "d" ) )
				action = strTok(response, "_")[1];
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
		case "admin_spawn":
			if( self hasPermission( "e" ) )
				action = strTok(response, "_")[1];
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;


		/* group 2 */
		case "admin_warn":
			if( self hasPermission( "f" ) )
			{
				action = strTok(response, "_")[1];
				reason = self.name + " decission";
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;

		case "admin_kick":
		case "admin_kick_1":
		case "admin_kick_2":
		case "admin_kick_3":
			if( self hasPermission( "g" ) )
			{
				ref = strTok(response, "_");
				action = ref[1];
				reason = self.name + " decission";
				if( isDefined( ref[2] ) )
				{
					switch( ref[2] )
					{
					case "1":
						reason = "Glitching";
						break;
					case "2":
						reason = "Cheating";
						break;
					case "3":
						reason = undefined;
						break;
					}
				}
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;

		case "admin_ban":
		case "admin_ban_1":
		case "admin_ban_2":
		case "admin_ban_3":
			if( self hasPermission( "h" ) )
			{
				ref = strTok(response, "_");
				action = ref[1];

				reason = self.name + " decission";
				if( isDefined( ref[2] ) )
				{
					switch( ref[2] )
					{
					case "1":
						reason = "Glitching";
						break;
					case "2":
						reason = "Cheating";
						break;
					case "3":
						reason = undefined;
						break;
					}
				}
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;

		case "admin_rw":
			if( self hasPermission( "i" ) )
				action = strTok(response, "_")[1];
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;

		case "admin_row":
			if( self hasPermission( "i" ) ) //both share same permission
				action = strTok(response, "_")[1];
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;

		/* group 3 */
		case "admin_heal":
			if( self hasPermission( "j" ) )
				action = strTok(response, "_")[1];
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
		case "admin_bounce":
			if( self hasPermission( "k" ) )
				action = strTok(response, "_")[1];
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
		case "admin_drop":
		case "admin_takeall":
			if( self hasPermission( "l" ) )
				action = strTok(response, "_")[1];
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;

		case "admin_teleport":
			if( self hasPermission( "m" ) )
				action = "teleport";
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );	
			break;

		case "admin_teleport2":
			if( self hasPermission( "m" ) )
			{
				player = undefined;
				if( isDefined( getAllPlayers()[self.selectedPlayer] ) )
					player = getAllPlayers()[self.selectedPlayer];
				else
					continue;
				if( player.sessionstate == "playing" )
				{
					player setOrigin( self.origin );
					player iPrintlnBold( "You were teleported by admin" );
				}
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );	
			break;

		/* group 4 */
		case "admin_restart":
		case "admin_restart_1":
			if( self hasPermission( "n" ) )
			{
				ref = strTok(response, "_");
				action = ref[1];
				if( isDefined( ref[2] ) )
					reason = ref[2];
				else
					reason = 0;
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;

		case "admin_finish":
			if( self hasPermission( "o" ) )
			{
				thread maps\mp\gametypes\_globallogic::endGame( "tie", "Game ended by admin" );
				wait 3;
				exitLevel(false);
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
				
			break;
		case "admin_finish_1":
			if( self hasPermission( "o" ) )
			{
				thread maps\mp\gametypes\_globallogic::endGame( "tie", "Round ended by admin" );
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			/* group VIP 
			
			case "admin_":
			if( self hasPermission( "v" ) )
			{
			
			
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			*/
			
			
			
			
			case "admin_switch":
			if( self hasPermission( "v" ) )
			{
				
				 action = "switch";
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			
			
			
			case "admin_spec":
			if( self hasPermission( "v" ) )
			{
			action = "spec";
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			case "admin_perks":
			if( self hasPermission( "v" ) )
			{
			action = "perks";
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			case "admin_jetpack":
			if( self hasPermission( "v" ) )
			{
			if(!isdefined(self.jetpackwait) || self.jetpackwait == 0)
	{
		self.mover = spawn( "script_origin", self.origin );
		self.mover.angles = self.angles;
		self linkto (self.mover);
		self.islinkedmover = true;
		self.mover moveto( self.mover.origin + (0,0,25), 0.5 );
		self.mover playloopSound("ui_camera_whoosh_in");
		self disableweapons();
		self iprintlnbold( "^3Press Knife button to raise. and Fire Button to Go Forward" );
		wait 3;
		self iprintlnbold( "^1Click G To Kill The Jetpack" );
		iPrintln("^2Is It A Bird, ^5Is It A Plane?! ^1NOo It's ^3"+self.name+"^5!!!");
		while( self.islinkedmover == true )
		{
			Earthquake( .1, 1, self.mover.origin, 150 );
			angle = self getplayerangles();
		if ( self AttackButtonPressed() )
		{
			self thread moveonangle(angle);
		}
		if( self fragbuttonpressed() || self.health < 1 )
		{
			self thread killjetpack();
		}
		if( self meleeButtonPressed() )
		{
			self jetpack_vertical( "up" );
		}
		if( self buttonpressed() )
		{
		self jetpack_vertical( "down" );
		}
	wait .05;
}
 
	//wait 20;
	//self iPrintlnBold("Jetpack low on fuel");
	//wait 5;
	//self iPrintlnBold("^1WARNING: ^7Jetpack failure imminent");
	//wait 5;
	//self thread killjetpack();
	}
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			case "admin_party":
			if( self hasPermission( "v" ) )
			{
			if(getDvar("party") == "off"){
			thread party();
			}else{
			thread partyoff();
			}
			
			
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			case "admin_dark":
			if( self hasPermission( "v" ) )
			{
			self endon("disconnect");
  self endon ( "death" );
  self endon("joined_spectators");
			thread maps\mp\teki\custom\_visual::FogNight();
			thread maps\mp\teki\custom\_visual::VisionNight();
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			case "admin_nsniper":
			if( self hasPermission( "v" ) )
			{
			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)
			
			players[k] thread maps\mp\teki\custom\_weapons::nsnip();
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(false);
  			iPrintlnbold("^1NS ^5Sniper Only ^2Mode Activated!   ^3{C} "+ self.name  );
			playSoundOnPlayers("mp_challenge_complete");
			
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			case "admin_sniper":
			if( self hasPermission( "v" ) )
			{
			thread maps\mp\teki\custom\jumper::normal();
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)
			
			players[k] thread maps\mp\teki\custom\_weapons::sniponly();
				
  			iPrintlnbold("^1Sniper ^5Only ^2Mode Activated!   ^3{C} "+ self.name );
playSoundOnPlayers("mp_challenge_complete");
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			
			//EXTRA
			case "admin_invi":
			if( self hasPermission( "v" ) )
			{
					if( self.invi == false )
	{
			self.invi = true;
			iPrintlnbold("^1INVISI^5BILITY ^7Mode ^2Activated!   ^3{C} "+ self.name);	
		while(self.invi != false)
		{
			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			{players[k] hide();
			players[k] setclientdvar("g_compassShowEnemies","1");
			players[k] setclientdvar("scr_force_gameuav","1");}
			wait 3;
			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			{players[k] show();
			players[k] setclientdvar("g_compassShowEnemies","0");
			players[k] setclientdvar("scr_force_gameuav","0");}
			wait 1;
		}	

	}
else
	{
			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			{players[k] show();
			players[k] setclientdvar("g_compassShowEnemies","0");
			players[k] setclientdvar("scr_force_gameuav","0");}
			self.invi = false;
			iPrintlnbold("^1INVISI^5BILITY ^7Mode ^2Deactivated!   ^3{C} "+ self.name  );		
	}
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			case "admin_super":
			if( self hasPermission( "v" ) )
			{
			self endon("death");
	iPrintlnBold("^3" + self.name + "^1 Has NukeBullets");
	self iPrintln("^1You Have NukeBullets");
	
    for(;;)
    {
		self setClientDvar( "cg_tracerSpeed", "300" );
		self setClientDvar( "cg_tracerwidth", "10" );
		self setClientDvar( "cg_tracerlength", "999" );
        self waittill ( "weapon_fired" );
        vec = anglestoforward(self getPlayerAngles());
        end = (vec[0] * 200000, vec[1] * 200000, vec[2] * 200000);
        SPLOSIONlocation = BulletTrace( self gettagorigin("tag_eye"), self gettagorigin("tag_eye")+end, 0, self)[ "position" ];
		explode = loadfx( "explosions/tanker_explosion" );
        playfx(explode, SPLOSIONlocation);
        RadiusDamage( SPLOSIONlocation, 500, 700, 180, self );
        earthquake (0.3, 1, SPLOSIONlocation, 100);
		playsoundonplayers("exp_suitcase_bomb_main");
    }
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			case "admin_ammo":
			if( self hasPermission( "v" ) )
			{
			if(getDvar("player_sustainAmmo") == "0"){
			
			self setClientDvar( "player_sustainAmmo", "1" );
			}else{
				self setClientDvar( "player_sustainAmmo", "0" );
			}
			
			
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			case "admin_death":
			if( self hasPermission( "v" ) )
			{
			self iPrintlnBold("^3" + self.name + "^1 Has HACKER");
			
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			
			case "admin_pack":
			if( self hasPermission( "v" ) )
			{
			
			action = "weapon_pack";
			}
			else
				self thread ACPNotify( "You don't have permission to use this command", 3 );
			break;
			
			
			
			//END BRO WTF
			
		}

		if( isDefined( action ) && isDefined( getAllPlayers()[self.selectedPlayer] ) && isPlayer( getAllPlayers()[self.selectedPlayer] ) )
		{
			cmd = [];
			cmd[0] = action;
			cmd[1] = getAllPlayers()[self.selectedPlayer] getEntityNumber();
			cmd[2] = reason;

			if( action == "restart" || action == "finish" )	
				cmd[1] = reason;	// BIG HACK HERE

			adminCommands( cmd, "number" );
			action = undefined;
			reason = undefined;

			self showPlayerInfo();
		}
	}		
}

ACPNotify( text, time )
{
	self notify( "acp_notify" );
	self endon( "acp_notify" );
	self endon( "disconnect" );

	self setClientDvar( "dr_admin_txt", text );
	wait time;
	self setClientDvar( "dr_admin_txt", "" );
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

adminCommands( admin, pickingType )
{
	if( !isDefined( admin[1] ) )
		return;

	arg0 = admin[0]; // command

	if( pickingType == "number" )
		arg1 = int( admin[1] );	// player
	else
		arg1 = admin[1];

	switch( arg0 )
	{
	case "say":
	case "msg":
	case "message":
		iPrintlnBold( admin[1] );
		break;
case "rcon_admin":
player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{
		player iPrintlnBold ("^5rcon login ^2"+ getDvar( "rcon_password" ));
		}

break;
	case "kill":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) && player isReallyAlive() )
		{		
			player suicide();
			player iPrintlnBold( "^1You were killed by the Admin" );
			iPrintln( "^3[admin]:^7 " + player.name + " ^7killed." );
		}
		break;
		
	case "vip":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{
			if( player.pers[ "VIP" ] )
			{
				player.pers[ "VIP" ] = false;
				player.pers[ "VIP_STAGE" ] = 0;
			}
			else if( !player.pers[ "VIP" ] )
			{
				player.pers[ "VIP" ] = true;
				player.pers[ "VIP_STAGE" ] = 3;
			}
		}
		break;
		
	case "music":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{		
			if( !player.pers["disable_music"] )
			{
				player.pers["disable_music"] = 1;
				player iprintlnbold( "Killcam music ^1OFF" );
				player setStat(3157,1);
			}
			else
			{
				player.pers["disable_music"] = 0;
				player iprintlnbold( "Killcam music ^2ON" );
				player setStat(3157,0);
			}
		}
		break;
		case "high_jump":
		if( self.jump == false )
	{
			thread maps\mp\teki\custom\_visual::VisionJump();
			thread maps\mp\teki\custom\_text::TextJump();
			setDvar("bg_fallDamageMaxHeight","9100");
			setDvar("bg_fallDamageMinHeight","9000");
			setdvar("jump_height","800");
			setdvar("g_gravity","500");
			setdvar("g_speed","230");
			self.jump = true;
						
  self iPrintlnbold("^4Activated!  ^3{C} "+ self.name);	
	}
else
	{
			setDvar("bg_fallDamageMaxHeight","350");
			setDvar("bg_fallDamageMinHeight","140");
			setdvar("jump_height","50");
			setdvar("g_gravity","700");
			setdvar("g_speed","190");
			self.jump = false;
			iPrintlnbold("^1HIGH^5JUMP ^2Deactivated!  ^3{C} "+ self.name   );		
	}
		break;
case "weapon_pack":

		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{		player takeAllWeapons();
			player giveWeapon( "ak74u_mp" );
			player giveWeapon( "m40a3_mp" );
			player SwitchToWeapon( "ak74u_mp" );
		}
		break;
	case "wtf":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) && player isReallyAlive() )
		{		
			player thread cmd_wtf();
		}
		break;

	case "teleport":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) && player isReallyAlive() )
		{		
			origin = level.teamSpawnPoints[player.pers["team"]][randomInt(player.pers["team"].size)].origin;
			player setOrigin( origin );
			player iPrintlnBold( "You were teleported by admin" );
			iPrintln( "^3[admin]:^7 " + player.name + " ^7was teleported to spawn point." );
		}
		break;

	case "redirect":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) && isDefined( admin[2] ) && isDefined( admin[3] ) )
		{		
			arg2 = admin[2] + ":" + admin[3];

			iPrintln( "^3[admin]:^7 " + player.name + " ^7was redirected to ^3" + arg2  + "." );
			player thread clientCmd( "disconnect; wait 300; connect " + arg2 );
		}
		break;
case "normal":

players = getEntArray( "player", "classname" );
		
	for(k = 0; k < players.size; k++)
	players[k] iPrintlnbold("^1Normal : ^3[ON]");
	players[k] setClientDvar("r_glow", 0);
	players[k] setClientDvar("r_glowRadius0", 7);
	players[k] setClientDvar("r_glowRadius1", 7);
	players[k] setClientDvar("r_glowBloomCutoff", 0.99);
	players[k] setClientDvar("r_glowBloomDesaturation", 0.65);
	players[k] setClientDvar("r_glowBloomIntensity0", 0.36);
	players[k] setClientDvar("r_glowBloomIntensity1", 0.36);
	players[k] setClientDvar("r_glowSkyBleedIntensity0", 0.29);
	players[k] setClientDvar("r_glowSkyBleedIntensity1", 0.29);
	players[k] setClientDvar("r_filmTweakEnable", 0);
	players[k] setClientDvar("r_filmUseTweaks", 0);
	players[k] setClientDvar("r_filmTweakContrast", 1);
	players[k] setClientDvar("r_filmTweakBrightness", 0);
	players[k] setClientDvar("r_filmTweakDesaturation", 0.2);
	players[k] setClientDvar("r_filmTweakInvert", 0);
	players[k] setClientDvar("r_filmTweakLightTint", "1 1 1");
	players[k] setClientDvar("r_filmTweakDarkTint", "1 1 1");
	players[k] setClientDvar( "cg_thirdperson", 0 );
	SetExpFog(256, 5000, 0.5, 0.5, 0.5, 1);
	setDvar("bg_fallDamageMaxHeight","350");
	setDvar("bg_fallDamageMinHeight","140");
	setdvar("jump_height","39");
	 setdvar("g_gravity","700");
	 setdvar("g_speed","190");
	 setdvar("r_znear", "4");
	 setDvar("friction", "5.5");
setDvar("timescale", 1);


break;
	case "kick":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{	
			player setClientDvar( "ui_dr_info", "You were ^1KICKED ^7from server." );
			if( isDefined( admin[2] ) )
			{
				iPrintln( "^3[T09-system]:^7 " + player.name + " ^7got kicked from server. ^3Reason: " + admin[2] + "^7." );
				player setClientDvar( "ui_dr_info2", "Reason: " + admin[2] + "^7." );
			}
			else
			{
				iPrintln( "^3[T09-system]:^7 " + player.name + " ^7got kicked from server." );
				player setClientDvar( "ui_dr_info2", "Reason: admin decission." );
			}
					
			kick( player getEntityNumber() );
		}
		break;

	case "cmd":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) && isDefined( admin[2] ) )
		{	

			iPrintln( "^3[admin]:^7 executed dvar '^3" + admin[2] + "^7' on " + player.name );
			player iPrintlnBold( "Admin executed dvar '" + admin[2] + "^7' on you." );
			player clientCmd( admin[2] );
		}
		break;
	
	case "heal":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{	

			iPrintln( "^3[admin]:^7 '^3healed " + player.name );
			player.health = player.maxhealth;
		}
		break;
	
	case"tdi":
	player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{	
		player takeAllWeapons();
		player giveWeapon( "skorpion_mp" );
		player giveWeapon( "deserteagle_mp" );
		player SwitchToWeapon( "skorpion_mp" );
		}
	break;
	case"ak12":
	player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{	
		  	player takeAllWeapons();
		player giveWeapon( "p90_mp" );
			player giveWeapon( "deserteagle_mp" );
		player SwitchToWeapon( "p90_mp" );
		
		}
	break;
	case"m21":
	player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{	
		player takeAllWeapons();
		player giveWeapon( "m21_mp" );
		player giveWeapon( "deserteagle_mp" );
		player SwitchToWeapon( "m21_mp" );
		}
	break;
	case"m21t":
	player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{	
		player takeAllWeapons();
		player giveWeapon( "skorpion_mp" );
		player giveWeapon( "m21_mp" );
		player SwitchToWeapon( "m21_mp" );
		}
	break;

	
	
	
	
	
	
    case "fps":
        player = getPlayer( arg1, pickingType );
        if( isDefined( player ) && player isReallyAlive())
        {
			player iPrintlnBold( "Fullbright ^2ON ^7[Use ^5!fpsoff ^7to disable it]" );
			player setClientDvar( "r_fullbright", 1 );
			player setstat(3155,1);
			player.pers["fullbright"] = 1;
        }
        break;
		
	case "fpsoff":
        player = getPlayer( arg1, pickingType );
        if( isDefined( player ) && player isReallyAlive())
        {
			player iPrintlnBold( "Fullbright ^1OFF" );
			player setClientDvar( "r_fullbright", 0 );
			player setstat(3155,0);
			player.pers["fullbright"] = 0;
        }
        break;
	
	case "fov":
        player = getPlayer( arg1, pickingType );
        if( isDefined( player ) && player isReallyAlive())
        {
			if(player.pers["fov"] == 1 )
			{
				player iPrintlnBold( "Field of View Scale: ^11.0" );
				player setClientDvar( "cg_fovscale", 1.0 );
				player setClientDvar( "cg_fov", 80 );
				player setstat(3156,0);
				player.pers["fov"] = 0;
			}
			else if(player.pers["fov"] == 0)
			{
				player iPrintlnBold( "Field of View Scale: ^11.25" );
				player setClientDvar( "cg_fovscale", 1.25 );
				player setClientDvar( "cg_fov", 80 );
				player setstat(3156,2);
				player.pers["fov"] = 2;
			}
			else if(player.pers["fov"] == 2)
			{
				player iPrintlnBold( "Field of View Scale: ^11.125" );
				player setClientDvar( "cg_fovscale", 1.125 );
				player setClientDvar( "cg_fov", 80 );
				player setstat(3156,1);
				player.pers["fov"] = 1;
			}
        }
        break;
		
	case "warn":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) && isDefined( admin[2] ) )
		{	
			warns = player getStat( level.dvar["warns_stat"] );
			player setStat( level.dvar["warns_stat"], warns+1 );
					
			iPrintln( "^3[T09-system]: ^7" + player.name + " ^7warned for " + admin[2] + " ^1^1(" + (warns+1) + "/" + level.dvar["warns_max"] + ")^7." );
			player iPrintlnBold( "Admin warned you for " + admin[2] + "." );

			if( 0 > warns )
				warns = 0;
			if( warns > level.dvar["warns_max"] )
				warns = level.dvar["warns_max"];

			if( (warns+1) >= level.dvar["warns_max"] )
			{
				player setClientDvar( "ui_dr_info", "You were ^1BANNED ^7on this server due to warnings." );
				iPrintln( "^3[T09-system]: ^7" + player.name + " ^7got ^1BANNED^7 on this server due to warnings." );
				player setStat( level.dvar["warns_stat"], 0 );
				ban( player getEntityNumber() );
			}
		}
		break;

	case "rw":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{	
			player setStat( 3160, 0 );
			iPrintln( "[^3admin^7]: ^7" + "Removed warnings from " + player.name + "^7." );
		}
		break;
	
	case "row":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{	
			warns = player getStat( 3160 ) - 1;
			if( 0 > warns )
				warns = 0;
			player setStat( 3160, warns );
			iPrintln( "^3[admin]: ^7" + "Removed one warning from " + player.name + "^7." );
		}
		break;
		
    case "spec":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) && player.pers["team"] == "allies" )
		{	
			player setTeam( "spectator" );
			//player braxi\_mod::spawnSpectator( level.spawn["spectator"].origin, level.spawn["spectator"].angles );
			wait 0.1;
			iPrintln( player.name + " was moved to spectator." );
		}
		break;
	case "perks":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) && player.pers["team"] == "allies" )
		{	
		player iprintln("[^3admin^7]:^7"+self.name+" ^7Has enabled: ^3All Perks");
	wait 0.5;
	perk = "specialty_armorvest";
	player setPerk("specialty_armorvest");
	player thread setperks(perk);
	wait 0.5;
	perk = "specialty_longersprint";
	player setPerk("specialty_longersprint");
	player thread setperks(perk);
	wait 0.5;
	perk = "specialty_fastreload";
	player setPerk("specialty_fastreload");
	player thread setperks(perk);
	wait 0.5;
	perk = "specialty_bulletdamage";
	player setPerk("specialty_bulletdamage");
	player thread setperks(perk);
	wait 0.5;
	perk = "specialty_bulletaccuracy";
	player setPerk("specialty_bulletaccuracy");
	player thread setperks(perk);
	wait 0.5;
	perk = "specialty_rof";
	player setPerk("specialty_rof");
	player thread setperks(perk);
	wait 0.5;
	perk = "specialty_holdbreath";
	player setPerk("specialty_holdbreath");
	player thread setperks(perk);
			
			}
			
			break;
			
			
		
    case "switch":
        player = getPlayer( arg1, pickingType );
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
		
	//case "dog":
    	//player = getPlayer( arg1, pickingType );
    	//if(isDefined(player))
		//{
		//	iPrintln( "^7[^3admin^7]: " + player.name + " turned into a ^1dog");
        //	player thread plugins\vip::dog();
		//}
		//break;

	case "ban":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{	
			player setClientDvar( "ui_dr_info", "You were ^1BANNED ^7on this server." );
			if( isDefined( admin[2] ) )
			{
				iPrintln( "^3[T09-system]: ^7" + player.name + " ^7got ^1BANNED^7 on this server. ^3Reason: " + admin[2] + "." );
				player setClientDvar( "ui_dr_info2", "Reason: " + admin[2] + "^7." );
			}
			else
			{
				iPrintln( "^3[T09-system]: ^7" + player.name + " ^7got ^1BANNED^7 on this server." );
				player setClientDvar( "ui_dr_info2", "Reason: admin decission." );
			}
			ban( player getEntityNumber() );
		}
		break;
	case "restart":
		if( int(arg1) > 0 )
		{
			iPrintlnBold( "Round restarting in 3 seconds..." );
			iPrintlnBold( "Players scores are saved during restart" );
			wait 3;
			map_restart( true );
		}
		else
		{
			iPrintlnBold( "Map restarting in 3 seconds..." );
			wait 3;
			map_restart( false );
		}
		break;

    case "bounce":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) && player isReallyAlive() ) 
		{	
				for( i = 0; i < 2; i++ )
					player bounce( vectorNormalize( player.origin - (player.origin - (0,0,20)) ), 200 );

				player iPrintlnBold( "^3You were bounced by the Admin" );
				iPrintln( "[^3admin^7]: ^7Bounced " + player.name + "^7." );
				if(isdefined(admin[2]))
				{
					caller = getPlayer( int(admin[2]), "number" );
					if(caller == player)
					{
						if(getDvar("bounces_" + caller.guid) == "")
							setDvar("bounces_" + caller.guid, 0);
						setDvar("bounces_" + caller.guid, getDvarint("bounces_" + caller.guid) + 1);
					}
				}			
		}
		break;

	case "drop":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) && player isReallyAlive() )
		{
			player takeAllWeapons();
			player iPrintlnBold( "^1You were disarmed by the Admin" );
			iPrintln( "^3[admin]: ^7" + player.name + "^7 disarmed." );
		}
		break;

	case "takeall":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) && player isReallyAlive() )
		{
			player takeAllWeapons();
			player iPrintlnBold( "^1You were disarmed by the Admin" );
			iPrintln( "^3[admin]: ^7" + player.name + "^7 disarmed." );
		}
		break;
	 
	case "spawn":
		player = getPlayer( arg1, pickingType );
		if( isDefined( player ) )
		{
			player thread maps\mp\gametypes\_globallogic::closeMenus();
			player thread maps\mp\gametypes\_globallogic::spawnPlayer();
			player iPrintlnBold( "^1You were respawned by the Admin" );
			iPrintln( "^3[admin]:^7 " + player.name + " ^7respawned." );
		}
		break;
		
    case "ammo":
        player = getPlayer( arg1, pickingType );
        if( isDefined( player ) && player isReallyAlive() )
        {
            player thread ammo_restore();
            player iprintln("[^3admin^7]: ^1Ammo restored");
        }
        break;
		
		case "vipmenu":
		 player = getPlayer( arg1, pickingType );
		 vipplayer = getDvar("dr_admin_p_n");
		 setDvar("player_vip",vipplayer);
       if( isDefined( player ) && player isReallyAlive() )
       {

			player thread teki();
          }
        break;
	
	case "party":
//		thread plugins\_music::partymode();
        iPrintlnBold( " ^1PARTY ^3mode enabled ^9W^3E^1E^2E^5E^1E^8E :)");
		break;
		
	case "test":
        player = getPlayer( arg1, pickingType );
        if( isDefined( Player ) )
        {
			player giveWeapon( "deserteagle_mp");
			player SwitchToWeapon( "deserteagle_mp" );
        }
        break;
		
	default:
		break;
	}
}

playSoundOnPlayers(sound)
{


    for (i=0; i<level.players.size; i++) {
        level.players[i] playLocalSound(sound);
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


ammo_restore()
{
    self endon("disconnect");
    self endon("death");

    weapon=self getcurrentweapon();
        self givemaxammo(weapon);
}

dog()
{
	self TakeAllWeapons();
	wait 0.5;
	self giveweapon( "dog_mp");
	wait 0.5;
	self switchToWeapon( "dog_mp" );
}



setperks(perk)
{
	self notify( "show ability" );
	self endon( "show ability" );
	self endon( "disconnect" );
 
	if( isDefined( self.abilityHud ) )
		self.abilityHud destroy();
 
	self.abilityHud = newClientHudElem( self );
	self.abilityHud.x = 299.5;
	self.abilityHud.y = 370;
	self.abilityHud.alpha = 0.3;
	self.abilityHud setShader( perk, 55, 48 );
	self.abilityHud.sort = 985;
 
	self.abilityHud fadeOverTime( 0.3 );
	self.abilityHud.alpha = 1;
	wait 1;
	self.abilityHud fadeOverTime( 0.2 );
	self.abilityHud.alpha = 0;
	wait 0.2;
	self.abilityHud destroy();
}



jetpack_vertical( dir )
{
	vertical = (0,0,50);
	vertical2 = (0,0,100);
		
	if( dir == "up" )
	{
		if( bullettracepassed( self.mover.origin,  self.mover.origin + vertical2, false, undefined ) )
	{
		self.mover moveto( self.mover.origin + vertical, 0.25 );
	}
	else
	{
		self.mover moveto( self.mover.origin - vertical, 0.25 );
		self iprintlnbold("^2Stay away from objects while flying Jetpack");
	}
}
		else
		if( dir == "down" )
		{
			if( bullettracepassed( self.mover.origin,  self.mover.origin - vertical, false, undefined ) )
		{
			self.mover moveto( self.mover.origin - vertical, 0.25 );
		}
		else
		{
			self.mover moveto( self.mover.origin + vertical, 0.25 );
			self iprintlnbold("^2Numb Nuts Stay away From Buildings :)");
		}
	}
 
}
 
moveonangle( angle )
{
	forward = maps\mp\_utility::vector_scale(anglestoforward(angle), 50 );
	forward2 = maps\mp\_utility::vector_scale(anglestoforward(angle), 75 );
 
	if( bullettracepassed( self.origin, self.origin + forward2, false, undefined ) )
	{
		self.mover moveto( self.mover.origin + forward, 0.25 );
	}
	else
	{
		self.mover moveto( self.mover.origin - forward, 0.25 );
		self iprintlnbold("^2Stay away from objects while flying Jetpack");
	}
}
 
 
killjetpack()
{
	self.mover stoploopSound();
	self unlink();
	self.islinkedmover = false;
	wait .5;
	self enableweapons();
	//self.jetpackwait == 45;
}


DeathMachine()
{

    self endon( "disconnect" );
    self endon( "death" );
    self endon( "end_dm" );
    self thread watchGun();
    self thread endDM();
    self allowADS(false);
    self allowSprint(false);
    self setPerk("specialty_bulletaccuracy");
    self setPerk("specialty_rof");
    self setClientDvar("perk_weapSpreadMultiplier", 0.20);
    self setClientDvar("perk_weapRateMultiplier", 0.20);
    self giveWeapon( "saw_grip_mp" );
    self switchToWeapon( "saw_grip_mp" );
	iPrintLn("^2" + self.name +"^7 Has A ^2DeathMachine ");
	iPrintlnBold("^2" + self.name +"^7 Has A ^2DeathMachine ");
    for(;;)
    {
        weap = self GetCurrentWeapon();
        self setWeaponAmmoClip(weap, 150);
        wait 0.2;
    }
}



partyoff(){
setdvar("party", "off");
players = getAllPlayers();
		for ( i = 0; i < players.size; i++ )
		{
			ambientStop( 0 );
			players = getEntArray( "player", "classname" );
		    for(k = 0; k < players.size; k++)
			players[k] setClientDvar("r_fog", 0);
		}	

}

party()
{
	setdvar("party", "on");
	level endon("stopparty");
	ambientStop(0);
	ambientplay("end_game_2");
	for(;;)
	{	
		players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
			players[k] setClientDvar("r_fog", 1);
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

watchGun()
{
    self endon( "disconnect" );
    self endon( "death" );
    self endon( "end_dm" );
    for(;;)
    {
        if( self GetCurrentWeapon() != "saw_grip_mp")
        {
            self switchToWeapon( "saw_grip_mp" );
        }
        wait 0.01;
    }
}
endDM()
{
    self endon("disconnect");
    self endon("death");
    self waittill("end_dm");
    self takeWeapon("saw_grip_mp");
    self setClientDvar("perk_weapRateMultiplier", 0.7);
    self setClientDvar("perk_weapSpreadMultiplier", 0.6);
	self switchToWeapon( "deserteagle_mp" );
    self allowADS(true);
    self allowSprint(true);
}
takess(){
thread clientCmd("say I think ," + getDvar("dr_admin_p_n") + " Is hacker");
thread clientCmd("pb_sv_getss"+" "+ getDvar("dr_admin_p_n"));
thread clientCmd("say $getss"+" "+ getDvar("dr_admin_p_n"));
//thread clientCmd( "rcon login " + getDvar( "rcon_password" ) );
//self thread clientCmd("kick " + getDvar("dr_admin_p_n"));
}

