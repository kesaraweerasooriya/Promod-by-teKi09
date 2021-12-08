init()
{
	level thread teki\teki::teki();
    AddEndRoundMusic("endround1"); 
    AddEndRoundMusic("endround2"); 
	
	
    AddEndRoundMusic("endround3"); 
    AddEndRoundMusic("endround4"); 
   AddEndRoundMusic("endround5"); 
   AddEndRoundMusic("endround6"); 
   AddEndRoundMusic("endround7"); 
   AddEndRoundMusic("endround8"); 
   AddEndRoundMusic("endround9"); 
   AddEndRoundMusic("endround10"); 
   AddEndRoundMusic("endround11"); 
   AddEndRoundMusic("endround12"); 
   AddEndRoundMusic("endround13"); 
   AddEndRoundMusic("endround14"); 
   AddEndRoundMusic("endround15"); 
   AddEndRoundMusic("endround16"); 
   AddEndRoundMusic("endround17"); 
   AddEndRoundMusic("endround18"); 
   AddEndRoundMusic("endround19"); 
   AddEndRoundMusic("endround20"); 
   AddEndRoundMusic("endround21"); 
   AddEndRoundMusic("endround22"); 
   AddEndRoundMusic("endround23"); 
   AddEndRoundMusic("endround24"); 
   
   
}
endRound()
{
   thread partymode();   
   song = (1+randomInt(23));
   level thread playSoundOnAllPlayers( "endround" + song );   
   iPrintlnBold( "^1LOL");
}
AddEndRoundMusic(name)
{
   if(!isDefined(level.endroundmusic))
      level.endroundmusic = [];
   level.endroundmusic[level.endroundmusic.size] = name;
}
partymode()
{
   for(;;)
   {   
      SetExpFog(256, 900, 1, 0, 0, 0.1); 
        wait .2; 
        SetExpFog(256, 900, 0, 1, 0, 0.1); 
        wait .2;
        SetExpFog(256, 900, 0, 0, 1, 0.1); 
      wait .2;
        SetExpFog(256, 900, 0.4, 1, 0.8, 0.1); 
        wait .2; 
        SetExpFog(256, 900, 0.8, 0, 0.6, 0.1); 
        wait .2; 
        SetExpFog(256, 900, 1, 1, 0.6, 0.1); 
        wait .2;
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
        wait .2; 
        SetExpFog(256, 900, 0, 0, 0.8, 0.1); 
        wait .2; 
        SetExpFog(256, 900, 0.2, 1, 0.8, 0.1); 
        wait .2;
        SetExpFog(256, 900, 0.4, 0.4, 1, 0.1); 
        wait .2;
        SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .2; 
        SetExpFog(256, 900, 0.4, 0.2, 0.2, 0.1); 
        wait .2;
        SetExpFog(256, 900, 0.4, 1, 1, 0.1); 
      wait .2;
        SetExpFog(256, 900, 0.6, 0, 0.4, 0.1); 
        wait .2;
        SetExpFog(256, 900, 1, 0, 0.8, 0.1); 
        wait .2;
        SetExpFog(256, 900, 1, 1, 0, 0.1); 
        wait .2;
        SetExpFog(256, 900, 0.6, 1, 0.6, 0.1); 
        wait .2;
        SetExpFog(256, 900, 1, 0, 0, 0.1); 
        wait .2;
        SetExpFog(256, 900, 0, 1, 0, 0.1); 
        wait .2; 
        SetExpFog(256, 900, 0, 0, 1, 0.1); 
        wait .2;
        SetExpFog(256, 900, 0.4, 1, 0.8, 0.1); 
        wait .2;
        SetExpFog(256, 900, 0.8, 0, 0.6, 0.1); 
        wait .2; 
        SetExpFog(256, 900, 1, 1, 0.6, 0.1); 
        wait .2; 
        SetExpFog(256, 900, 1, 1, 1, 0.1); 
        wait .2; 
        SetExpFog(256, 900, 0, 0, 0.8, 0.1); 
        wait .2; 
        SetExpFog(256, 900, 0.2, 1, 0.8, 0.1); 
        wait .2;
        SetExpFog(256, 900, 0.4, 0.4, 1, 0.1); 
        wait .2;
        SetExpFog(256, 900, 0, 0, 0, 0.1); 
        wait .2;
        SetExpFog(256, 900, 0.4, 0.2, 0.2, 0.1); 
        wait .2;
        SetExpFog(256, 900, 0.4, 1, 1, 0.1); 
        wait .2;
        SetExpFog(256, 900, 0.6, 0, 0.4, 0.1); 
        wait .2;
        SetExpFog(256, 900, 1, 0, 0.8, 0.1); 
        wait .2;
        SetExpFog(256, 900, 1, 1, 0, 0.1); 
        wait .2; 
        SetExpFog(256, 900, 0.6, 1, 0.6, 0.1); 
   }
}
playSoundOnAllPlayers( soundAlias )
{
   for( i = 0; i < getEntArray( "player", "classname" ).size; i++ )
   {
      getEntArray( "player", "classname" )[i] playLocalSound( soundAlias );


   }
}