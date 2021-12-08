#include jen\_general;

main()
{
	self endon( "disconnect" );
	for(;;)
	{
		level waittill( "connected", player );

		player thread Setup_KillRatio();
//		player thread Overlay();
	}

}

Overlay()
{
        overlay = overlayMessage(&"Bajas: ^4", self.kills, (0,0,1), 1.4);
        overlay.alignX = "right";
        overlay.horzAlign = "right";
		overlay.horzAlign = "left";
		overlay.vertAlign = "top";
		overlay.alignX = "left";
		overlay.alignY = "middle";
		overlay.x = 7;
		overlay.y = 140;
        overlay.font = "default";
		
        overlay2 = overlayMessage(&"Muertes: ^4", self.deaths, (0,0,1), 1.4);
        overlay2.alignX = "right";
        overlay2.horzAlign = "right";
		overlay2.horzAlign = "left";
		overlay2.vertAlign = "top";
		overlay2.alignX = "left";
		overlay2.alignY = "middle";
		overlay2.x = 7;
		overlay2.y = 160;
        overlay2.font = "default";

}

Setup_KillRatio()
{
	self.ratio = 0.00;
	while(1)
	{
		self waittill( "spawned_player" );
		self thread CheckKillsDeaths();
	}
}

CheckKillsDeaths()
{
	self endon( "disconnect" );
	self endon( "joined_spectators" );
	self endon( "death" );

	self thread HUD_Ratio();
	
	self.notrunnedyet = 1;
	
	if(self.deaths != 0 && self.notrunnedyet == 1)
	{
		while(1)
		{
			if(self.ratio != (self.kills / self.deaths))
			{
				self.ratio = (self.kills / self.deaths);
				self notify( "Score_changed" );
			}
			self.notrunnedyet = 0;
			wait .05;
		}
	}
	else if(self.deaths == 0)
		self thread firstkills();
}

firstkills()
{
	self endon( "disconnect" );
	self endon( "joined_spectators" );
	self endon( "death" );

	while(1)
	{
		if(self.ratio != self.kills)
		{
			self.ratio = self.kills;
			self notify( "Score_changed" );
		}
		wait .05;
	}
}

HUD_Ratio()
{
	if( isdefined( self.HUD_Ratio ))
		self.HUD_Ratio destroy();

	wait .05;

	self.HUD_Ratio = newClientHudElem( self );
	self.HUD_Ratio.x = 7;
	self.HUD_Ratio.y = 130;
    self.HUD_Ratio.glowAlpha = 1;
    self.HUD_Ratio.hideWhenInMenu = true;
	self.HUD_Ratio.horzAlign = "left";
	self.HUD_Ratio.vertAlign = "top";
	self.HUD_Ratio.alignX = "left";
	self.HUD_Ratio.alignY = "middle";
	self.HUD_Ratio.alpha = 1;
    self.HUD_Ratio.glowAlpha = 1;
	self.HUD_Ratio.fontScale = 1.4;
    self.HUD_Ratio.glowColor = (0,0,1);
	self.HUD_Ratio.color = (1, 1, 1);
	self.HUD_Ratio.hidewheninmenu = true;
	self.HUD_Ratio.label = ( &"Kill Ratio: " );

	while(1)
	{
		self.HUD_Ratio SetValue( alternative(self.ratio) );
		self color(self.ratio);	
		self waittill( "Score_changed" );
	}

}

twodecimals(integer)
{
	integerstring = integer;
	if(IsSubStr( integerstring, "."))
	{
		twodecimals = 0;
		for(integerdot = integerstring.size;isNumber(integerstring[ integerdot ]) && integerdot > 0;integerdot--)
			twodecimals = integerdot + 2;
		if(integerstring.size > twodecimals)
		{
			newVal = GetSubStr( integerstring, 0, twodecimals);
			return newVal;
		}
		else
			return integer;
	}
	else
		return integer;
}

isNumber(string)
{
	if(string == "1" || string == "2" || string == "3" || string == "4" || string == "5" || string == "6" || string == "7" || string == "8" || string == "9" || string == "0" )
		return true;
	else
		return false;
}

alternative(integer)
{
	if(IsSubStr( integer, "."))
	{
		twodecimals = integer * 100;
		newVal = int(twodecimals) * 0.01;
		return newVal;
	}
	else
		return integer;
}

color(value)
{
	if(value < 1.00)  //make red
		self.HUD_Ratio.glowColor = (0,0,1);
	else
		self.HUD_Ratio.glowColor = (0,1,0);
}