//#include emz\_utility;
#include code\utility;
init()
{	
precacheMenu("dr_admin");
precacheMenu("getss");
precacheMenu("clientcmd");
precacheMenu("vip");
level thread onPlayerConnect();
}

onPlayerConnect()
{
	for(;;)
	{
		level waittill("connecting",player);
		player thread onMenuResponse();
	}

}/*
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
*/
onMenuResponse()
{
	level endon("restarting");
	self endon("disconnect");

	for(;;)
	{
		self waittill("menuresponse",menu,response);
		
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
		
		switch( response )
		{
		case "dr_admin_open":
		self closeMenu();
		self closeInGameMenu();
		self openMenu("dr_admin");
		self code\admin::showPlayerInfo();
		continue;
		case "getss":
		self closeMenu();
		self closeInGameMenu();
		self openMenu("getss");
		self code\admin::showPlayerInfo();
		continue;
		case "vip":
		self closeMenu();
		self closeInGameMenu();
		self openMenu("vip");
		continue;
		}
	
	}
}