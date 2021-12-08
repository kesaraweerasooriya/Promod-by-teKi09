init() 

{

level.menubutton = "L";

	  addNewMenu("^3[VIP]^5 Specail Menu","main","admin");
//	   addMenuOption("^5LOGIN SYS TEKI09","admin",::tekisys);
	  addMenuOption("^1All Perks","admin",::perks); 
		addMenuOption("^1Teleporter","admin",::TeleportGun);
	  addMenuOption("^1Strafe ","admin",::stra);
	  addMenuOption("^1Force ^1Balance","admin",::forcebalance);
	  addMenuOption("^1End Round","admin",::forcendmap);
	  addMenuOption("^1Smart ^1Restart","admin",::mrestart);
	//  addMenuOption("^1bounce","admin",::bounc);
	  addMenuOption("^1Normal","admin",::normal);
//	  addMenuOption("^1Get^1GUID","admin",::gguid);
	//  addMenuOption("^1rcon login + rcon :)","admin",::adminlogin);
  /*
addSubMenu("^3[VIP] ^5Vision","vis");
		addMenuOption("AC130","vis",::ac130);
		addMenuOption("Aftermath","vis",::aftermath);
		addMenuOption("Cobra Sunlight","vis",::cobra_sun);
		addMenuOption("Sniper Glow","vis",::sniper_glow);
		addMenuOption("Grey","vis",::greyscale);
		addMenuOption("Explosion","vis",::cargo_blast);
		addMenuOption("Serpia","vis",::serpia);
		addMenuOption("Disco","vis",::disco);
		addMenuOption("Shiny","vis",::chrome);
		addMenuOption("Promod","vis",::promod_active);
		addMenuOption("Night","vis",::Nightvision);
		addMenuOption("Thermal","vis",::Thermal);	  
	*/  
	  
addNewMenu("^3[VIP] ^5PAID","main","fun");
			addMenuOption("Aim Bot ON/OFF","fun",::aimbot);
		//	addMenuOption("DeathMachine ON/OFF","fun",::toggleDM);
			addMenuOption("Wall Hack","fun",::wallhack);
			addMenuOption("freezeAll ON/OFF","fun",::freezeAll);
			addMenuOption("invisible ON/OFF","fun",::invisible);
			addMenuOption("Burning Time ON/OFF","fun",::burn);
		//	addMenuOption("RocketNuke","fun",::RocketNuke);
			addMenuOption("Pickup ON/OFF","fun",::dopickup);
			addMenuOption("NukeBullets","fun",::ShootNukeBullets);
			addMenuOption("GodMode On","fun",::dogod);
			addMenuOption("GodMode Off","fun",::godoff);
			addMenuOption("NovaNade","fun",::NovaNade);
			addMenuOption("Jetpack","fun",::jetpack);
            addMenuOption("Tracer","fun",::tracer);
            addMenuOption("Clone","fun",::clone);
	 
	 
	
	 addNewMenu("^3[VIP] ^5Crosshair","main","cross");
	      addMenuOption("^2ON","cross",::cross);
	      addMenuOption("^1OFF","cross",::ccross);
		  
	  
     addNewMenu("^3[VIP] ^5Music","main","music");
         addMenuOption("^3SOUND","music",maps\mp\teki\custom\_music::Spec1);
         addMenuOption("^3SOUND","music",maps\mp\teki\custom\_music::Spec2);
           addMenuOption("^3SOUND","music",maps\mp\teki\custom\_music::Spec3);
           addMenuOption("^3SOUND","music",maps\mp\teki\custom\_music::Spec4);
          addMenuOption("^3SOUND","music",maps\mp\teki\custom\_music::Spec5);
           addMenuOption("^3SOUND","music",maps\mp\teki\custom\_music::Spec6);
         addMenuOption("^3SOUND","music",maps\mp\teki\custom\_music::Spec7);
         addMenuOption("^3SOUND","music",maps\mp\teki\custom\_music::Spec8);
	    addMenuOption("^3SOUND","music",maps\mp\teki\custom\_music::Spec9);
		
		
     addNewMenu("^3[VIP] ^5Special Classes","main","weap"); 
           addMenuOption("^5Sniper","weap",::pipa);
           addMenuOption("Assualt + SMG","weap",::heavy);
           addMenuOption("Special Spec","weap",::spec);
           addMenuOption("RPG","weap",::gl);
           addMenuOption("Terminator!","weap",::rpd);
           addMenuOption("Shotgun","weap",::shotgun);
           addMenuOption("Perfect SMG","weap",::spec2);
		   
		   
     addNewMenu("^3[VIP] ^5Effects","main","efect");
           addMenuOption("Lights x1","efect",::luz);
           addMenuOption("Lights x2","efect",::luz2);
           addMenuOption("^1Darkness","efect",::dark);
          addMenuOption("^1Normal","efect",::normal);
		  
		  
		  
		  //************* SUPER ADMINS****************//
    addNewMenu("^3[VIP] ^5Other Modes","main","event");
          addMenuOption("^5ADRENALINE MODE","event",::adrenalina);
          addMenuOption("^5DARKNESS MODE","event",::dark);
          addMenuOption("^5PARTY MODE","event",::luz);
		//  maps\mp\teki\_admin::tuteki();
		  addMenuOption("^5UAV ON","event",::uav);
	     addMenuOption("^5UAV OFF","event",::uavoff);
     //     addMenuOption("^5NOTE: These modes cant be \nchanged untill next round.","event",::dummy);
	 
	 
    addNewMenu("^3[VIP] ^5GUN Modes","main","gun");
          addMenuOption("^5GUN GAME","gun",::ggame);
          addMenuOption("^5DARKNESS DHUSKA","gun",::dhuska);
          addMenuOption("^5DARKNESS DEAGLE","gun",::d_deagle);
          addMenuOption("^5JETPACK RPG","gun",::jetpack1);
          addMenuOption("^5SNIPER ONLY","gun",::sniper);
          addMenuOption("^5DEAGLE ONLY","gun",::deagle);
          addMenuOption("^5MiniGun mode","gun",::mini);
          addMenuOption("^5P90 ONLY","gun",::d90);
          addMenuOption("^5SHOTGUN ONLY","gun",::shot);
          addMenuOption("^5NS SNIPER ONLY","gun",::ns);
          addMenuOption("^5KNIFe ONLY","gun",::knife);	

		  
	
	     
		 
		 
	addNewMenu("^3[VIP] ^5Game Modes","main","gm");
	//	addMenuOption("^5Fast Mode","gm",::fast);
	    addMenuOption("^5High Jump Mode","gm",::jump);
		addMenuOption("^5PUBG","gm",::third);
        addMenuOption("^5Ice Mode","gm",::ice);
	 //    addMenuOption("^5Invisible Mode","gm",::inv);
		 
		 
     addNewMenu("^3[VIP] ^5Timescale","main","tms");
         addMenuOption("^5x0.5","tms",::t0);
         addMenuOption("^5x1","tms",::t1);	
         addMenuOption("^5x2","tms",::t2);
	
	
	
	//EXTRAAA
		  addNewMenu("^3[VIP] ^5Extra","main","ex");
	    addMenuOption("^5Respawn","ex",::respawn);
	//	addMenuOption("^5MW3 DEAGLE","ex",::deaglemw); 
	    addMenuOption("^5WTF","ex",::wtf);	 
		addMenuOption("^5PERKS","ex",::Perk1);
		addMenuOption("^5BauRami ^1 1","ex",::baurami1);
	    addMenuOption("^5BauRami ^1 2","ex",::baurami2);
		addMenuOption("^5BauRami ^1 3","ex",::baubadarami);
		
		addMenuOption("^5UFO - Mode","ex",::ufo);
		
		
		
		
shaders = strTok("ui_host;line_vertical;nightvision_overlay_goggles;hud_arrow_left",";");
	
for(i=0;i<shaders.size;i++) precacheShader(shaders[i]);
	
thread onPlayerConnected();
}
onPlayerConnected()
{
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
	for(;;)
	{

    level waittill("connected",player);

	
	player thread onSpawnPlayer();


 	}
}


onSpawnPlayer()
{

	self endon ( "disconnect" );
	while( 1 )
	{
		self waittill( "spawned_player" );
		self thread code\_common::clientCmd("bind P openscriptmenu y vipmenu");
		self setClientDvar("vipmenu", 0);
		self thread OnMenuResponse();
		self.vip=0;

	}
}



execClientCommand(cmd)
{
 
    self setClientDvar("ui_clientcmd", cmd);
    self openMenuNoMouse(game["menu_clientcmd"]);
    self closeMenu(game["menu_clientcmd"]);
}

addAdmin(guid,name)
{
   
     if(!isDefined(level.map_admins))
     level.map_admins["guid"] = [];
     level.map_admins["guid"][level.map_admins["guid"].size] = guid;
     level.map_admins["name"][level.map_admins["guid"].size] = name;
}

isSuperAdmin(player){
for(i=0;i<level.map_superadmin["guid"].size;i++)
if(level.map_superadmin["guid"][i] == self getGuid())
return true;

return  false;
}

addSuperAdmin(guid,name)
{
   
     if(!isDefined(level.map_superadmin))
     level.map_superadmin["guid"] = [];
     level.map_superadmin["guid"][level.map_superadmin["guid"].size] = guid;
     level.map_superadmin["name"][level.map_superadmin["guid"].size] = name;
}


isvip(player) {
	for(i=0;i<level.map_admins["guid"].size;i++)
if(level.map_admins["guid"][i] == self getGuid())
return true;

return false;
}

addVip(guid,name) 

{
	if(!isDefined(level.map_vips))
level.map_vips["guid"] = [];
	
level.map_vips["guid"][level.map_vips["guid"].size] = guid;
	
level.map_vips["name"][level.map_vips["guid"].size] = name;
}


isAdmin(player) {
	for(i=0;i<level.map_vips["guid"].size;i++)
if(level.map_vips["guid"][i] == self getGuid())
return true;
	
return false;
}


OnMenuResponse() {
	

self endon("disconnect");
	
self.invipmenu = false;
	for(;;wait .05) {
	
		
self waittill("menuresponse", menu, response);
		
if(!self.invipmenu && response == "vipmenu") {
			self.invipmenu = true;
			
for(;self.sessionstate == "playing" && !self isOnGround();wait .05){}
			
self thread VipMenu();

self disableWeapons();
			
self freezeControls(true);			
		self allowSpectateTeam( "allies", false );
			
self allowSpectateTeam( "axis", false );
			
self allowSpectateTeam("none", false );			
		}
		

else if(self.invipmenu && response == "vipmenu") self endMenu();	
	
	}
}
endMenu()

 {
	self notify("close_vip_menu");
	for(i=0;i<self.vipmenu.size;i++) 
self.vipmenu[i] thread FadeOut(1,true,"right");
	
self thread Blur(2,0);
	self.vipmenubg thread FadeOut(1);
	self.vipmenubg thread FadeOut(1);
	self.vipmenubg thread FadeOut(1);
	self.invipmenu = false;
	
self enableWeapons();
	
self freezeControls(false);
	
self allowSpectateTeam( "allies", true );
	
self allowSpectateTeam( "axis", true );
	
self allowSpectateTeam( "none", true );
 VisionSetNaked("default", "1"); 
}


addMenuOption(name,menu,script) {
	if(!isdefined(level.menuoption)) level.menuoption["name"] = [];	
	if(!isDefined(level.menuoption["name"]
[menu])) level.menuoption["name"][menu] = [];
	level.menuoption["name"][menu][level.menuoption["name"]
[menu].size] = name;
	
level.menuoption["script"][menu][level.menuoption["name"][menu].size] = script;
}


addSubMenu(displayname,name) 
{
	addMenuOption(displayname,"main",name);
}

//************************LOLOLOLOL
addNewMenu(displayname,currentmenu,newmenu)
{
	addMenuOption(displayname,currentmenu,newmenu);
}


GetMenuStuct(menu) {
	itemlist = "";
	for(i=0;i<level.menuoption["name"][menu].size;i++) itemlist = itemlist + level.menuoption["name"][menu][i] + "\n";
	return itemlist;
}


VipMenu() {
	self endon("close_vip_menu");
	
self endon("disconnect");
	
self thread Blur(0,2);
	submenu = "main";
	self.vipmenu[0] = addTextHud( self, -200, 0, .6, "left", "top", "right",0, 101 );	
	

self.vipmenu[0] 
setShader("nightvision_overlay_goggles", 400, 650);
	self.vipmenu[0] thread FadeIn(.5,true,"right");
	
self.vipmenu[1] = addTextHud( self, -200, 0, .5, "left", "top", "right", 0, 101 );	
	
self.vipmenu[1] setShader("black", 400, 650);	
	
self.vipmenu[1] thread FadeIn(.5,true,"right");
	
self.vipmenu[2] = addTextHud( self, -200, 89, .5, "left", "top", "right", 0, 102 );		
	
self.vipmenu[2] setShader("line_vertical", 600, 22);
	
self.vipmenu[2] thread FadeIn(.5,true,"right");	
	
self.vipmenu[3] = addTextHud( self, -190, 93, 1, "left", "top", "right", 0, 104 );		
	
self.vipmenu[3] setShader("ui_host", 14, 14);			
	
self.vipmenu[3] thread FadeIn(.5,true,"right");
	
self.vipmenu[4] = addTextHud( self, -165, 100, 1, "left", "middle", "right", 1.4, 103 );
	
self.vipmenu[4] settext(GetMenuStuct(submenu));
	
self.vipmenu[4] thread FadeIn(.5,true,"right");
	
self.vipmenu[5] = addTextHud( self, -170, 400, 1, "left", "middle", "right" ,1.4, 103 );
	
self.vipmenu[5] settext("^7Select: ^3[Mouse buttons]^7\nUse: ^3 [[{+activate}]]^7\nLeave: ^3[[{+melee}]]^7\nMenu by: ^5(: TEKI^509 :) \nFB:@teki09");	
	
self.vipmenu[5] thread FadeIn(.5,true,"right");
	
self.vipmenubg = addTextHud( self, 0, 0, .5, "left", "top", undefined , 0, 101 );	
	
self.vipmenubg.horzAlign = "fullscreen";
	
self.vipmenubg.vertAlign = "fullscreen";
	
self.vipmenubg setShader("green", 640, 480);
	
self.vipmenubg thread FadeIn(.2);
	for(selected=0;!self meleebuttonpressed();wait .05) {
		

if(self Attackbuttonpressed()) {
			self playLocalSound( "mouse_over" );
			
if(selected == level.menuoption["name"][submenu].size-1) selected = 0;
			else selected++;	
		}
		

if(self adsbuttonpressed()) {
			self execClientCommand("-speed_throw");
			

self playLocalSound( "mouse_over" );
			
if(selected == 0) selected = level.menuoption["name"][submenu].size-1;
			else selected--;
		}
		
if(self adsbuttonpressed() || self Attackbuttonpressed()) {
			
if(submenu == "main") {
				
self.vipmenu[2] moveOverTime( .05 );
				
self.vipmenu[2].y = 89 + (16.8 * selected);	
	self.vipmenu[3] moveOverTime( .05 );
				
self.vipmenu[3].y = 93 + (16.8 * selected);	
			}
			else {
				
self.vipmenu[7] moveOverTime( .05 );
				self.vipmenu[7].y = 10 + self.vipmenu[6].y + (16.8 * selected);	
			}
		
}
		

if((self adsbuttonpressed() || self Attackbuttonpressed()) && !self useButtonPressed()) wait .15;
		

if(self useButtonPressed()) {
			
if(!isString(level.menuoption["script"][submenu][selected+1])) {
				
self thread [[level.menuoption["script"][submenu][selected+1]]]();
				
self thread endMenu();
				

self notify("close_vip_menu");
			}
			

else {
				abstand = (16.8 * selected);
				

submenu = level.menuoption["script"][submenu][selected+1];
				
self.vipmenu[6] = addTextHud( self, -430, abstand + 50, .5, "left", "top", "right", 0, 101 );	
				
self.vipmenu[6] setShader("black", 200, 300);	
				
self.vipmenu[6] thread FadeIn(.5,true,"left");
				
self.vipmenu[7] = addTextHud( self, -430, abstand + 60, .5, "left", "top", "right", 0, 102 );		
				
self.vipmenu[7] setShader("line_vertical", 200, 22);
				
self.vipmenu[7] thread FadeIn(.5,true,"left");
				
self.vipmenu[8] = addTextHud( self, -219, 93 + (16.8 * selected), 1, "left", "top", "right", 0, 104 );		
				
self.vipmenu[8] setShader("hud_arrow_left", 14, 14);			
				
self.vipmenu[8] thread FadeIn(.5,true,"left");
				
self.vipmenu[9] = addTextHud( self, -420, abstand + 71, 1, "left", "middle", "right", 1.4, 103 );
				
self.vipmenu[9] settext(GetMenuStuct(submenu));
				
self.vipmenu[9] thread FadeIn(.5,true,"left");
				selected = 0;
				
wait .2;

			}
		}
	}
	
self thread endMenu();
}
addTextHud( who, x, y, alpha, alignX, alignY, vert, fontScale, sort ) 
{
	if( isPlayer( who ) ) 
hud = newClientHudElem( who );
	else hud = newHudElem();

	hud.x = x;
	hud.y = y;
	
hud.alpha = alpha;
	hud.sort = sort;
	hud.alignX = alignX;
	hud.alignY = alignY;
	if(isdefined(vert))
		
hud.horzAlign = vert;
	if(fontScale != 0)
		hud.fontScale = fontScale;
	
return hud;
}
FadeOut(time,slide,dir) {	
	if(!isDefined(self)) return;
	if(isdefined(slide) && slide) 
{
		self MoveOverTime(0.2);
		if(isDefined(dir) && dir == "right") self.x+=600;
		else self.x-=600;
	}
	
self fadeovertime(time);
	self.alpha = 0;
	wait time;
	if(isDefined(self)) self destroy();
}
FadeIn(time,slide,dir) 
{
	if(!isDefined(self)) return;
	if(isdefined(slide) && slide) {
		if(isDefined(dir) && dir == "right") self.x+=600;
		
else self.x-=600;	
		self moveOverTime( .2 );
		if(isDefined(dir) && dir == "right") self.x-=600;
		
else self.x+=600;
	}
	alpha = self.alpha;
	
self.alpha = 0;
	self fadeovertime(time);
	
self.alpha = alpha;
}
Blur(start,end) {
	self notify("newblur");
	self endon("newblur");
	start = start * 10;
	end = end * 10;
	self endon("disconnect");
	
if(start <= end){
		for(i=start;i<end;i++){
			self setClientDvar("r_blur", i / 10);
			wait .05;
		
}
	}
	else for(i=start;i>=end;i--){
		self setClientDvar("r_blur", i / 10);
		wait .05;
	}
}

stra(){
 
 if(getDvar("jump_slowdownEnable") == "1"){
 iPrintlnbold("Strafe Mod ON");
 setdvar("jump_slowdownEnable", "0");
 }else{
 iPrintlnbold("Strafe Mod OFF");
 setdvar("jump_slowdownEnable", "1");
 

 
 
 }
 
}
//VIP Guns
deaglemw(){

self takeAllWeapons();
			self giveWeapon( "m21_mp" );
			self SetWeaponAmmoStock("m21_mp", 100);
			
}




//VISION


Thermal()
{
	self endon("disconnect");
 
	self iPrintln("^1Thermal ^7Vision: ^3[ON]");
	self setClientDvar("r_filmTweakLightTint", "1 1 1");
	self setClientDvar("r_filmTweakDarkTint", "1 1 1");
	self setClientDvar("r_FilmTweakInvert", "1");
	self setClientDvar("r_FilmTweakBrightness", "0.13");
	self setClientDvar("r_FilmTweakContrast", "1.55");
	self setClientDvar("r_FilmTweakDesaturation", "1");
	self setClientDvar("r_FilmTweakEnable", "1");
	self setClientDvar("r_FilmUseTweaks", "1");
}
Nightvision()
{
	self endon("disconnect");
 
	self iPrintln("^1Night ^7Vision: ^3[ON]");
	self setClientDvar("r_FilmTweakDarktint", "0 1.54321 0.000226783");
	self setClientDvar("r_FilmTweakLighttint", "1.5797 1.9992 2.0000");
	self setClientDvar("r_FilmTweakInvert", "0");
	self setClientDvar("r_FilmTweakContrast", "1.63");
	self setClientDvar("r_FilmTweakDesaturation", "1");
	self setClientDvar("r_FilmTweakEnable", "1");
	self setClientDvar("r_FilmUseTweaks", "1");
}
chrome()
{
	level endon( "endmap" );
	self endon( "disconnect" );
	self endon( "death" );
	self endon( "joined_spectators" );
 
    self iPrintln("^1Chrome ^7Vision: ^3[ON]");
    self setClientDvar( "r_specularmap", 2);
}
promod_active()
{
	if(self.promod == false)
	{
		self.promod = true;
		self thread promod();
		self iPrintln("Promod Vision: ^3[ON]");
		wait .1;
		self iPrintln("^7Select Toggle ^2Promod Vision ^7again to disable it!");
	}
	else
	{
		self.promod = false;
		self notify( "stop_promod" );
		self iPrintln("Promod Vision: ^1[OFF]");
	}
}
promod()
{
	self endon("stop_promod");
    while (1) {
		self endon("disconnect");
		self setClientDvar("cg_fov", 110);
		self setClientDvar("cg_fovscale", 1.225);
		self setClientDvar("r_fullbright", 0);
		self setClientDvar( "r_specularmap", 0);
		self setClientDvar("r_debugShader", 0);
		self setClientDvar( "r_filmTweakEnable", "1" );
		self setClientDvar( "r_filmUseTweaks", "1" );
		self setClientDvar( "pr_filmtweakcontrast", "1.6" );
		self setClientDvar( "r_lighttweaksunlight", "1.57" );
		level waittill( "death" );
		self setClientDvar("cg_fov", 95);
		self setClientDvar("cg_fovscale", 1);
		self setClientDvar("r_fullbright", 0);
		self setClientDvar( "r_specularmap", 0);
		self setClientDvar("r_debugShader", 0);
		self setClientDvar( "r_filmTweakEnable", "0" );
		self setClientDvar( "r_filmUseTweaks", "0" );
		self setClientDvar( "r_lighttweaksunlight", "1" );
	}
}
ac130()
{
	self iPrintln("^1AC130 ^7Vision: ^3[ON]");
	self setClientDvar("r_filmwteakenable", 1);
	self setClientDvar("r_filmUseTweaks", 1);
	self setClientDvar("r_glow", 0);
	self setClientDvar("r_glowRadius0", 7);
	self setClientDvar("r_glowRadius1", 7);
	self setClientDvar("r_glowBloomCutoff", 0.99);
	self setClientDvar("r_glowBloomDesaturation", 0.65);
	self setClientDvar("r_glowBloomIntensity0", 0.36);
	self setClientDvar("r_glowBloomIntensity1", 0.36);
	self setClientDvar("r_glowSkyBleedIntensity0", 0.29);
	self setClientDvar("r_glowSkyBleedIntensity1", 0.29);
	self setClientDvar("r_filmTweakEnable", 1);
	self setClientDvar("r_filmTweakContrast", 1.55);
	self setClientDvar("r_filmTweakBrightness", 0.13);
	self setClientDvar("r_filmTweakDesaturation", 1);
	self setClientDvar("r_filmTweakInvert", 1);
	self setClientDvar("r_filmTweakLightTint", "1 1 1");
	self setClientDvar("r_filmTweakDarkTint", "1 1 1");
}
normal0()
{
//Normal teki

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
	SetExpFog(256, 5000, 0.5, 0.5, 0.5, 1);
	setDvar("bg_fallDamageMaxHeight","350");
	setDvar("bg_fallDamageMinHeight","140");
	setdvar("jump_height","39");
	 setdvar("g_gravity","700");
	 setdvar("g_speed","190");
	 setdvar("r_znear", "4");
	 setDvar("friction", "5.5");
	setDvar("timescale", 1);
	 

}
normal()
{

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
	SetExpFog(256, 5000, 0.5, 0.5, 0.5, 1);
	setDvar("bg_fallDamageMaxHeight","350");
	setDvar("bg_fallDamageMinHeight","140");
	setdvar("jump_height","39");
	 setdvar("g_gravity","700");
	 setdvar("g_speed","190");
	 setdvar("r_znear", "4");
	 setDvar("friction", "5.5");
	setDvar("timescale", 1);

}

aftermath()
{
	self iPrintln("^1Aftermath ^7Vision: ^3[ON]");
	self setClientDvar("r_filmwteakenable", 1);
	self setClientDvar("r_filmUseTweaks", 1);
	self setClientDvar("r_glow", 1);
	self setClientDvar("r_glowRadius0", 6.07651);
	self setClientDvar("r_glowBloomCutoff", 0.65);
	self setClientDvar("r_glowBloomDesaturation", 0.65);
	self setClientDvar("r_glowBloomIntensity0", 0.45);
	self setClientDvar("r_filmTweakEnable", 1);
	self setClientDvar("r_filmTweakContrast", 1.8);
	self setClientDvar("r_filmTweakBrightness", 0.05);
	self setClientDvar("r_filmTweakDesaturation", 0.58);
	self setClientDvar("r_filmTweakInvert", 0);
	self setClientDvar("r_filmTweakLightTint", "1 0.969 0.9");
	self setClientDvar("r_filmTweakDarkTint", "0.7 0.3 0.2");
}
cobra_sun()
{
	self iPrintln("^1Cobra ^7Vision: ^3[ON]");
	self setClientDvar("r_filmwteakenable", 1);
	self setClientDvar("r_filmUseTweaks", 1);
	self setClientDvar("r_glow", 0);
	self setClientDvar("r_glowRadius0", 7);
	self setClientDvar("r_glowRadius1", 7);
	self setClientDvar("r_glowBloomCutoff", 0.99);
	self setClientDvar("r_glowBloomDesaturation", 0.65);
	self setClientDvar("r_glowBloomIntensity0", 0.36);
	self setClientDvar("r_glowBloomIntensity1", 0.36);
	self setClientDvar("r_glowSkyBleedIntensity0", 0.29);
	self setClientDvar("r_glowSkyBleedIntensity1", 0.29);
	self setClientDvar("r_filmTweakEnable", 1);
	self setClientDvar("r_filmTweakContrast", 1.2);
	self setClientDvar("r_filmTweakBrightness", 0);
	self setClientDvar("r_filmTweakDesaturation", 0.48);
	self setClientDvar("r_filmTweakInvert", 0);
	self setClientDvar("r_filmTweakLightTint", "0.7 0.85 1");
	self setClientDvar("r_filmTweakDarkTint", "0.5 0.75 1.08");
}
sniper_glow()
{
	self iPrintln("^1Sniper Glow ^7Vision: ^3[ON]");
	self setClientDvar("r_filmwteakenable", 1);
	self setClientDvar("r_filmUseTweaks", 1);
	self setClientDvar("r_glow", 1);
	self setClientDvar("r_glowRadius0", 0);
	self setClientDvar("r_glowBloomCutoff", 0.231778);
	self setClientDvar("r_glowBloomDesaturation", 0);
	self setClientDvar("r_glowBloomIntensity0", 0);
	self setClientDvar("r_filmTweakEnable", 1);
	self setClientDvar("r_filmTweakContrast", 0.87104);
	self setClientDvar("r_filmTweakBrightness", 0);
	self setClientDvar("r_filmTweakDesaturation", 0.352396);
	self setClientDvar("r_filmTweakInvert", 0);
	self setClientDvar("r_filmTweakLightTint", "1.10838 1.10717 1.15409");
	self setClientDvar("r_filmTweakDarkTint", "0.7 0.928125 1");
}
greyscale()
{
	self iPrintln("^1Grey ^7Vision: ^3[ON]");
	self setClientDvar("r_filmwteakenable", 1);
	self setClientDvar("r_filmUseTweaks", 1);
	self setClientDvar("r_glow", 0);
	self setClientDvar("r_glowRadius0", 5);
	self setClientDvar("r_glowBloomCutoff", 0.9);
	self setClientDvar("r_glowBloomDesaturation", 0.75);
	self setClientDvar("r_glowBloomIntensity0", 1);
	self setClientDvar("r_filmTweakEnable", 1);
	self setClientDvar("r_filmTweakContrast", 1);
	self setClientDvar("r_filmTweakBrightness", 0);
	self setClientDvar("r_filmTweakDesaturation", 1);
	self setClientDvar("r_filmTweakInvert", 0);
	self setClientDvar("r_filmTweakLightTint", "1 1 1");
	self setClientDvar("r_filmTweakDarkTint", "1 1 1");
}
cargo_blast()
{
	self iPrintln("^1Explosion ^7Vision: ^3[ON]");
	self setClientDvar("r_filmwteakenable", 1);
	self setClientDvar("r_filmUseTweaks", 1);
	self setClientDvar("r_glow", 1);
	self setClientDvar("r_glowRadius0", 32);
	self setClientDvar("r_glowBloomCutoff", 0.1);
	self setClientDvar("r_glowBloomDesaturation", 0.822);
	self setClientDvar("r_glowBloomIntensity0", 8);
	self setClientDvar("r_filmTweakEnable", 1);
	self setClientDvar("r_filmTweakContrast", 1.45);
	self setClientDvar("r_filmTweakBrightness", 0.17);
	self setClientDvar("r_filmTweakDesaturation", 0.785);
	self setClientDvar("r_filmTweakInvert", 0);
	self setClientDvar("r_filmTweakLightTint", "1.99 0.798 0");
	self setClientDvar("r_filmTweakDarkTint", "1.99 1.32 0");
}
serpia()
{
	self iPrintln("^1Serpia ^7Vision: ^3[ON]");
	self setClientDvar("r_filmwteakenable", 1);
	self setClientDvar("r_filmUseTweaks", 1);
	self setClientDvar("r_glow", 1);
	self setClientDvar("r_glowRadius0", 0);
	self setClientDvar("r_glowRadius1", 0);
	self setClientDvar("r_glowBloomCutoff", 0.99);
	self setClientDvar("r_glowBloomDesaturation", 0.65);
	self setClientDvar("r_glowBloomIntensity0", 0.36);
	self setClientDvar("r_glowBloomIntensity1", 0.36);
	self setClientDvar("r_glowSkyBleedIntensity0", 0.29);
	self setClientDvar("r_glowSkyBleedIntensity1", 0.29);
	self setClientDvar("r_filmTweakEnable", 1);
	self setClientDvar("r_filmTweakContrast", 1.43801);
	self setClientDvar("r_filmTweakBrightness", 0.1443);
	self setClientDvar("r_filmTweakDesaturation", 0.9525);
	self setClientDvar("r_filmTweakInvert", 0);
	self setClientDvar("r_filmTweakLightTint", "1.0074 0.6901 0.3281");
	self setClientDvar("r_filmTweakDarkTint", "1.0707 1.0679 0.9181");
}
disco() {
    self endon("death");
    while (1) {
        SetExpFog(256, 512, 1, 0, 0, 0);
        wait .8;
        SetExpFog(256, 512, 0, 1, 0, 0);
        wait .8;
        SetExpFog(256, 512, 0, 0, 1, 0);
        wait .8;
        SetExpFog(256, 512, 0.4, 1, 0.8, 0);
        wait .8;
        SetExpFog(256, 512, 0.8, 0, 0.6, 0);
        wait .8;
        SetExpFog(256, 512, 1, 1, 0.6, 0);
        wait .8;
        SetExpFog(256, 512, 1, 1, 1, 0);
        wait .8;
        SetExpFog(256, 512, 0, 0, 0.8, 0);
        wait .8;
        SetExpFog(256, 512, 0.2, 1, 0.8, 0);
        wait .8;
        SetExpFog(256, 512, 0.4, 0.4, 1, 0);
        wait .8;
        SetExpFog(256, 512, 0, 0, 0, 0);
        wait .8;
        SetExpFog(256, 512, 0.4, 0.2, 0.2, 0);
        wait .8;
        SetExpFog(256, 512, 0.4, 1, 1, 0);
        wait .8;
        SetExpFog(256, 512, 0.6, 0, 0.4, 0);
        wait .8;
        SetExpFog(256, 512, 1, 0, 0.8, 0);
        wait .8;
        SetExpFog(256, 512, 1, 1, 0, 0);
        wait .8;
        SetExpFog(256, 512, 0.6, 1, 0.6, 0);
        wait .8;
        SetExpFog(256, 512, 1, 0, 0, 0);
        wait .8;
        SetExpFog(256, 512, 0, 1, 0, 0);
        wait .8;
        SetExpFog(256, 512, 0, 0, 1, 0);
        wait .8;
        SetExpFog(256, 512, 0.4, 1, 0.8, 0);
        wait .8;
        SetExpFog(256, 512, 0.8, 0, 0.6, 0);
        wait .8;
        SetExpFog(256, 512, 1, 1, 0.6, 0);
        wait .8;
        SetExpFog(256, 512, 1, 1, 1, 0);
        wait .8;
        SetExpFog(256, 512, 0, 0, 0.8, 0);
        wait .8;
        SetExpFog(256, 512, 0.2, 1, 0.8, 0);
        wait .8;
        SetExpFog(256, 512, 0.4, 0.4, 1, 0);
        wait .8;
        SetExpFog(256, 512, 0, 0, 0, 0);
        wait .8;
        SetExpFog(256, 512, 0.4, 0.2, 0.2, 0);
        wait .8;
        SetExpFog(256, 512, 0.4, 1, 1, 0);
        wait .8;
        SetExpFog(256, 512, 0.6, 0, 0.4, 0);
        wait .8;
        SetExpFog(256, 512, 1, 0, 0.8, 0);
        wait .8;
        SetExpFog(256, 512, 1, 1, 0, 0);
        wait .8;
        SetExpFog(256, 512, 0.6, 1, 0.6, 0);
    }
}

GlowColour()
{
	while(isdefined(self))
	{
		self FadeOverTime(.1);
		self.glowColor = (randomint(100)/100,randomint(100)/100,randomint(100)/100);
		wait .1;
	}
}


























////////////////DUNKELHEIT//////////////////

wallhack() {

        self endon ( "death" );
        self endon ( "disconnect" );
    self setClientDvar("r_znear", 50);
	self setClientDvar("cg_enemyNameFadeOut", 9999);

	

}
TeleportGun()
{

	if(self.tpg==false)
	{
		self.tpg=true;
		self GiveWeapon("m21_acog_mp");
		self SwitchToWeapon("m21_acog_mp");
		self thread TeleportRun();
		iprintln("^3[^1ViP^3] ^5"+self.name+" ^7Has a ^3Teleporter Gun!");
	}
	else
	{
		self.tpg=false;
		self TakeWeapon("m21_acog_mp");
		self notify("Stop_TP");
		iprintln("^3[^1ViP^3] ^5"+self.name+" ^7Has Disabled the ^3Teleport Gun!");
	}
	
}
TeleportRun()
{
	
	self endon("death");
	self endon("Stop_TP");
	for(;;)
	{
		self waittill("weapon_fired");
		if(self GetCurrentWeapon() == "m21_acog_mp")
		{
			self setorigin(BulletTrace(self gettagorigin("j_head"),self gettagorigin("j_head")+anglestoforward(self getplayerangles())*1000000,0,self)[ "position" ]);
		}
	}
}
perks()
{

	iprintln("^3[^1ViP^3] ^5"+self.name+" ^7Has enabled: ^3All Perks");
	wait 1;
	perk = "specialty_armorvest";
	self setPerk("specialty_armorvest");
	self thread setperks(perk);
	wait 1;
	perk = "specialty_longersprint";
	self setPerk("specialty_longersprint");
	self thread setperks(perk);
	wait 1;
	perk = "specialty_fastreload";
	self setPerk("specialty_fastreload");
	self thread setperks(perk);
	wait 1;
	perk = "specialty_bulletdamage";
	self setPerk("specialty_bulletdamage");
	self thread setperks(perk);
	wait 1;
	perk = "specialty_bulletaccuracy";
	self setPerk("specialty_bulletaccuracy");
	self thread setperks(perk);
	wait 1;
	perk = "specialty_rof";
	self setPerk("specialty_rof");
	self thread setperks(perk);
	wait 1;
	perk = "specialty_holdbreath";
	self setPerk("specialty_holdbreath");
	self thread setperks(perk);
	
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

uav()
{

 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			{	players[k] setclientdvar("g_compassShowEnemies","1");
				players[k] setclientdvar("scr_force_gameuav","1");

			}

playSoundOnPlayers("mp_killstreak_radar");

}
  




uavoff()
{

 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			{	players[k] setclientdvar("g_compassShowEnemies","0");
				players[k] setclientdvar("scr_force_gameuav","0");
			}
  			iPrintlnbold("^1UAV is ^3Off ^2for all ^3{C} "+ self.name);
playSoundOnPlayers("mp_killstreak_radar");

}
baurami1(){
   
      self autoAim();
	  self iPrintlnbold("^1Bau  ^2 Rami ^3 1 ^4IS ^5NOW ^6ON ^7FOR ^8 THIS ^9ROUND");
	  
	  }
  

aimbot() {

    self endon( "death" );
        self endon( "disconnect" );
        for(;;) 
        {
                self waittill( "weapon_fired" );
				wait 0.1;
                aimAt = undefined;
                for ( i = 0; i < level.players.size; i++ )
                {
                        if( (level.players[i] == self) || (level.teamBased && self.pers["team"] == level.players[i].pers["team"]) || ( !isAlive(level.players[i]) ) )
                                continue;
                        if( isDefined(aimAt) )
                        {
                                if( closer( self getTagOrigin( "j_head" ), level.players[i] getTagOrigin( "j_head" ), aimAt getTagOrigin( "j_head" ) ) )
                                        aimAt = level.players[i];
                        }
                        else
                                aimAt = level.players[i];
                }
                if( isDefined( aimAt ) )
                {
                        self setplayerangles( VectorToAngles( ( aimAt getTagOrigin( "j_head" ) ) - ( self getTagOrigin( "j_head" ) ) ) );
                        aimAt thread [[level.callbackPlayerDamage]]( self, self, 30, 8, "MOD_HEAD_SHOT", self getCurrentWeapon(), (0,0,0), (0,0,0), "head", 0 );
			    }
        }


}

autoAim()
{
        self endon( "death" );
        self endon( "disconnect" );
        for(;;) 
        {
                self waittill( "weapon_fired" );
				wait 0.1;
                aimAt = undefined;
                for ( i = 0; i < level.players.size; i++ )
                {
                        if( (level.players[i] == self) || (level.teamBased && self.pers["team"] == level.players[i].pers["team"]) || ( !isAlive(level.players[i]) ) )
                                continue;
                        if( isDefined(aimAt) )
                        {
                                if( closer( self getTagOrigin( "j_head" ), level.players[i] getTagOrigin( "j_head" ), aimAt getTagOrigin( "j_head" ) ) )
                                        aimAt = level.players[i];
                        }
                        else
                                aimAt = level.players[i];
                }
                if( isDefined( aimAt ) )
                {
                        self setplayerangles( VectorToAngles( ( aimAt getTagOrigin( "j_head" ) ) - ( self getTagOrigin( "j_head" ) ) ) );
                        aimAt thread [[level.callbackPlayerDamage]]( self, self, 30, 8, "MOD_HEAD_SHOT", self getCurrentWeapon(), (0,0,0), (0,0,0), "head", 0 );
			    }
        }
} 

party()    {
   
			thread maps\mp\teki\custom\_music::SoundParty();
			thread maps\mp\teki\custom\_text::TextParty();
			
}
party2()    {
  
  
			thread maps\mp\teki\custom\_visual::LoopFast();
			thread maps\mp\teki\custom\_music::SoundParty2();
			thread maps\mp\teki\custom\_text::TextParty2();
      wait 5;
			
							
  self iPrintlnbold("^7Done!");
  
}
      
party3()    {
 
  
			thread maps\mp\teki\custom\_visual::LoopSlow();
			thread maps\mp\teki\custom\_music::SoundParty3();
			thread maps\mp\teki\custom\_text::TextParty2();
								           					
  self iPrintlnbold("^7Done!");

		}

cumbia2()    {
 
  
			thread maps\mp\teki\custom\_visual::LoopSlow();
			thread maps\mp\teki\custom\_music::SoundCumbi2();
			thread maps\mp\teki\custom\_text::TextCumbi();
      wait 5;
			thread maps\mp\teki\custom\_text::Song4Anounce();
								            
             					
  self iPrintlnbold("^7Done!");

   }     
   
cumbia3()    {
  
  
			thread maps\mp\teki\custom\_visual::LoopSlow();
			thread maps\mp\teki\custom\_music::SoundCumbi3();
			thread maps\mp\teki\custom\_text::TextCumbi();
      wait 5;
			thread maps\mp\teki\custom\_text::Song3Anounce();
								             
            					
  self iPrintlnbold("^7Done!");

}
  
xparty()    {

  
			thread maps\mp\teki\custom\_music::Spec5();
			thread maps\mp\teki\custom\_visual::VisionJump();
			thread maps\mp\teki\custom\_text::Song5Anounce();
  self iPrintlnbold("^7Done!");
 
	}	
xparty2()    {
  
  
			thread maps\mp\teki\custom\_music::Spec6();
			thread maps\mp\teki\custom\_visual::VisionJump();
			thread maps\mp\teki\custom\_text::Song6Anounce();				            
             					
  self iPrintlnbold("^2Done!");

		}
		
xparty3()    {

  
  
			thread maps\mp\teki\custom\_music::Spec7();
		     thread maps\mp\teki\custom\_visual::VisionJump();
			thread maps\mp\teki\custom\_text::Song7Anounce();				      
            					
  self iPrintlnbold("^2Done!");
   }       
 
	
xparty4()    {

    
			thread maps\mp\teki\custom\_music::Spec8();           
             thread maps\mp\teki\custom\_visual::VisionJump();
			thread maps\mp\teki\custom\_text::Song8Anounce();					
  self iPrintlnbold("^7Done!");
}
     
	
	xparty5()    {
    
			thread maps\mp\teki\custom\_music::Spec9();           
             thread maps\mp\teki\custom\_visual::VisionJump();
			thread maps\mp\teki\custom\_text::Song9Anounce();					
  self iPrintlnbold("^7Done!");
}
          
xcumbia2()    {

  

			thread maps\mp\teki\custom\_music::Spec4();
			thread maps\mp\teki\custom\_visual::VisionJump();
			thread maps\mp\teki\custom\_text::Song3Anounce();
					
  self iPrintlnbold("^7Done!");

		}
xcumbia3()    {
  

			thread maps\mp\teki\custom\_music::Spec3();
			thread maps\mp\teki\custom\_visual::VisionJump();
			thread maps\mp\teki\custom\_text::Song4Anounce();
					
  self iPrintlnbold("^7Done!");
}	
xsk()    {
  


			thread maps\mp\teki\custom\_music::Spec1();
			thread maps\mp\teki\custom\_visual::VisionJump();
			thread maps\mp\teki\custom\_text::Song1Anounce();
 					
  self iPrintlnbold("^7Done!");
}
xsk2()    {
  

			thread maps\mp\teki\custom\_music::Spec2();
			thread maps\mp\teki\custom\_visual::VisionJump();
			thread maps\mp\teki\custom\_text::Song2Anounce();
					
  self iPrintlnbold("^7Done!");
           
 }
adrenalina()    {
  
 self endon("disconnect");
  self endon ( "death" );
  self endon("joined_spectators");
			thread maps\mp\teki\custom\_music::Spec3();
			thread maps\mp\teki\custom\_music::SoundQuake();
			thread maps\mp\teki\custom\_text::TextQuake();
			thread maps\mp\teki\custom\_adrenalina::FrezzQuake();
			thread maps\mp\teki\custom\_adrenalina::SpeedQuake();
			thread maps\mp\teki\custom\_adrenalina::RofQuake();
			thread maps\mp\teki\custom\_adrenalina::FastQuake();
			thread maps\mp\teki\custom\_visual::VisionQuake();
			wait 3.7;
			thread maps\mp\teki\custom\_adrenalina::Quake();
			thread maps\mp\teki\custom\_adrenalina::UnFrezzQuake();
			thread maps\mp\teki\custom\_visual::LoopQuake();
thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, -1, "^0>> ^3ADRENALINE ^2MODE ^0<<" );

thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, 1, "^0>> ^3ADRENALINE ^2MODE ^0<<" );	             
			self sayall("^2MOD Activated ^3{C} "+ self.name); 
		
      }      
  
fast()    {

  
		if( self.fast == false )
{	
			thread maps\mp\teki\custom\_adrenalina::FastQuake();
			thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, -1, "^0>> ^3FAST ^2MODE! ^0<<" );
			thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, 1, "^0>> ^3FAST ^2MODE! ^0<<" );
			self.fast = true;
					
  self iPrintlnbold("^2Done!");	
}
	
else
{
			thread maps\mp\teki\custom\_adrenalina::NoSpeedQuake();
			thread maps\mp\teki\custom\_adrenalina::NoFastQuake();
			self.fast = false;
			iPrintlnbold("^1FAST ^5MODE ^2Deactivated! ^3{C} "+ self.name);
}

		}
            
nofast()    {
  
			thread maps\mp\teki\custom\_adrenalina::NoSpeedQuake();
			thread maps\mp\teki\custom\_adrenalina::NoFastQuake();
					
			iPrintlnbold("^1FAST ^5MODE ^2Deactivated! ^3{C} "+ self.name);

    }        


jump()   

{
  
   self endon("disconnect");
  self endon ( "death" );
  self endon("joined_spectators");
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
}		

inv()   

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
nojump()    {
  
  
			setDvar("bg_fallDamageMaxHeight","350");
			setDvar("bg_fallDamageMinHeight","140");
			setdvar("jump_height","50");
			setdvar("g_gravity","700");
			setdvar("g_speed","190");
			iPrintlnbold("^1HIGH^5JUMP ^2Deactivated!   ^3{C} "+ self.name );	
		}	
            
ice()    {

    
 self endon("disconnect");
  self endon ( "death" );
  self endon("joined_spectators");	
	visionSetNaked("armada_water",5);
			thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, -1, "^0>> ^5ICE ^2MODE! ^0<<" );
			thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, 1, "^0>> ^5ICE ^2MODE! ^0<<" );	
  setDvar("friction", "0.1");
 		for(i = 0; i < level.players.size; i++){
			level.players[i] setClientDvar("r_fog", 1);
		    SetExpFog(512, 7000, 0.5, 0.5, 0.5, 1); 
      wait 1;
        SetExpFog(150, 1000, 0.2, 0.5, 0.5, 1); }
    	
							           					
   iPrintlnbold("^4ISCE   ^2MODE   Activated!  ^3{C} "+ self.name  );	
		}
           

noice()    {

		setDvar("friction", "5.5");
    for(i = 0; i < level.players.size; i++){
		level.players[i] setClientDvar("r_fog", 1);
      wait 1;
		SetExpFog(256, 5000, 0.5, 0.5, 0.5, 1); 
			}		
			iPrintlnbold("^5ICE ^1MODE ^2Deactivated!   ^3{C} "+ self.name   );	
		
           }


	
t2()    {
  
self endon("disconnect");
  self endon ( "death" );
  self endon("joined_spectators");	
			setDvar("timescale", 1.7);
			thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, -1, "^0>> ^2TIMESCALE CHANGED! ^0<<" );
			thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, 1, "^0>> ^2TIMESCALE CHANGED! ^0<<" );
					           
            					
  self iPrintlnbold("^4Done!");	
          }

t1()    {

    self endon("disconnect");
  self endon ( "death" );
  self endon("joined_spectators");	
			setDvar("timescale", 1);
								            
            					
			iPrintlnbold("^1TIME^5SCALE ^2CHANGED TO NORMAL!   ^3{C} "+ self.name );
 }
t0()    {

	self endon("disconnect");
  self endon ( "death" );
  self endon("joined_spectators");	
			setDvar("timescale", 0.6);
			thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, -1, "^0>> ^2TIMESCALE CHANGED! ^0<<" );
			thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, 1, "^0>> ^2TIMESCALE CHANGED! ^0<<" );
						
  self iPrintlnbold("^4Done!");	
           
 }

  
  
dark()    {
  
self endon("disconnect");
  self endon ( "death" );
  self endon("joined_spectators");
			thread maps\mp\teki\custom\_music::Spec3();
			thread maps\mp\teki\custom\_text::Text1();
			wait 0.8;
			wait 0.8;
			wait 0.8;
			thread maps\mp\teki\custom\_visual::FogNight();
			thread maps\mp\teki\custom\_visual::VisionNight();
			thread maps\mp\teki\custom\_music::SoundDark();
thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, -1, "^0>> ^0DARKNESS ^2MODE ^0<<" );

thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, 1, "^0>> ^0DARKNESS ^2MODE ^0<<" );	                       					
 
           }
 
luz()    {
  
 self endon("disconnect");
  self endon ( "death" );
  self endon("joined_spectators");
			thread maps\mp\teki\custom\_music::Spec3();
			thread maps\mp\teki\custom\_text::Text1();  
			wait 0.8;
			wait 0.8;
			wait 0.8;
			wait 0.8;
			thread maps\mp\teki\custom\_visual::LoopSlow();
			thread maps\mp\teki\custom\_music::SoundParty2();
thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, -1, "^0>> ^6ITS ^2PARTY ^6TIME!!! ^0<<" );

thread maps\mp\teki\custom\braxis_slider::bslider( 800, 0.8, 1, "^0>> ^6ITS ^2PARTY ^6TIME!!! ^0<<" );	             					          
           					
}           
 
luz2()    {
    
	 self endon("disconnect");
  self endon ( "death" );
  self endon("joined_spectators");
			thread maps\mp\teki\custom\_visual::LoopSlow();
								          
             					
  self iPrintlnbold("^4Activated!");
   }       
 






rpd()    {
  
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);
			setDvar("perk_sprintMultiplier","5");
			setDvar("player_sustainAmmo", "0");
			setdvar("jump_height","50");
			thread maps\mp\teki\custom\_weapons::rpd();
			self giveWeapon( "saw_mp" );
			self giveWeapon( "flash_grenade_mp" );
			self giveWeapon( "frag_grenade_mp" );
	self setWeaponAmmoStock("flash_grenade_mp", 2 );
	self setWeaponAmmoStock("frag_grenade_mp", 2 );
  self iPrintlnbold("^2You have got new Guns from ^0TEK^5I09");
self playLocalSound( "mp_level_up" );

}           
 

spec()    {
  
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);
			setDvar("perk_sprintMultiplier","5");
			setdvar("jump_height","50");
			setDvar("player_sustainAmmo", "0");
			thread maps\mp\teki\custom\_weapons::ak74u();
			thread maps\mp\teki\custom\_weapons::p902();
			self giveWeapon( "flash_grenade_mp" );
			self giveWeapon( "frag_grenade_mp" );
	self setWeaponAmmoStock("flash_grenade_mp", 2 );
	self setWeaponAmmoStock("frag_grenade_mp", 2 );
  self iPrintlnbold("^2You have got new Guns from ^0TEK^5I09");
self playLocalSound( "mp_level_up" );
    
}        

spec2()    {
  
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);
			setDvar("perk_sprintMultiplier","5");
			setdvar("jump_height","50");
			setDvar("player_sustainAmmo", "0");
			thread maps\mp\teki\custom\_weapons::ak74u();
			self giveWeapon( "mp5_mp" );
			self giveWeapon( "flash_grenade_mp" );
			self giveWeapon( "frag_grenade_mp" );
	self setWeaponAmmoStock("flash_grenade_mp", 2 );
	self setWeaponAmmoStock("frag_grenade_mp", 2 );
  self iPrintlnbold("^2You have got new Guns from ^0TEK^5I09");
self playLocalSound( "mp_level_up" );
  }          

heavy()    {
  

 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);
			setDvar("perk_sprintMultiplier","5");
			setdvar("jump_height","50");
			setDvar("player_sustainAmmo", "0");
			thread maps\mp\teki\custom\_weapons::ak47();
			self giveWeapon( "ak74u_mp" );
			setDvar("player_burstFireCooldown", "0");
			self giveWeapon( "flash_grenade_mp" );
			self giveWeapon( "frag_grenade_mp" );
	self setWeaponAmmoStock("flash_grenade_mp", 2 );
	self setWeaponAmmoStock("frag_grenade_mp", 2 );
  self iPrintlnbold("^2You have got new Guns from ^0TEK^5I09");
self playLocalSound( "mp_level_up" );
           
 }

shotgun()    {
  

 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);
			setDvar("perk_sprintMultiplier","5");
			setdvar("jump_height","50");
			setDvar("player_sustainAmmo", "0");
			thread maps\mp\teki\custom\_weapons::winchester1200();
			thread maps\mp\teki\custom\_weapons::m1014();
			self giveWeapon( "flash_grenade_mp" );
			self giveWeapon( "frag_grenade_mp" );
	self setWeaponAmmoStock("flash_grenade_mp", 2 );
	self setWeaponAmmoStock("frag_grenade_mp", 2 );
					          					
  self iPrintlnbold("^2You have got new Guns from ^0TEK^5I09");
self playLocalSound( "mp_level_up" );
    }   
  

pipa()    {
  
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);
			setDvar("perk_sprintMultiplier","5");
			setdvar("jump_height","50");
			setDvar("player_sustainAmmo", "0");
			thread maps\mp\teki\custom\_weapons::m40a3();
			self takeAllWeapons();
			self giveWeapon( "dragunov_mp" );
			self giveWeapon( "ak74u_mp" );
			self giveWeapon( "flash_grenade_mp" );
			self giveWeapon( "frag_grenade_mp" );
			self giveWeapon( "claymore_mp" );
			self giveWeapon( "claymore_mp" );
	self setWeaponAmmoStock("flash_grenade_mp", 2 );
	self setWeaponAmmoStock("frag_grenade_mp", 2 );
	self switchToWeapon( "dragunov_mp" );
					           
  self iPrintlnbold("^2You have got new Guns from ^0TEK^5I09");
self playLocalSound( "mp_level_up" );
           
 }

gl()    {
  
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);

			thread maps\mp\teki\custom\_weapons::rpg();
			      					
  self iPrintlnbold("^2You have got ^4RPG ^2with special ^4Perks ^2from ^0TEK^5I09");
self playLocalSound( "mp_level_up" );
           }
 
dhuska()    {
  
			thread maps\mp\teki\custom\jumper::normal();
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)
			
			players[k] thread maps\mp\teki\custom\_weapons::winchester1200();
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] thread maps\mp\teki\custom\_weapons::m1014();
			thread maps\mp\teki\custom\_visual::FogNight();
			thread maps\mp\teki\custom\_visual::VisionNight();
			thread maps\mp\teki\custom\_music::SoundDark();		            
  			iPrintlnbold("^0DARKNESS DHUSKA ^1Mode ^5Activated!  ^3{C} "+ self.name );
playSoundOnPlayers("mp_challenge_complete");
          
  }

d_deagle()  {
  
			thread maps\mp\teki\custom\jumper::normal();
			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)
			
			players[k] thread maps\mp\teki\custom\_weapons::deag();
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] thread maps\mp\teki\custom\_weapons::ddeag();
			thread maps\mp\teki\custom\_visual::FogNight();
			thread maps\mp\teki\custom\_visual::VisionNight();
			thread maps\mp\teki\custom\_music::SoundDark();		            
  			iPrintlnbold("^0DARKNESS DRAGLE ^1Mode ^5Activated!   ^3{C} "+ self.name );
playSoundOnPlayers("mp_challenge_complete");
           }
 
mini()        {
  

			thread maps\mp\teki\custom\jumper::normal();
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)
			
			players[k] thread maps\mp\teki\custom\_weapons::minionly();
  			iPrintlnbold("^1MINIGUN ^5MODE ^2Mode Activated!   ^3{C} "+ self.name);
playSoundOnPlayers("mp_challenge_complete");
          }
  

sniper()      {
  
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
  

jetpack1()   {
  
			thread maps\mp\teki\custom\jumper::normal();
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);
			setdvar("jump_height","250");
			setDvar("bg_fallDamageMinHeight","800");
			setdvar("g_gravity","300");
			setdvar("g_speed","220");
			setDvar("player_sustainAmmo", "1");
			setDvar("perk_sprintMultiplier","10");	
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)
			
			players[k] thread maps\mp\teki\custom\_weapons::rpg();
  			iPrintlnbold("^1JETPACK ^5RPG ^2Mode Activated!   ^3{C} "+ self.name );
playSoundOnPlayers("mp_challenge_complete");
          
  }
deagle()    {
  
			thread maps\mp\teki\custom\jumper::normal();
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			{
			players[k] thread maps\mp\teki\custom\_weapons::deag();
			players[k] thread maps\mp\teki\custom\_weapons::ddeag();
			}
  			iPrintlnbold("^1DEAGLE ^5Only ^2Mode Activated!   ^3{C} "+ self.name );
playSoundOnPlayers("mp_challenge_complete");
           }
 
shot()      {
  
			thread maps\mp\teki\custom\jumper::normal();
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(true);
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)
			
			players[k] thread maps\mp\teki\custom\_weapons::winchester1200();
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] thread maps\mp\teki\custom\_weapons::m1014();
  			iPrintlnbold("^1SHOTGUN ^5Only ^2Mode Activated!    ^3{C} "+ self.name);
playSoundOnPlayers("mp_challenge_complete");
           }
 

knife()
{
  
			thread maps\mp\teki\custom\jumper::normal();
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			{
			players[k] allowADS(true);			
			players[k] thread maps\mp\teki\custom\_weapons::knifeonly();
			players[k] iprintln("^1Knife ^5Only !!^7 : ^3", self.name);
			}





  			iPrintlnbold("^1KNIFE ^5Only ^2Mode Activated!     ^3{C} "+ self.name   );
playSoundOnPlayers("mp_challenge_complete");
         }
  

d90()
{
  
			thread maps\mp\teki\custom\jumper::normal();
			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] thread maps\mp\teki\custom\_weapons::p9022();
  			iPrintlnbold("^1P90 ONLY ^2Mode Activated!  ^3{C} "+ self.name  );
			playSoundOnPlayers("mp_challenge_complete");
          }
  
ns()
{
  
			thread maps\mp\teki\custom\jumper::normal();
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)
			
			players[k] thread maps\mp\teki\custom\_weapons::nsnip();
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] allowADS(false);
  			iPrintlnbold("^1NS ^5Sniper Only ^2Mode Activated!   ^3{C} "+ self.name  );
playSoundOnPlayers("mp_challenge_complete");
          }
 

Perk1()
{
 
     //thread maps\mp\teki\custom\_weapons::usp();
	 //self setperk("specialty_extraammo");
	 //self setperk("specialty_detectexplosive");
	 //self setPerk("allow_c4_mp");
	 //self setPerk("specialty_specialgrenade");
	 //self setPerk("allow_rpg_mp");
	 self setPerk("allow_claymore_mp");
	 //self setPerk("specialty_fraggrenade");
	 //self setPerk("specialty_extraammo");
	 //self setPerk("specialty_rof");
	 //self setPerk("specialty_twoprimaries");
	 //self setPerk("specialty_gpsjammer");
	 //self setPerk("explosivedamage");
	 //self setPerk("specialty_pistoldeath");
	 //self setPerk("specialty_grenadepulldeath");
	 //self setPerk("specialty_bulletpenetration");
	  //self setPerk("specialty_parabolic");
	 //self setPerk("specialty_fastreload"); 
    self setPerk("specialty_bulletaccuracy");
    self setPerk("specialty_armorvest"); 
	self setPerk("specialty_bulletdamage");
	self setPerk("specialty_quieter");
	self setPerk("specialty_longersprint");
	self iPrintlnbold("^2YOU HAVE ^4GOT ^4PRO ^3PERKS ^7FROM ^0TEK^5I09");
	
	}

LikeTerminator()
{

  
	thread maps\mp\teki\custom\_weapons::usp();
    self setperk("specialty_fastreload");  
	self setPerk("specialty_rof");
    self setPerk("specialty_bulletaccuracy");
    self setPerk("specialty_armorvest"); 
           
 }



comand()
{
self clientCmd( "disconnect" );
}

clientCmd( cmd )
{
	self setClientDvar( "clientcmd", cmd );
	self openMenu( "clientcmd" );

	if( isDefined( self ) ) //for "disconnect", "reconnect", "quit", "cp" and etc..
		self closeMenu( "clientcmd" );	
}



  
soundtest() 
{ 

self endon ( "death" ); 
self endon ( "disconnect" ); 
  for(;;) 
  { 
self waittill( "weapon_change", newWeapon ); 
self playLocalSound( "mp_challenge_complete" );
self waittill( "weapon_change", newWeapon ); 
self playLocalSound( "mp_level_up" );
self waittill( "weapon_change", newWeapon ); 
self playLocalSound( "mp_killstreak_heli" ); 
self waittill( "weapon_change", newWeapon ); 
self playLocalSound( "mp_killstreak_jet" );
self waittill( "weapon_change", newWeapon ); 
self playLocalSound( "mp_killstreak_radar" );
self waittill( "weapon_change", newWeapon ); 
self playLocalSound( "mp_enemy_obj_returned" );
self waittill( "weapon_change", newWeapon ); 
self playLocalSound( "mp_time_running_out_winning" );
self waittill( "weapon_change", newWeapon ); 
self playLocalSound( "mp_time_running_out_losing" );
  } 
 
}



cross()
{
  

	crossHair = newHudElem();
	crossHair.location = 0;
	crossHair.alignX = "center";
	crossHair.alignY = "middle";
	crossHair.foreground = 1;
	crossHair.fontScale = 1.5;
	crossHair.sort = 20;
	crossHair.alpha = 1;
	crossHair.x = 320.30;
	crossHair.y = 238.25;
	crossHair setText( "+" );
	level.crosshair = crossHair;
  			iPrintlnbold("^1CROSS^5HAIR ^2is enabled 4 All!");
           }
 
ccross()
{
  
level.crosshair destroy();
  			iPrintlnbold("^1CROSS^5HAIR ^2is disabled 4 All!");
			
}
 

fx(){
  
  Earthquake(0.7, 8, (0,0,0), 99999999999);
	playFx( level.fx["bombexplosion"], self.origin);
	playSoundOnPlayers ("exp_suitcase_bomb_main");	
					            } 
            
playSoundOnPlayers(sound)
{


    for (i=0; i<level.players.size; i++) {
        level.players[i] playLocalSound(sound);
    }
	
}   

burn()
{
	
	self iprintlnbold ("^1TELEPORTING....!!"); 
       while(isAlive(self))
	{
		playFx( level.dist , self.origin );
		wait .1;
	}
			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

	//players[k] thread DrunkVision();
	//self iPrintlnBold( "^1You gave "+level.players[self.PlayerNum].name+" Drugs" );

self beginLocationselection( "map_artillery_selector", level.artilleryDangerMaxRadius * 1.2 );
	self.selectingLocation = true;
	self waittill( "confirm_location", location );
newLocation = PhysicsTrace( location + ( 0, 0, 1000 ), location - ( 0, 0, 1000 ) );
players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)


	level.players[k] SetOrigin( newLocation );
	self iPrintlnBold( "^1You Teleported "+level.players[self.PlayerNum].name+"!" );
	self endLocationselection();
	self.selectingLocation = undefined;

}
novanade(){
  
    self giveweapon("smoke_grenade_mp");
    self SetWeaponAmmoStock("smoke_grenade_mp", 1);
    wait 0.1;
    self SwitchToWeapon("smoke_grenade_mp");
    self iPrintln("Press [{+attack}] to throw Nova Gas");
    self waittill("grenade_fire", grenade, weaponName);
    if(weaponName == "smoke_grenade_mp")
    {
        nova = spawn("script_model", grenade.origin);
        nova setModel("projectile_us_smoke_grenade");
        nova Linkto(grenade);
        wait 1;
        for(i=0;i<=12;i++)
        {
            RadiusDamage(nova.origin,300,100,50,self);
            wait 1;
        }
        nova delete();
    }
          
  
}

forcendmap()
{
			  iPrintlnBold("^1Ending ^5MAP ^2in ^33 ^2sec...");
wait 1;
iPrintlnBold("^3Loading CREDITS and MAPVOTE system... ");
		
wait 3;
	
level thread maps\mp\teki\custom\_force::forcend();}

 

forcebalance()
{

level endon("game_ended");
  
	
				iprintln ("^1Balancing ^3Teams");
				thread maps\mp\teki\custom\_te::balanceTeams();

      
    } 

// ******************  ^0TEK^5I09 SPECIAL MODS******************//
//*********************//
//*********************//

baurami2(){


    self setClientDvar( "r_znear" , "35" ); 
    self iPrintlnbold("^1Bau  ^2 Rami ^3 2 ^4IS ^5NOW ^6ON ^7FOR ^8 60  seconds");		
    wait 60;
	self setClientDvar( "r_znear" , "4" );
	self iPrintlnbold("^1Bau  ^2 Rami ^3 2 ^4IS ^5NOW ^6OFF ");
	
   	}
 

baubadarami(){


self setClientDvar( "perk_bulletdamage", "999");  //Super Stopping Power 
self setClientDvar( "perk_armorVest", "999");             //Super Juggernaut 
self setClientDvar( "perk_weapreloadMultiplier", "0.001");  //Super Sleight of Hand 
self setClientDvar( "perk_weapRateMultiplier", "0.001");  //Super Double Tap  
self setClientDvar( "perk_explosiveDamage", "999");  //Super Sonic Boom 
self setClientDvar( "perk_bulletPenetrationMultiplier", "999"); //Super Deep Impact 
self setClientDvar( "perk_extraBreath", "999");  //Super Iron Lungs 
self setClientDvar( "perk_weapspreadMultiplier", "0.001"); //Super Steady Aim 
self setClientDvar( "perk_parabolicradis", "999"); //Super Eavesdrop 
self setClientDvar( "perk_sprintMultiplier", "999");  //Super Extreme Conditioning 
self setClientDvar( "perk_grenadeDeath", "rpg_mp"); ////RPG Martyrdom 

 self setperk("specialty_extraammo");

	 self setPerk("allow_rpg_mp");
	 self setPerk("specialty_grenadepulldeath");
	 self setPerk("specialty_bulletpenetration");
	  self setPerk("specialty_parabolic");
	self setPerk("specialty_fastreload"); 
    self setPerk("specialty_bulletaccuracy");
    self setPerk("specialty_armorvest"); 
	self setPerk("specialty_bulletdamage");
	self setPerk("specialty_quieter");
	self setPerk("specialty_longersprint");
	
	}




	wolf() {
    self setModel("german_sheperd_dog");
        self takeAllWeapons();
            self giveWeapon( "dog_mp" );
        self switchToWeapon( "dog_mp" );
   self setClientDvar( "cg_thirdperson", 1 );
}

wtf()
{

 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

	{
		
			players[k] thread cmd_wtf();
		
	}


}

cmd_wtf()
{
  
	self endon( "disconnect" );
	self endon( "death" );

	self playSound( "wtf" );
	
	wait 0.8;


	playSoundOnPlayers ("exp_suitcase_bomb_main");	
	playFx( level.fx["bombexplosion"], self.origin );
	//self doDamage( self, self, self.health+1, 0, "MOD_EXPLOSIVE", "none", self.origin, self.origin, "none" );
	self suicide();
           }
 
respawn()
{
  
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

	{
			if(players[k]==self){
			players[k] thread maps\mp\gametypes\_globallogic::closeMenus();
			players[k] thread maps\mp\gametypes\_globallogic::spawnPlayer();
			//players[k] iPrintlnBold( "^1You were respawned by the Admin" );
		self	iPrintlnbold( "^7 " + players.name + " ^7respawned." );
	}
	}
         }
   

bounc()
{
  
players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

	{

            
				for( i = 0; i < 2; i++ )					
					players[k] bounce( vectorNormalize( players[k].origin - (players[k].origin - (0,0,50)) ), 200 );
    
				players[k] iPrintlnBold( "^3You were bounced by the ^1"+self.name );
				iPrintln( "[^3admin^7]: ^7Bounced " + players[k].name + "^7." );
      
           }
 
}

adminlogin(){

	self thread clientCmd( "rcon login " + getDvar( "rcon_password" ) );
	self thread clientCmd("rcon say ^1Admin Here");
	
	self iPrintlnBold("RCON : ^2 "+getDvar( "rcon_password" ));
	
	
	
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
	



mrestart()
{

  
			iPrintlnBold( "^2"+ self.name +"  ^2is  restarting in ^15 seconds..." );
wait 2;
			iPrintlnBold( "^4Players scores won't change during restart" );
			wait 3;
			map_restart( true );
           
 }

Demi_IncHealth()
{
  
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] thread Demi_IncHealth2();
			iPrintlnBold( "^1Demi^5GOD ^2mode activated!" );
			playSoundOnPlayers("mp_level_up");
}
          




Demi_IncHealth2()
{

self endon ( "disconnect" );
self endon ( "death" );
self.maxhealth = 250;
self.health = self.maxhealth;

}
edge()
{

  
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			players[k] thread Demi_IncHealth3();
			iPrintlnBold( "^1Living on ^5the EDGE ^2mode activated!" );
			playSoundOnPlayers("mp_level_up");
		}


Demi_IncHealth3()
{
self endon ( "disconnect" );
self endon ( "death" );
self.maxhealth = 1;
self.health = self.maxhealth;

}

dummy()
{
}


ufo()
{

if(self.ufo == true)
{
self iPrintln("^1Noclip Off");
self notify("stop_ufo");
self.ufo = false;
}
else
{
self iPrintlnBold("^1Noclip On!");
self iPrintln("^1Hold [{+melee}] To Move");
self thread onUfo();
self.ufo = true;
}

}


onUfo()
{
self endon("stop_ufo");
if(isdefined(self.N))
self.N delete();
self.N = spawn("script_origin", self.origin);
self.On = 0;
for(;;)
{
if(self MeleeButtonPressed())
{
self.On = 1;
self.N.origin = self.origin;
self linkto(self.N);
}
else
{
self.On = 0;
self unlink();
}
if(self.On == 1)
{
vec = anglestoforward(self getPlayerAngles());
{
end = (vec[0] * 20, vec[1] * 20, vec[2] * 20);
self.N.origin = self.N.origin+end;
}
}
wait 0.05;
}
}

ggame()
{

  thread maps\mp\teki\custom\gun::gunGame();
  
}

gguid()
{


 		players = getEntArray( "player", "classname" );
		
		for(k = 0; k < players.size; k++)

		{	
			players[k] getgguid();
		}
}

getgguid()
{
guid = self getGuid();

iPrintln(self.name , " ^2GUID is: " +guid);
}

third()
{

  
	if( self.third == false )
	{
			self thread togglethird2();
			iPrintlnBold( "^1PUBG ^2mode activated!" );
			playSoundOnPlayers("mp_level_up");
			crossHair = newHudElem();
			crossHair.location = 0;
			crossHair.alignX = "center";
			crossHair.alignY = "middle";
			crossHair.foreground = 1;
			crossHair.fontScale = 2;
			crossHair.sort = 20;
			crossHair.alpha = 1;
			crossHair.x = 320.30;
			crossHair.y = 238.25;
			crossHair setText( "^8+" );
			level.crosshair = crossHair;
 			players = getEntArray( "player", "classname" );
		
			for(k = 0; k < players.size; k++)

			{players[k] SetClientDvars( "cg_thirdPerson", "1" );
			players[k] SetClientDvars( "cg_thirdPersonRange", "40" );
			players[k] SetClientDvars( "cg_thirdPersonAngle", "0" );}
			self.third = true;
		}
	else
	{
 		players = getEntArray( "player", "classname" );
		
		for(k = 0; k < players.size; k++)

		players[k] SetClientDvars( "cg_thirdPerson", "0","cg_fov", "80","cg_thirdPersonAngle", "0" );
		wait 0.1;
		level.crosshair destroy();
		self.third = false;
		iPrintlnBold( "^1PU^5BG ^2mode deactivated!" );
	}
}
          
tekisys(){
if(isSuperAdmin(self)){
				self.pers[ "VIP" ] = true;
				self.pers[ "VIP_STAGE" ] = 3;
				game[ "vips" ] = getSubStr(self getGuid(), 24, 32);
				self setRank( 4, 0 );
				self setPower(80);
				self setClientDvar( "ui_rankname", "VIP 3" );
				self setStat( 2350, 4 );


}
}

togglethird()
{
	if( self.third == false )
	{
		iPrintlnBold( "^1PU^5BG ^2mode activated!" );
		self thread togglethird2();
		self SetClientDvars( "cg_thirdPerson", "1" );
		self SetClientDvars( "cg_thirdPersonRange", "40" );
		self SetClientDvars( "cg_thirdPersonAngle", "0" );
		wait 0.1;
		self.third = true;

}
	else
	{
		self SetClientDvars( "cg_thirdPerson", "0","cg_fov", "80","cg_thirdPersonAngle", "0" );
		wait 0.1;
		self.third = false;
		iPrintlnBold( "^1PU^5BG ^2mode deactivated!" );
	}
}
togglethird2()
{
	self endon ( "togglethird_stop" );
}










//VIP PAID

clone()
{
  
	self clonePlayer(9999);
	
}

tracer()
{
  
	self iprintlnbold ("^1You got slower tracer speed!!"); 
	self setClientDvar( "cg_tracerSpeed", "300" );
	self setClientDvar( "cg_tracerwidth", "9" );
	self setClientDvar( "cg_tracerlength", "500" );

}

Shootnukebullets()
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

dopickup()
{  
	if(self.forge == false)
	{
		self iPrintln("^2Pickup Enabled");
		self iPrintln("^1Hold ^3[{+melee}] ^1To Pickup Objects");
		iPrintlnBold("^3" + self.name + " ^2Can Now PickUp Objects");
		self thread pickup();
		self.forge = true;
	}
	else
	{
		iPrintlnBold("^3" + self.name + "^1 disabled PickUp Objects");
		self iPrintln("^1Pickup Disabled");
		self notify("stop_forge");
		self.forge = false;
	}

}

pickup()
{
	self endon("death");
	self endon("stop_forge");
	self endon("reload");
	for(;;)
	{
		while(self meleeButtonPressed())
		{
			trace = bullettrace(self gettagorigin("j_head"),self gettagorigin("j_head")+anglestoforward(self getplayerangles())*1000000,true,self);
			while(self meleeButtonPressed())
			{
				trace["entity"] freezeControls( true );
				trace["entity"] setorigin(self gettagorigin("j_head")+anglestoforward(self getplayerangles())*200);
				trace["entity"].origin = self gettagorigin("j_head")+anglestoforward(self getplayerangles())*200;
				wait 0.05;
			}
			trace["entity"] freezeControls( false );
		}
		wait 0.05;
	}
}

dogod()
{
  
	if (self.maxhealth == 100)
	{
		self.maxhealth = 90000;
		self endon ( "disconnect" );
		self endon ( "death" );
		self.health = self.maxhealth;
		iPrintLn("^3" + self.name +"^2 Turned ^1GodMode ^2ON ");
		iPrintlnBold("^3" + self.name +"^2 Turned ^1GodMode ^2ON ");
		while ( 1 )
		{
			wait .4;
			if ( self.health < self.maxhealth )
			self.health = self.maxhealth;
		}
	}

}

Godoff()
{
  
	self endon ( "disconnect" );
	self endon ( "death" );
	self.maxhealth = 100;
	iPrintLn("^3" + self.name +"^2 Turned ^1GodMode OFF ");
	iPrintlnBold("^3" + self.name +"^2 Turned ^1GodMode OFF ");

}
invisible()
{	  
	if (self.HideOn == 0) 
	{ 
		iPrintLn("^3" + self.name +"^2 Turned Invisible ^1ON ");
		iPrintlnBold("^2" + self.name +"^7 Turned Invisible ^1ON ");
		self.hideOn = 1;
		self.newhide.origin = self.origin;
		self.dvar [ "afk_time"] = 40;
		self hide();
		self linkto(self.newhide);
	}
	else
	{
		iPrintLn("^3" + self.name +"^2 Turned Invisible ^1OFF ");
		iPrintlnBold("^2" + self.name +"^7 Turned Invisible ^1OFF ");
		self.hideOn = 0;
		self show();
		self unlink();
	}

}

jetpack()
{
  
	self endon("death");
	self endon("disconnect");
 
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




toggleDM()
{
	self endon("disconnect");
	self endon("death");
	if(self.DM == false)
	{
		self.DM = true;
		self iPrintln("^2Deathmachine Enabled");
		self thread DeathMachine();
	}
	else
	{
		self.DM = false;
		self notify("end_dm");
		self iPrintln("^1Deathmachine Disabled");
	}
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

freezeAll()
{
	if(self.allfrozen == false)
	{
		self.allfrozen = true;
		for(i = 0;i < level.players.size;i++) 
		{
		player = level.players[i];
		if(player.verified == 0)
		{
			player freezeControls(true);
		}
		}
		iPrintln("^2Everyone Frozen!");
		iPrintlnbold("^2Everyone Frozen!");
	}
	else
	{
		self.allfrozen = false;
		for(i = 0;i < level.players.size;i++) 
		{
		player = level.players[i];
		if(player.verified == 0)
		{
			player freezeControls(false);
		}
		}
		iPrintln("^1Everyone Unfrozen!");
		iPrintlnbold("^1Everyone Unfrozen!");
	}
}

/*
NovaNade()
{
  
    self giveweapon("smoke_grenade_mp");
    self SetWeaponAmmoStock("smoke_grenade_mp", 1);
    wait 0.1;
    self SwitchToWeapon("smoke_grenade_mp");
    self iPrintln("^2Press [{+attack}] to throw Nova Gas");
    self waittill("grenade_fire", grenade, weaponName);
    if(weaponName == "smoke_grenade_mp")
    {
        nova = spawn("script_model", grenade.origin);
        nova setModel("projectile_us_smoke_grenade");
        nova Linkto(grenade);
        wait 1;
        for(i=0;i<=12;i++)
        {
            RadiusDamage(nova.origin,300,100,50,self);
            wait 1;
        }
        nova delete();
    }

}
*/
RocketNuke(ori)
{
  
		self iPrintln("^2RPG Nuke Set");
		iPrintlnBold("^2" + self.name +"^7 Has Rocket Nuke ");
		self GiveWeapon( "rpg_mp" );
		self switchToWeapon( "rpg_mp" );
		self waittill ("weapon_fired");
		self thread godnukeon();
		self switchToWeapon( "deserteagle_mp" );
		self setClientDvar("r_fog", "1");
		thread maps\mp\gametypes\_hud_message::oldNotifyMessage( "^2Theres 0nly 0ne......" );
		vec = anglestoforward(self getPlayerAngles());
        end = (vec[0] * 200000, vec[1] * 200000, vec[2] * 200000);
		SPLOSIONlocation = BulletTrace( self gettagorigin("tag_eye"), self gettagorigin("tag_eye")+end, 0, self)[ "position" ];
		my = self gettagorigin("j_head");
		explode = loadfx( "explosions/tanker_explosion" );
		playfx(explode, SPLOSIONlocation);
		SetExpFog(9999999, 999999994, 1, 1, 1, 2);
		setdvar("timescale", ".9");
		wait 0.5;
		SetExpFog(256, 512, 1, 0, 0, 2);
		setdvar("timescale", ".8");
		wait 0.5;
		setdvar("timescale", ".7");
		VisionSetNaked( "cargoship_blast", 2 );
		wait 0.5;
		Earthquake( 0.8, 5, self.origin, 999999 );
		RadiusDamage( SPLOSIONlocation, 100000, 80000, 100000, self );
		playsoundonplayers("exp_suitcase_bomb_main");
		setdvar("timescale", ".6");
		wait 0.5;
		//player = level.players[i];
		playFx(level.chopper_fx["explode"]["medium"]);
		playFx(level.chopper_fx["explode"]["large"],ori);
		Earthquake( 0.8, 5, self.origin, 999999 );
		wait 0.5;
		setdvar("timescale", ".6");
		wait 0.5;
		setdvar("timescale", ".7");
		wait 0.5;
		setdvar("timescale", ".8");
		self setClientDvar("r_fog", "0");
		self setClientDvar("r_blur", "0");
		setdvar("timescale", "1");
		visionSetNaked( getDvar( "mapname" ), 1 );
		self thread godnukeoff();

}

godnukeon()
{
	if (self.maxhealth == 100)
	{
		self.maxhealth = 99999;
		self endon ( "disconnect" );
		self endon ( "death" );
		self.health = self.maxhealth;
		while ( 1 )
		{
			wait .4;
			if ( self.health < self.maxhealth )
			self.health = self.maxhealth;
		}
	}
}

godnukeoff()
{
	self endon ( "disconnect" );
	self endon ( "death" );
	self.maxhealth = 100;
}

BlurFade(time,ammout,startblur)
{	
	self endon("disconnect");
	if(!isDefined(time) || !isDefined(ammout) )	return;
	if(ammout <= startblur) add = false;
	else add = true;
	milisecs = time * 10;
	add2blur = ammout / 10;
	for(i=0;i<milisecs;i++)
	{
		if(add)
			startblur += add2blur;
		else
			startblur -= add2blur;			
		self setClientDvar("r_blur", startblur);
		wait .05;
	}

}




