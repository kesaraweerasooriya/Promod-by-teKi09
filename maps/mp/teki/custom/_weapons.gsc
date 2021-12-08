rpg()
{
 PreCacheItem("rpg_mp");
		/*players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
    players[k]*/ rpgGet();
}  
rpgGet() 
{
  	self takeAllWeapons();
		self giveWeapon( "rpg_mp" );
		self SwitchToWeapon( "rpg_mp" );
}    
ak74u()
{
		 ak74uGet();
}  
ak74uGet() 
{
  	self takeAllWeapons();
		self giveWeapon( "ak74u_mp" );
		self SwitchToWeapon( "ak74u_mp" );
}        
winchester1200()
{
		 winchester1200Get();
}  
winchester1200Get() 
{
  	self takeAllWeapons();
		self giveWeapon( "winchester1200_mp" );
		self SwitchToWeapon( "winchester1200_mp" );
} 
m40a3()
{
		 m40a3Get();
}  
m40a3Get() 
{
  	self takeAllWeapons();
		self giveWeapon( "m40a3_mp" );
		self SwitchToWeapon( "m40a3_mp" );
} 
colt45()
{
		 colt45Get();
}  
colt45Get() 
{
  	self takeAllWeapons();
		self giveWeapon( "colt45_mp" );
		self SwitchToWeapon( "colt45_mp" );
}   
gl()
{
 PreCacheItem("dragunov_mp");
		 glGet();
}  
glGet() 
{
  	self takeAllWeapons();
		self giveWeapon( "dragunov_mp" );
		self SwitchToWeapon( "dragunov_mp" );
} 
m9()
{
		 m9Get();
}  
m9Get() 
{
  	//self takeAllWeapons();
		self giveWeapon( "beretta_mp" );
		//self SwitchToWeapon( "beretta_mp" );
}  

m16()
{
		 m16Get();
}  
m16Get() 
{
  	self takeAllWeapons();
		self giveWeapon( "m16_mp" );
		self SwitchToWeapon( "m16_mp" );
}
rpd()
{
		
    rpdGet();
}  
rpdGet() 
{
  	self takeAllWeapons();
		self giveWeapon( "rpd_mp" );
		self SwitchToWeapon( "rpd_mp" );
}
p90()
{
		
    p90Get();
}  
p90Get() 
{
  	self takeAllWeapons();
		self giveWeapon( "p90_mp" );
		self SwitchToWeapon( "p90_mp" );
}
usp()
{
		
    uspGet();
}  uspGet() 
{
  	self takeAllWeapons();
		self giveWeapon( "usp_mp" );
		self SwitchToWeapon( "usp_mp" );
}
skorpion()
{
     
    skorpionGet();
} skorpionGet() 
{
  	//self takeAllWeapons();
		self giveWeapon( "skorpion_mp" );
		//self SwitchToWeapon( "mp5_mp" );
}
p902()
{
		  p902Get();
}  
p902Get() 
{
  	//self takeAllWeapons();
		self giveWeapon( "p90_mp" );
		//self SwitchToWeapon( "p90_mp" );
}
m1014()
{
		 m1014Get();
}  m1014Get() 
{
  	//self takeAllWeapons();
		self giveWeapon( "m1014_mp" );
		//self SwitchToWeapon( "m1014_mp" );
}
m162()
{
		  m162Get();
}  
m162Get() 
{
  	//self takeAllWeapons();
		self giveWeapon( "m16_mp" );
		self SwitchToWeapon( "m16_mp" );
}

deag()
{
		deagGet();
}  deagGet() 
{
  	self takeAllWeapons();
		self giveWeapon( "deserteagle_mp" );
	self setWeaponAmmoStock("deserteagle_mp", 100 );		self SwitchToWeapon( "deserteagle_mp" );
}
snip()
{
		 snipGet();
}  
snipGet() 
{
  	self takeAllWeapons();
		self giveWeapon( "m40a3_mp" );
		self SwitchToWeapon( "m40a3_mp" );
}
ddeag()
{
		 ddeagGet();
}  ddeagGet() 
{
  	//self takeAllWeapons();
	self setWeaponAmmoStock("deserteagle_mp", 100 );		self giveWeapon( "deserteaglegold_mp" );
		//self SwitchToWeapon( "deserteaglegold_mp" );
}
m92()
{
		 m92Get();
}  
m92Get() 
{
  	 self takeAllWeapons();
		self giveWeapon( "beretta_mp" );
  		self SwitchToWeapon( "beretta_mp" );
}
sniponly()
{
	self takeAllWeapons();
	self giveweapon( "remington700_mp" );
	self setWeaponAmmoClip("remington700_mp", 100 );
	self setWeaponAmmoStock("remington700_mp", 100 );
	self giveweapon( "m40a3_mp" );
	self setWeaponAmmoClip("m40a3_mp", 100 );
	self setWeaponAmmoStock("m40a3_mp", 100 );
	self iprintln("^5Scope Only !!^7 : ^3", self.name);
	self SwitchToWeapon( "remington700_mp" );
	setDvar("player_meleeRange", 0);
}
knifeonly()
{
/*	self endon( "death" );
	self endon( "disconnect" );
	self endon( "game_ended" );
*/
	self takeAllWeapons();
	setDvar("player_meleeRange", 64);
	self allowADS(true);
	self setclientdvar("g_compassShowEnemies",1);
	self giveWeapon("deserteagle_mp", 0, true);
	self setWeaponAmmoClip("deserteagle_mp", 0 );
	self setWeaponAmmoStock("deserteagle_mp", 0 );
	wait ( 0.5 );
	self SwitchToWeapon( "deserteagle_mp" );
}

nsnip()
{
	self endon( "death" );
	self endon( "disconnect" );
	self endon( "game_ended" );
	self takeAllWeapons();
	self giveweapon( "m40a3_mp" );
	self setWeaponAmmoStock("m40a3_mp", 9999 );
	self AllowAds( false );
	wait ( 0.5 );
	self iprintln("^5No Scope Only !!^7 : ^3", self.name);
	self giveWeapon("deserteagle_mp", 0, true);
	self setWeaponAmmoClip("deserteagle_mp", 0 );
	self setWeaponAmmoStock("deserteagle_mp", 0 );
	self SwitchToWeapon( "m40a3_mp" );
	setDvar("player_meleeRange", 0);
}
minionly()
{
		  miniGet();
}  
miniGet() 
{
  	self takeAllWeapons();
		self giveWeapon( "skorpion_mp" );
		self SwitchToWeapon( "skorpion_mp" );
}

ak47()
{
 ak47Get();
}  
ak47Get() 
{
  	 self takeAllWeapons();
		self giveWeapon( "ak47_mp" );
  		self SwitchToWeapon( "ak47_mp" );
}
p9022()
{
		  p9022Get();
}  
p9022Get() 
{
  	self takeAllWeapons();
		self giveWeapon( "p90_mp" );
		self SwitchToWeapon( "p90_mp" );
}