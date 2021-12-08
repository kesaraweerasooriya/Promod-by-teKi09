#include code\utility;

init()
{
	level.first_blood = false;
	
	thread code\events::addSpawnEvent( ::onPlayerSpawn );
	thread code\events::addConnectEvent( ::onPlayerConnect );
	thread code\events::addDeathEvent( ::onPlayerKilled );
	//thread code\events::addDamageEvent( ::onPlayerDamage );
}

onPlayerSpawn()
{
	self.multikill = 0;
}

onPlayerConnect()
{
	self endon( "disconnect" );
	level endon( "game_ended" );

	if( !isDefined( self.pers[ "kill_streak" ] ) )
		self.pers[ "kill_streak" ] = 0;

	if( !isDefined( self.pers[ "death_streak" ] ) )
		self.pers[ "death_streak" ] = 0;
		
	self thread cleanUp();
}

cleanUp()
{
	self endon( "disconnect" );

	level waittill( "game_ended" );
	
	if( isDefined( self.splash_1 ) )
		self.splash_1 destroy();
		
	if( isDefined( self.splash_2 ) )
		self.splash_2 destroy();
		
	if( isDefined( self.splash_3 ) )
		self.splash_3 destroy();
		
	if( isDefined( self.splash_4 ) )
		self.splash_4 destroy();
}

onPlayerKilled( eInflictor, attacker, iDamage, sMeansOfDeath, sWeapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration )
{
	if( sMeansOfDeath == "MOD_FALLING" ) // Bounce fix
		return;

	victim = self;
	//victim thread watchDeathStreak();
	//attacker thread watchKillStreak();
	
	attacker thread watchMultiKill();
	
	if( victim == attacker ) // suicide
		return;

	if( victim != attacker )
		victim.pers["last_killer"] = attacker;
		
	if( isDefined(attacker) && victim != attacker )
	{		
		if( !isReallyAlive( attacker ) ) // after life kill
			attacker thread showSplash( "After Life Kill!" );
			
		if( iDamage >= 100 && sWeapon != "" && ( sMeansOfDeath == "MOD_RIFLE_BULLET" || sMeansOfDeath == "MOD_PISTOL_BULLET" ) ) // one shot one kill
			attacker thread showSplash( "One Shot One Kill!" );
		
		if( !level.first_blood ) // first blood
		{
			level.first_blood = true;
			attacker thread firstBlood();
		}
		
		if( sMeansOfDeath == "MOD_HEAD_SHOT" ) // headshot
			attacker thread showSplash( "HeadShot!" );
		
		if( isDefined( attacker.pers["last_killer"] ) && attacker.pers["last_killer"] == victim )  // revenge kill
		{
			attacker.pers["last_killer"] = undefined;
			attacker thread showSplash( "Revenge Kill!" );
		}
		
		// This isn't done yet 
		/*if( victim.pers[ "kill_streak" ] >= 3 ) // buzz kill
			attacker thread showSplash( "Buzz Kill!" );
			
		if( attacker.pers[ "death_streak" ] >= 3 ) // comeback
			attacker thread showSplash( "Comeback!" );*/
		
		if ( distanceSquared( victim.origin, attacker.origin ) > 7467840  ) // long shot
			attacker thread showSplash( "Long Shot!" );
			
	}
}

onPlayerDamage( eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, sWeapon, vPoint, vDir, sHitLoc, psOffsetTime )
{
	if( !isDefined( eAttacker ) )
		return;
		
	victim = self;
	
	if( iDamage >= 100 && sWeapon != "" && ( sMeansOfDeath == "MOD_RIFLE_BULLET" || sMeansOfDeath == "MOD_PISTOL_BULLET" ) ) // one shot one kill
		eAttacker thread showSplash( "One Shot One Kill!" );
}

firstBlood()
{
	self endon( "disconnect" );
	level endon( "game_ended" );

	self playSound( "first_blood" );
	self thread showSplash( "First Blood!" );
	
	level.first = newHudElem();
	level.first setText( self.name + " Just Scored a First Blood!" );
	level.first.alpha = 1;
	level.first.glowAlpha = 1;
	level.first setPulseFX( 50, 3000, 800 );
	level.first.glowColor = ( 0.88627, 0.40321, 0.16078 );
	level.first.archived = true;
	level.first.horzAlign = "center";
	level.first.vertAlign = "top";
	level.first.alignX = "center";
	level.first.alignY = "top";
	level.first.x = 0;
	level.first.y = 100;
	level.first.fontscale = 1.5;
	level.first.color = ( 1, 1, 1 );
	
	wait 3.8;
	
	if( isDefined( level.first ) )
		level.first destroy();	
}

watchMultiKill()
{
	self notify( "NewKill" );
	self endon( "NewKill" );
	self endon( "disconnect" );
	level endon( "game_ended" );

	if( !isDefined( self.multikill ) )
		return;

	self.multikill++;

	wait 1.5;
	
	if( self.multikill > 1 )
		self thread multiKill( self.multiKill );
		
	self.multikill = 0;
}

multiKill( kills )
{
	self endon( "disconnect" );
	level endon( "game_ended" );

	switch( kills )
	{
		case 2:
			self showSplash( "Double Kill!" );
			self PlayLocalSound( "kill_2" );
			break;
			
		case 3:
			self showSplash( "Tripple Kill!" );
			self PlayLocalSound( "kill_3" );
			break;
			
		case 4:
			self showSplash( "Quadra Kill!" );
			self PlayLocalSound( "kill_4" );
			break;
		
		case 5:
			self showSplash( "Penta Kill!" );
			self PlayLocalSound( "kill_5" );
			break;
			
		default:
			self showSplash( "Legendary Kill!" );
			self PlayLocalSound( "kill_6" );
			break;
	}
}
/////////////////////
// TODO:           //
// Make this work  //
/////////////////////
watchKillStreak()
{
	self endon( "disconnect" );
	level endon( "game_ended" );
	
	if( !isDefined( self.pers ) )
		return;

	self.pers[ "kill_streak" ]++;
	self.pers[ "death_streak" ] = 0;
}

watchDeathStreak()
{
	self endon( "disconnect" );
	level endon( "game_ended" );
	
	if( !isDefined( self.pers ) )
		return;

	self.pers[ "kill_streak" ] = 0;
	self.pers[ "death_streak" ]++;
}

// Desno-gor
showSplash( msg )
{
	self endon( "disconnect" );
	level endon( "game_ended" );

	if( !isDefined( self ) )
		return;
	if( isDefined( self.splash_1 ) )
	{
		self thread showSplash_2( msg );
		return;
	}
	
	self.splash_1 = newClientHudElem( self );
	self.splash_1 setText( msg );
	self.splash_1.alpha = 1;
	self.splash_1 setPulseFX( 30, 1600, 400 );
	self.splash_1.glowColor = ( 0.88627, 0.40321, 0.16078 );
	self.splash_1.archived = true;
	self.splash_1.alignX = "center";
	self.splash_1.alignY = "middle";
	self.splash_1.horzAlign = "center";
	self.splash_1.vertAlign = "middle";
	self.splash_1.x = 40;
	self.splash_1.y = -40;
	self.splash_1.fontscale = 1.4;
	self.splash_1.color = ( 1, 1, 1 );
	
	wait 2;
	
	if( isDefined( self.splash_1 ) )
		self.splash_1 destroy();
}

// Desno-dol
showSplash_2( msg )
{
	self endon( "disconnect" );
	level endon( "game_ended" );

	if( !isDefined( self ) )
		return;

	if( isDefined( self.splash_2 ) )
	{
		self thread showSplash_3( msg );
		return;
	}
	
	self.splash_2 = newClientHudElem( self );
	self.splash_2 setText( msg );
	self.splash_2.alpha = 1;
	self.splash_2 setPulseFX( 30, 1600, 400 );
	self.splash_2.glowColor = ( 0.88627, 0.40321, 0.16078 );
	self.splash_2.archived = true;
	self.splash_2.alignX = "center";
	self.splash_2.alignY = "middle";
	self.splash_2.horzAlign = "center";
	self.splash_2.vertAlign = "middle";
	self.splash_2.x = 40;
	self.splash_2.y = 40;
	self.splash_2.fontscale = 1.4;
	self.splash_2.color = ( 1, 1, 1 );
	
	wait 2;
	
	if( isDefined( self.splash_2 ) )
		self.splash_2 destroy();
}

// Levo-dol
showSplash_3( msg )
{
	self endon( "disconnect" );
	level endon( "game_ended" );

	if( !isDefined( self ) )
		return;

	if( isDefined( self.splash_3 ) )
	{
		self thread showSplash_4( msg );
		return;
	}
	
	self.splash_3 = newClientHudElem( self );
	self.splash_3 setText( msg );
	self.splash_3.alpha = 1;
	self.splash_3 setPulseFX( 30, 1600, 400 );
	self.splash_3.glowColor = ( 0.88627, 0.40321, 0.16078 );
	self.splash_3.archived = true;
	self.splash_3.alignX = "center";
	self.splash_3.alignY = "middle";
	self.splash_3.horzAlign = "center";
	self.splash_3.vertAlign = "middle";
	self.splash_3.x = -40;
	self.splash_3.y = 40;
	self.splash_3.fontscale = 1.4;
	self.splash_3.color = ( 1, 1, 1 );
	
	wait 2;
	
	if( isDefined( self.splash_3 ) )
		self.splash_3 destroy();
}

// Levo-gor
showSplash_4( msg )
{
	self endon( "disconnect" );
	level endon( "game_ended" );
	
	if( !isDefined( self ) )
		return;

	if( isDefined( self.splash_4 ) )
	{
		wait 1.2;
		self thread showSplash( msg );
		return;
	}
	
	self.splash_4 = newClientHudElem( self );
	self.splash_4 setText( msg );
	self.splash_4.alpha = 1;
	self.splash_4 setPulseFX( 30, 1600, 400 );
	self.splash_4.glowColor = ( 0.88627, 0.40321, 0.16078 );
	self.splash_4.archived = true;
	self.splash_4.alignX = "center";
	self.splash_4.alignY = "middle";
	self.splash_4.horzAlign = "center";
	self.splash_4.vertAlign = "middle";
	self.splash_4.x = -40;
	self.splash_4.y = -40;
	self.splash_4.fontscale = 1.4;
	self.splash_4.color = ( 1, 1, 1 );
	
	wait 2;
	
	if( isDefined( self.splash_4 ) )
		self.splash_4 destroy();
}