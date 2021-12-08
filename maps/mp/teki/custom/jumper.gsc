jumper()			
{	//setdvar("dm_vip", "");
		thread normal();
		//thread uni();

	//	thread nus\_vipmenu::init();


}

normal()
{


			setDvar("perk_weapreloadMultiplier","0.1");
			setDvar("bg_fallDamageMaxHeight","350");
			setDvar("bg_fallDamageMinHeight","140");
			setdvar("jump_height","42");
			setdvar("g_gravity","700");
			setdvar("g_speed","190");
			setDvar("perk_sprintMultiplier","5");
			setDvar("player_sustainAmmo", "0");
            setDvar("fx_enable","0");

}

uni()
{
    while( 1 )
    {
		level waittill( "player_spawn", player ); 
		/*	player setClientDvar( "r_lighttweaksunlight", 0.6 );
			player setClientDvar("r_fullbright", 0 );
		        player setClientDvar("r_filmtweakenable", "1");
		        player setClientDvar("r_filmusetweaks", "1");
			player setClientDvar("r_filmtweakdarktint","1.6 1.5 1.6");
			player setClientDvar("r_filmtweaklighttint","0.4 0.6 1");
			player setClientDvar("r_filmtweakdesaturation", "0");
			player setClientDvar("r_gamma", "1.31");
			player setClientDvar("r_filmTweakBrightness", "0.4");
		        player setClientDvar("r_filmTweakContrast", "2.18");*/
     }
		        

		
}
