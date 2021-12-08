main()
{
	level.creditTime = 10;
	
	ambientplay("endround1",1);
//level thread playSoundOnAllPlayers( "endround1");

	thread showCredit( "^0Thanks ^1For ^3Playing ^0In^1:", 2.4 );
	wait 0.7;
	thread showCredit( "^2PRO^0[M]OD BY ^0TEK^5I09 ", 2.4 );
	wait 0.7;
	thread showCredit( "^0Modded ^1By^2:", 2.0 );
	wait 0.7;
	thread showCredit( "^0TEK^5I09", 2.4 );
	wait 0.7;
	thread showCredit( "^5Contact ^3TEKI09^2?", 2.0 );
	wait 0.7;
	thread showCredit( "^5WwW.FaceBook.com^3/^0TEK^5I09", 2.4 );
	wait 0.7;
	thread showCredit( "^5OWNER > ^1...TY... | CO OWNER > ^1SNaKE^1~^^00HEAKnocKER", 2.4 );
	wait 0.7;
	thread showCredit( "^5S.ADMIN > ^1SNaKE^1~^^00HEAKnocKER |  ^1...TY...", 2.0 );
	wait 1;
	thread showCredit( "^5 IF YOU WANT THATS MOD UNDER CHEAPEST PRICE^3> ^2FB@TEKI09", 2.4 );
	wait 1;
	thread showCredit( "^5 THANKS FOR ^3CHOSING US!", 2.4 );
	wait 0.5;
	thread showCredit( "^0Hope ^1you ^3found ^0your ^1stay ^3well ^0worth ^1your ^3time^2!", 1.8 );

}

init()
{
	level.creditTime = 10;

	//ambientplay("endround1",1);
//level thread playSoundOnAllPlayers( "endround1");

	thread showCredit( "^0Thanks ^1For ^3Playing ^0In^1:", 2.4 );
	wait 0.5;
	thread showCredit( "^2PRO^0[M]OD BY ^0TEK^5I09 ", 2.4 );
	wait 1.2;
	thread showCredit( "^0Server ^2PRO^0[M]OD IS ^5VIP AND PAID VERISION", 2.0 );
	wait 0.5;
	thread showCredit( "^1>^2>^3> OWNER: "+getDvar("owner"), 2.4 );
	wait 1.2;
	thread showCredit( "^0FULLY CONTROL BY A^5DMIN MENU:", 2.0 );
	wait 0.5;
	thread showCredit( "NO MOD LAG,NO SCRIPT ERROR,NO MORE COPYRIGHT ISSUE,", 1.6 );
	wait 0.5;
	thread showCredit( "^0Hackers ^1will ^3Be ^0Permanently ^1Ban^3!", 2.4 );
	wait 1.2;
	thread showCredit( "^0TEK^5I09 ^5Contact", 2.0 );
	wait 0.5;
	thread showCredit( "^5WwW.FaceBook.com^3/^0TEK^5I09", 2.4 );
	wait 1.2;
//	thread showCredit( "^0HOSTED ^3By^2:", 2.0 );
	wait 0.5;
//	thread showCredit( "^0{^5Smooth^0}{^5Hosting^0}", 2.4 );
	wait 1.2;
	thread showCredit( "^0Thanks ^1For ^3Playing^2!", 2.4 );
	wait 0.5;
	thread showCredit( "^0Hope ^1you ^3found ^0your ^1stay ^3well ^0worth ^1your ^3time^2!", 1.8 );
	/*thread showCredit( "Hosted Through:", 1.8 );z
	wait 0.5;
	wait 0.5;*/
	//thread custom\_mapvote::Initialize();
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
	end_text.glowColor = (.1,.4,0);
	end_text.glowAlpha = 1;
	end_text moveOverTime(level.creditTime);
	end_text.y = -60;
	end_text.foreground = true;
	wait level.creditTime;
	end_text destroy();
}


neon()
{
	neon = addNeon( "^1", 1.4 );
	while( 1 )
	{
		neon moveOverTime( 15 );
		neon.x = 800;
		wait 15;
		neon moveOverTime( 15 );
		neon.x = -800;
		wait 15;
	}
}

addNeon( text, scale )
{
	end_text = newHudElem();
	end_text.font = "objective";
	end_text.fontScale = scale;
	end_text SetText(text);
	end_text.alignX = "center";
	end_text.alignY = "top";
	end_text.horzAlign = "center";
	end_text.vertAlign = "top";
	end_text.x = -200;
	end_text.y = 8;
	end_text.sort = -1; //-3
	end_text.alpha = 1;
	//end_text.glowColor = (1,0,0.1);
	//end_text.glowAlpha = 1;
	end_text.foreground = true;
	return end_text;
}