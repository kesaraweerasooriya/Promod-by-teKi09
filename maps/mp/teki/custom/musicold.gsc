/// THE PARTY BAND
SoundParty3()
{
	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
			{player = players[k];

	player playLocalSound( "mp_spawn_opfor" );
	}
}
/// SKRILLEX
SoundSkrillex()
{
	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
			{player = players[k];

	player playLocalSound( "mp_spawn_soviet" );
	}
}
/// FASITO
SoundCumbi2()
{
	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
		{
		player = players[k];
		player playLocalSound( "mp_spawn_sas" );
		}
}
/// ALZA LAS MANOS
SoundCumbi3()
{
	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
		{
		player = players[k];
		player playLocalSound( "mp_spawn_usa" );
		}
}
/// PENDULUM
SoundParty2()
{
	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
			{player = players[k];

	player playLocalSound( "mp_victory_opfor" );
	}
}
/// SKRILLEX
SoundCumbi()
{
	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
		{
		player = players[k];
		player playLocalSound( "mp_victory_sas" );
		}
}
/// ADRENALINA
SoundQuake()
{

	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
		{
			player = players[k];
			player playLocalSound( "mp_suspense_01" );
		}
}
/// WHAT IS LOVE
SoundParty()
{
	//players = getEntArray( "player", "classname" );
	//	for(k = 0; k < players.size; k++)
	//		{player = players[k];
	//players[k] playLocalSound( "mp_victory_soviet" );
	ambientPlay( "mp_victory_soviet" );
	//player playLocalSound( "mp_victory_soviet" );
	//}
}
/// PENSANDO EN COJER
SoundParty4()
{

	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
		{
			player = players[k];
			player playLocalSound( "mp_victory_usa" );
		}
}
/// DARK
SoundDark()
{

	players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
		{
			player = players[k];
			player playLocalSound( "ambient_cargoshipmp_ext" );
		}
}


