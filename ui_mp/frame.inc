
		// background
		itemDef 
		{
			rect			0 0 640 480 HORIZONTAL_ALIGN_FULLSCREEN VERTICAL_ALIGN_FULLSCREEN
			style			WINDOW_STYLE_SHADER
			background		"main_logo"
			border			0
			bordercolor		0 0 0 1
			bordercolor		0 0.600 1 1
			visible			1
			decoration
		}
		// header
		itemDef 
		{
			rect			80 30 480 60
			style			WINDOW_STYLE_SHADER
			//background		"uidr_header"
			visible			0
			decoration
		}
/*
		// nickname
		itemDef
		{
			visible			when( menuisopen( "team_select" ) )
			origin			90 80
			forecolor		1 1 1 1
			exp				text( dvarString( "name" ) )
			textfont		UI_FONT_NORMAL
			textalign		ITEM_ALIGN_LEFT
			textscale		0.8
			decoration
		}
*/
		itemDef
		{
			visible			1
			origin			510 68
			forecolor		1 1 1 1
			exp				text( dvarString( "name" ) )
			textfont		UI_FONT_NORMAL
			textalign		ITEM_ALIGN_RIGHT
			textscale		0.4
			decoration
		}

		

		// rank icon
		itemDef 
		{
			rect			/*528 44*/ 518 37 32 32
			style			WINDOW_STYLE_SHADER
			exp				material( tablelookup( "mp/rankIconTable.csv", 0, stat(2350) , 1 ) )
			//background		"uidr_header"
			visible			0
			decoration
		}

		// rank name
		itemDef
		{
			visible			1
			origin			550 82
			forecolor		0.95 0.95 0.95 1
			exp				text( dvarString( "ui_rankname" ) )
			textfont		UI_FONT_NORMAL
			textalign		ITEM_ALIGN_RIGHT
			textscale		0.5
			decoration
		}
		
		// menu name
		itemDef
		{
			visible			1
			origin			90 80
			forecolor		1 1 1 1
			exp				text( dvarString( "menuName" ) )
			textfont		UI_FONT_NORMAL
			textalign		ITEM_ALIGN_LEFT
			textscale		0.8
			decoration
		}

		// nickname
		itemDef
		{
			visible			1
			origin			550 445
			forecolor		1 1 1 1
			text			"By ^5TEKI09^1^5\n "
			textfont		UI_FONT_NORMAL
			textalign		ITEM_ALIGN_RIGHT
			textscale		0.3
			decoration
		}

		itemDef
		{
			style		WINDOW_STYLE_FILLED 
			forecolor	1 1 1 0.8 
			rect		540 435 10 10

			type		ITEM_TYPE_BUTTON
			exp			text( " " ) 
			textfont	UI_FONT_NORMAL
			textstyle	ITEM_TEXTSTYLE_SHADOWED 
			textalign	ITEM_ALIGN_LEFT
			textscale	0.32
			textalignx	70
			textaligny	22
			visible		when( !dvarInt( "dr_ee1" ) )
			action 
			{ 
				play "ee1"; 
				execNow "set dr_ee1 1";
			} 
		}


//+"  -"+"U "+"M"+"A"+"D"+"?"

