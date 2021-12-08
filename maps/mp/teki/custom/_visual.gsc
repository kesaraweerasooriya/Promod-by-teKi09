LoopFast()
{
	level endon("stopparty");
	ambientStop( 0 );
	for(;;)
	{	
		players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
			players[k] setClientDvar("r_fog", 1);
				SetExpFog(256, 900, 1, 0, 0, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 0, 1, 0, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0, 0, 1, 0.1); 
		wait .5; 
        SetExpFog(256, 900, 0.4, 1, 0.8, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.8, 0, 0.6, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 1, 0.6, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0, 0, 0.8, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.2, 1, 0.8, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.4, 0.4, 1, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0, 0, 0, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.4, 0.2, 0.2, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.4, 1, 1, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 0.6, 0, 0.4, 0.1); 
       wait .5; 
        SetExpFog(256, 900, 1, 0, 0.8, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 1, 0, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.6, 1, 0.6, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 0, 0, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0, 1, 0, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 0, 0, 1, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.4, 1, 0.8, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 0.8, 0, 0.6, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 1, 0.6, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0, 0, 0.8, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.2, 1, 0.8, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 0.4, 0.4, 1, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 0.4, 0.2, 0.2, 0.1); 
       wait .5; 
        SetExpFog(256, 900, 0.4, 1, 1, 0.1); 
        wait .5; 
        SetExpFog(256, 900, 0.6, 0, 0.4, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 0, 0.8, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 1, 1, 0, 0.1); 
         wait .5; 
        SetExpFog(256, 900, 0.6, 1, 0.6, 0.1); 
	}
}
LoopSlow()
{
ambientStop( 0 );
	level endon("stopparty");
	for(;;)
	{	
		players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
			players[k] setClientDvar("r_fog", 1);
				SetExpFog(256, 900, 1, 0, 0, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0, 1, 0, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0, 0, 1, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.4, 1, 0.8, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.8, 0, 0.6, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 1, 1, 0.6, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0, 0, 0.8, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.2, 1, 0.8, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.4, 0.4, 1, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.4, 0.2, 0.2, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.4, 1, 1, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.6, 0, 0.4, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 1, 0, 0.8, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 1, 1, 0, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.6, 1, 0.6, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 1, 0, 0, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0, 1, 0, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0, 0, 1, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.4, 1, 0.8, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.8, 0, 0.6, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 1, 1, 0.6, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0, 0, 0.8, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.2, 1, 0.8, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.4, 0.4, 1, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.4, 0.2, 0.2, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.4, 1, 1, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.6, 0, 0.4, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 1, 0, 0.8, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 1, 1, 0, 0.1); 
        wait 0.7;
        SetExpFog(256, 900, 0.6, 1, 0.6, 0.1); 
	}
}
LoopQuake()
{
ambientStop( 0 );
	level endon("stopparty");
	for(;;)
	{	
		players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
			players[k] setClientDvar("r_fog", 1);
        SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .01; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .01; 
        SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .01; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .01; 
       SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .01; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .01; 
       SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .01; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .01; 
         SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .1; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .1; 
        SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .1; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .1; 
       SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .1; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .1; 
       SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .01; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .1; 
         SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .01; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .1; 
        SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .01; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .1; 
       SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .01; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .01; 
       SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .1; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .1; 
         SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .01; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .01; 
        SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .1; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .1; 
       SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .1; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .01; 
       SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .01; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
         wait .01; 
	}
}
VisionQuake()
{
ambientStop( 0 );
	level endon("stopparty");
	for(;;)
	{	
	visionSetNaked("aftermath",4);
	wait 8;
	visionSetNaked("ac130_inverted",0);
	wait 0.01;
	visionSetNaked("aftermath",0);
	wait 0.01;
	visionSetNaked("ac130_inverted",0);
	wait 0.01;
	visionSetNaked("aftermath",0);
	wait 0.01;
	visionSetNaked("ac130_inverted",0);
	wait 0.01;
	visionSetNaked("aftermath",0);
	wait 0.01;
	visionSetNaked("ac130_inverted",0);
	wait 0.01;
	visionSetNaked("aftermath",0);
	wait 0.01;
	visionSetNaked("ac130_inverted",0);
	wait 0.01;
	visionSetNaked("aftermath",0);
	wait 0.01;
	visionSetNaked("ac130_inverted",0);
	wait 0.01;
	visionSetNaked("aftermath",0);
	wait 0.01;
	visionSetNaked("ac130_inverted",0);
	wait 0.01;
	visionSetNaked("aftermath",0);
	wait 0.01;
	visionSetNaked("ac130_inverted",0);
	wait 0.01;
	visionSetNaked("aftermath",0);
	wait 0.01;
	visionSetNaked("ac130_inverted",0);
	wait 0.01;
	visionSetNaked("aftermath",0);
	wait 0.01;
	visionSetNaked("ac130_inverted",0);
	wait 0.01;
	visionSetNaked("aftermath",0);
	wait 0.01;
	visionSetNaked("ac130_inverted",0);
	wait 0.01;
	}
}
VisionJump()
{
		visionSetNaked( "armada_water", 5.0 );
}
FogNight()
{
ambientStop( 0 );
		players = getEntArray( "player", "classname" );
		for(k = 0; k < players.size; k++)
			players[k] setClientDvar("r_fog", 1);
        wait 1.5;
				SetExpFog(256, 100, 0, 0, 0, 0.1); 
        wait .5; 
}
VisionNight()
{
	visionSetNaked("blacktest",4);
  wait 2;
	visionSetNaked("aftermath",4);
}