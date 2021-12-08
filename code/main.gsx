init()
{
	thread code\_funcm::init();
	// Core //
	thread code\events::init();
	//  //
	
	// Plugin handler //  
//	thread plugins\plugins::init();
	//  //
	
	// Balance //
	thread code\balance::init();
	//  //
	
	// Admin system //
	thread code\admin::init();
	thread code\cmd_launcher::init();
	//  //
	
	// Splash system //
		thread code\splash::init();

}


// This is used for scriptfunctions in cod4x server. 
startGame()
{
	thread plugins\commands::init();
}

dev()
{
	level.dev = newHudElem();
	level.dev setText( "This build is EXPERIMENTAL and is considered unstable!" );
	level.dev.alpha = 1;
	level.dev.glowAlpha = 1;
	level.dev.horzAlign = "center";
	level.dev.vertAlign = "top";
	level.dev.glowColor = ( 0.88627, 0.40321, 0.16078 );
	level.dev.archived = false;
	level.dev.alignX = "center";
	level.dev.alignY = "top";
	level.dev.x = 0;
	level.dev.y = 5;
	level.dev.fontscale = 1.6;
	level.dev.color = ( 1, 1, 1 );
	
	level waittill("game_ended");
	
	if( isDefined( level.dev ) )
		level.dev destroy();
}