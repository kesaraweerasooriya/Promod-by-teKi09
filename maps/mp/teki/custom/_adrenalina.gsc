FrezzQuake()
{
	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
	players [k] FreezeControls(1);
}
SpeedQuake()
{
	level endon("stopparty");
	for(;;)
	{	
	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
		players[k] SetMoveSpeedScale( 2.5 ); 
	wait 4;		
	}
}
RofQuake()
{
	level endon("stopparty");
	for(;;)
	{	
	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
		players[k] setPerk("specialty_rof");
	wait 4;		
	}
}
FastQuake()
{	
	level endon("stopparty");
	for(;;)
	{	
	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
		players[k] setperk( "specialty_fastreload" );  
	wait 4;		
	}
}
NoFastQuake()
{	
	level endon("stopparty");
	for(;;)
	{	
	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
		players[k] setperk( "specialty_null" );  
	wait 4;		
	}
}
NoSpeedQuake()
{
	level endon("stopparty");
	for(;;)
	{	
	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
		players[k] SetMoveSpeedScale( 1.0 ); 
	wait 4;		
	}
}
UnFrezzQuake()
{
	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
	players [k] FreezeControls(0);
}
Quake()
{
	level endon("stopparty");
	for(;;)
	{	
	position = level.mapCenter;
	earthquake( 1, 1.5, position, 80000);
	wait 10;
	}
}
