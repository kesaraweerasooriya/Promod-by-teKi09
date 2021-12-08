init()
{
	level thread onPlayerConnect();
}

onPlayerConnect()
{
	for( ;; )
	{
		level waittill( "connecting", player );

		if( isdefined( player.pers["player_welcomed"] ) )
			return;
		player.pers["player_welcomed"] = true;
		
		player thread onSpawnPlayer();
		
	}
}

onSpawnPlayer()
{
	self endon ( "disconnect" );
	self waittill( "spawned_player" );
	self.msgactive = 1;
	self setClientDvar("cg_fovscale",1.125);
	//self setClientDvar("r_fullbright",1);
	self setClientDvar("cg_fov",80);
	self setStat(3255,7);
	self iPrintln( "" );
	self iPrintln( "" );
	self setStat(714,1);
	notifyData = spawnStruct();
	notifyData.titleText = "^1WELCOME TO CALL OF DUTY 4 PROMOD";
	notifyData.notifyText = "Hi! Vroo " + (self.name)+ "";
	notifyData.glowColor = (.1, .4, 0);
	notifyData.duration = 8;
	self playLocalSound("welcome");
	maps\mp\gametypes\_hud_message::notifyMessage( notifyData );
	wait 5;	
self thread credits3();

}




showCredit( text, scale )
{
	end_text = newHudElem();
	end_text.font = "objective";
	end_text.fontScale = scale;
	end_text SetText(text);
	end_text.alignX = "center";
	end_text.alignY = "top";
	end_text.horzAlign = "center";
	end_text.vertAlign = "top";
	end_text.x = 0;
	end_text.y = 540;
	end_text.sort = -1; //-3
	end_text.alpha = 1;
	//end_text.glowColor = (.1,.8,0);
	//end_text.glowAlpha = 1;
	end_text moveOverTime(level.creditTime);
	end_text.y = -60;
	end_text.foreground = true;
	wait level.creditTime;
	end_text destroy();
}

credits3()
{
wait 5;
    self iPrintlnbold("^1>^2>^3> SERVER OWNER "+getDvar("owner"));
	//		self iPrintln( "^0Server ^1Owner^2:" );



}

bslider( start_offset, movetime, mult, text )
{
	start_offset *= mult;
	hud = brax_hud( "center", 0.1, start_offset, 90 );
	hud setText( text );
	hud moveOverTime( movetime );
	hud.x = 0;
	wait( movetime );
	wait( 3 );
	hud moveOverTime( movetime );
	hud.x = start_offset * -1;

	wait movetime;
	hud destroy();
}
bslider2( start_offset, movetime, mult, text )
{
	start_offset *= mult;
	hud = brax_hud2( "center", 0.1, start_offset, 90 );
	hud setText( text );
	hud moveOverTime( movetime );
	hud.x = 0;
	wait( movetime );
	wait( 3 );
	hud moveOverTime( movetime );
	hud.x = start_offset * -1;

	wait movetime;
	hud destroy();
}
brax_hud( align, fade_in_time, x_off, y_off )
{
	hud = newHudElem();
    hud.foreground = true;
	hud.x = x_off;
	hud.y = y_off;
	hud.alignX = align;
	hud.alignY = "middle";
	hud.horzAlign = align;
	hud.vertAlign = "middle";

 	hud.fontScale = 3;

	hud.color = (0.8, 1.0, 0.8);
	hud.font = "objective";
	hud.glowColor = (0.3, 0.6, 0.3);
	hud.glowAlpha = 1;

	hud.alpha = 0;
	hud fadeovertime( fade_in_time );
	hud.alpha = 1;
	hud.hidewheninmenu = true;
	hud.sort = 10;
	return hud;
}
brax_hud2( align, fade_in_time, x_off, y_off )
{
	hud = newHudElem();
    hud.foreground = true;
	hud.x = x_off;
	hud.y = y_off;
	hud.alignX = align;
	hud.alignY = "middle";
	hud.horzAlign = align;
	hud.vertAlign = "middle";

 	hud.fontScale = 2;

	hud.color = (0.8, 1.0, 0.8);
	hud.font = "objective";
	hud.glowColor = (0.7, 0.2, 0.2);
	hud.glowAlpha = 1;

	hud.alpha = 0;
	hud fadeovertime( fade_in_time );
	hud.alpha = 1;
	hud.hidewheninmenu = true;
	hud.sort = 10;
	return hud;
}