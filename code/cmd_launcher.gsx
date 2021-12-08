init()
{
	level endon( "game_ended" );
	
	for(;;)
	{
		if( getDvar( "cmd" ) != "" )
		{
			data = strTok( getDvar("cmd"), ":" );

			if( isDefined( data[0] ) && isDefined( data[1] ) )
			{
				thread code\admin::adminCommands( data, "number" );
				setDvar( "cmd", "" );
			}
		}

		wait .1;
	}
}