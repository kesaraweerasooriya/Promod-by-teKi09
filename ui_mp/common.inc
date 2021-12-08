//"164.132.200.165"
#define LICENCE dvarString( "promod_licence_valid" )
//#define LICENCE "164.132.200.165"
#define rank (stat(2350)+1)
#define SPRAY_TABLE "mp/sprayTable.csv"
#define CHARACTER_TABLE "mp/characterTable.csv"
#define ITEM_TABLE "mp/itemTable.csv"
#define ABILITY_TABLE "mp/abilityTable.csv"

#ifndef DR_BUTTON_FORECOLOR
	#define DR_BUTTON_FORECOLOR 0 0 0 1
	#define DR_BUTTON_BACKCOLOR 0 0 0 0.8
	#define DR_BUTTON_BACKCOLOR_FOCUSED 0.4 0.4 0.4 0.4
	#define DR_BUTTON_BORDERCOLOR 0.5 0.5 0.5 0.15
#endif
/*
#ifndef DR_BUTTON_FORECOLOR
	#define DR_BUTTON_FORECOLOR 0 0 0 0
	#define DR_BUTTON_BACKCOLOR 192 192 192 192
	#define DR_BUTTON_BACKCOLOR_FOCUSED 0 0 0 0
	#define DR_BUTTON_BORDERCOLOR 255 255 255 255
#endif
*/
#ifndef DR_BUTTON_ALIGN
	#define DR_BUTTON_ALIGN 0 0 /*HORIZONTAL_ALIGN_FULLSCREEN VERTICAL_ALIGN_FULLSCREEN*/
#endif

#define DR_BUTTON( id, x, y, w, h, itemName, itemAction, visArg ) \
		DR_BUTTON_EXT( id, x, y, w, h, itemName, itemAction, ;, ;, visArg )

#define DR_BUTTON_EXT( id, x, y, w, h, itemName, itemAction, onItemEnter, onItemExit, visArg ) \
        DR_BUTTON_EXT2( id, x, y, w, h, itemName, itemAction, onItemEnter, onItemExit, visArg, 1 )

#define DR_BUTTON_EXT2( id, x, y, w, h, itemName, itemAction, onItemEnter, onItemExit, visArg, visArg2 ) \
itemDef \
{ \
	visible			visArg \
	name			"button_default"id \
	rect			x y w h DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_FILLED \
	border			1 \
	bordercolor		DR_BUTTON_BORDERCOLOR \ 
	forecolor		DR_BUTTON_FORECOLOR \ 
	backcolor		DR_BUTTON_BACKCOLOR \
} \
itemDef \
{ \
	visible			visArg \
	name			"button_over"id \
	rect			x y w h DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_FILLED \
	border			1 \
	bordercolor		DR_BUTTON_BORDERCOLOR \ 
	forecolor		DR_BUTTON_FORECOLOR \ 
	backcolor		DR_BUTTON_BACKCOLOR_FOCUSED \
} \
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		x y w h DR_BUTTON_ALIGN \
	forecolor	1 1 1 0.85 \
	exp			text( itemName ) \
	type		ITEM_TYPE_BUTTON \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.4 \
	textalignx	8 \
	textaligny	(h-1) \
	visible		visArg \
	mouseEnter \
	{ \
		play "mouse_over"; \
		show "button_over"id; \
		hide "button_default"id; \
		onItemEnter \
	} \
	mouseExit \
	{ \
		show "button_default"id; \
		hide "button_over"id; \
		onItemExit \
	} \
	action \
	{ \
		itemAction \
	} \
} 

#define DR_BUTTON2( id, x, y, w, h, itemName, itemAction, visArg ) \
		DR_BUTTON2_EXT( id, x, y, w, h, itemName, itemAction, ;, ;, visArg )

#define DR_BUTTON2_EXT( id, x, y, w, h, itemName, itemAction, onItemEnter, onItemExit, visArg ) \
itemDef \
{ \
	visible			visArg \
	name			"button_default"id \
	rect			x y w h DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_FILLED \
	border			1 \
	bordercolor		DR_BUTTON_BORDERCOLOR \ 
	forecolor		DR_BUTTON_FORECOLOR \ 
	backcolor		DR_BUTTON_BACKCOLOR \
} \
itemDef \
{ \
	visible			visArg \
	name			"button_over"id \
	rect			x y w h DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_FILLED \
	border			1 \
	bordercolor		DR_BUTTON_BORDERCOLOR \ 
	forecolor		DR_BUTTON_FORECOLOR \ 
	backcolor		DR_BUTTON_BACKCOLOR_FOCUSED \
} \
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		x y w h DR_BUTTON_ALIGN \
	forecolor	1 1 1 0.85 \
	exp			text( itemName ) \
	type		ITEM_TYPE_BUTTON \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_CENTER \
	textscale	0.3 \
	textalignx	0 \
	textaligny	(h-1) \
	visible		1 \
	mouseEnter \
	{ \
		play "mouse_over"; \
		show "button_over"id; \
		hide "button_default"id; \
		onItemEnter \
	} \
	mouseExit \
	{ \
		show "button_default"id; \
		hide "button_over"id; \
		onItemExit \
	} \
	action \
	{ \
		itemAction \
	} \
} 






#define DR_WEAPON( y, itemID ) \
itemDef \
{ \
	visible			when( rank < tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*locked*/ \
	rect			90 y 220 35 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_FILLED \
	border			1 \
	bordercolor		DR_BUTTON_BORDERCOLOR \ 
	forecolor		DR_BUTTON_FORECOLOR \ 
	backcolor		DR_BUTTON_BACKCOLOR \
} \
itemDef \
{ \
	visible			when( rank >= tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	rect			90 y 220 35 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_FILLED \
	border			1 \
	bordercolor		DR_BUTTON_BORDERCOLOR \ 
	forecolor		DR_BUTTON_FORECOLOR \ 
	backcolor		DR_BUTTON_BACKCOLOR_FOCUSED \
} \
itemDef \
{ \
	rect			92 (y+2) 60 31 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_SHADER \
	exp				material( tablelookup( "mp/itemTable.csv", 0, itemID, 3 ) ) \
	visible			when( rank >= tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	forecolor		1 1 1 1 \
	decoration \
} \
itemDef \
{ \
	rect			92 (y+2) 60 31 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_SHADER \
	exp				material( tablelookup( "mp/itemTable.csv", 0, itemID, 3 ) ) \
	visible			when( rank < tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*locked*/ \
	forecolor		0.8 0.8 0.8 0.6 \
	decoration \
} \
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		90 y 220 35 DR_BUTTON_ALIGN \
	forecolor	1 1 1 0.8 \
	exp			text( tableLookup(ITEM_TABLE, 0, itemID, 5) ) \
	type		ITEM_TYPE_BUTTON \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.32 \
	textalignx	70 \
	textaligny	22 \
	visible		when( rank >= tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	mouseEnter \
	{ \
		play "mouse_over"; \
	} \
	action \
	{ \
		scriptMenuResponse itemID; \
		close self; \
		open "character_stuff"; \
	} \
} \ 
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		90 y 220 35 DR_BUTTON_ALIGN \
	forecolor	0.8 0.8 0.8 0.6 \
	exp			text( tableLookup(ITEM_TABLE, 0, itemID, 5) ) \
	type		ITEM_TYPE_BUTTON \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.32 \
	textalignx	70 \
	textaligny	22 \
	visible		when( rank < tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*locked*/ \
} \
itemDef \
{ \
	visible		1 \
	rect		90 y 220 35 DR_BUTTON_ALIGN \
	textscale	0.18 \
	textalignx	70 \
	textaligny	33 \
	forecolor	1 1 1 0.8 \
	exp			text( tableLookup(ITEM_TABLE, 0, itemID, 6) ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.2 \
	decoration \
} \
itemDef \
{ \
	visible		when( rank < tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*locked*/ \
	origin		308 y \
	textscale	0.22 \
	textaligny	11 \
	forecolor	1 1 1 0.8 \
	exp			text( "^1LOCKED ("+tableLookup(ITEM_TABLE, 0, itemID, 2)+")" ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_RIGHT \
	textscale	0.2 \
	decoration \
} \
itemDef \
{ \
	visible		when( rank >= tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	origin		308 y \
	textscale	0.22 \
	textaligny	11 \
	forecolor	1 1 1 0.8 \
	exp			text( "^2UNLOCKED" ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_RIGHT \
	textscale	0.2 \
	decoration \
}
// tablelookup( "mp/rankIconTable.csv", 0, stat(252), stat(2326)+1 )




#define DR_WEAPON2( x, y, itemID ) \
itemDef \
{ \
	visible			when( rank < tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*locked*/ \
	rect			x y 220 35 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_FILLED \
	border			1 \
	bordercolor		DR_BUTTON_BORDERCOLOR \ 
	forecolor		DR_BUTTON_FORECOLOR \ 
	backcolor		DR_BUTTON_BACKCOLOR \
} \
itemDef \
{ \
	visible			when( rank >= tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	rect			x y 220 35 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_FILLED \
	border			1 \
	bordercolor		DR_BUTTON_BORDERCOLOR \ 
	forecolor		DR_BUTTON_FORECOLOR \ 
	backcolor		DR_BUTTON_BACKCOLOR_FOCUSED \
} \
itemDef \
{ \
	rect			(x+2) (y+2) 60 31 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_SHADER \
	exp				material( tablelookup( "mp/itemTable.csv", 0, itemID, 3 ) ) \
	visible			when( rank >= tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	forecolor		1 1 1 1 \
	decoration \
} \
itemDef \
{ \
	rect			(x+2) (y+2) 60 31 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_SHADER \
	exp				material( tablelookup( "mp/itemTable.csv", 0, itemID, 3 ) ) \
	visible			when( rank < tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*locked*/ \
	forecolor		0.8 0.8 0.8 0.6 \
	decoration \
} \
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		x y 220 35 DR_BUTTON_ALIGN \
	forecolor	1 1 1 0.8 \
	exp			text( tableLookup(ITEM_TABLE, 0, itemID, 5) ) \
	type		ITEM_TYPE_BUTTON \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.32 \
	textalignx	70 \
	textaligny	22 \
	visible		when( rank >= tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	mouseEnter \
	{ \
		play "mouse_over"; \
	} \
	action \
	{ \
		scriptMenuResponse itemID; \
		close self; \
		open "character_stuff"; \
	} \
} \ 
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		x y 220 35 DR_BUTTON_ALIGN \
	forecolor	0.8 0.8 0.8 0.6 \
	exp			text( tableLookup(ITEM_TABLE, 0, itemID, 5) ) \
	type		ITEM_TYPE_BUTTON \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.32 \
	textalignx	70 \
	textaligny	22 \
	visible		when( rank < tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*locked*/ \
} \
itemDef \
{ \
	visible		1 \
	rect		x y 220 35 DR_BUTTON_ALIGN \
	textscale	0.18 \
	textalignx	70 \
	textaligny	33 \
	forecolor	1 1 1 0.8 \
	exp			text( tableLookup(ITEM_TABLE, 0, itemID, 6) ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.2 \
	decoration \
} \
itemDef \
{ \
	visible		when( rank < tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*locked*/ \
	origin		(x+218) y \
	textscale	0.22 \
	textaligny	11 \
	forecolor	1 1 1 0.8 \
	exp			text( "^1LOCKED ("+tableLookup(ITEM_TABLE, 0, itemID, 2)+")" ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_RIGHT \
	textscale	0.2 \
	decoration \
} \
itemDef \
{ \
	visible		when( rank >= tableLookup(ITEM_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	origin		(x+218) y \
	textscale	0.22 \
	textaligny	11 \
	forecolor	1 1 1 0.8 \
	exp			text( "^2UNLOCKED" ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_RIGHT \
	textscale	0.2 \
	decoration \
}



#define DR_ABILITY( y, itemID ) \
itemDef \
{ \
	visible			when( rank < tableLookup(ABILITY_TABLE, 0, itemID, 2) ) /*locked*/ \
	rect			90 y 220 35 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_FILLED \
	border			1 \
	bordercolor		DR_BUTTON_BORDERCOLOR \ 
	forecolor		DR_BUTTON_FORECOLOR \ 
	backcolor		DR_BUTTON_BACKCOLOR \
} \
itemDef \
{ \
	visible			when( rank >= tableLookup(ABILITY_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	rect			90 y 220 35 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_FILLED \
	border			1 \
	bordercolor		DR_BUTTON_BORDERCOLOR \ 
	forecolor		DR_BUTTON_FORECOLOR \ 
	backcolor		DR_BUTTON_BACKCOLOR_FOCUSED \
} \
itemDef \
{ \
	rect			92 (y+1) 55 35 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_SHADER \
	exp				material( tablelookup(ABILITY_TABLE, 0, itemID, 4) ) \
	visible			when( rank >= tableLookup(ABILITY_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	forecolor		1 1 1 1 \
	decoration \
} \
itemDef \
{ \
	rect			92 (y+1) 55 35 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_SHADER \
	exp				material( tablelookup(ABILITY_TABLE, 0, itemID, 4) ) \
	visible			when( rank < tableLookup(ABILITY_TABLE, 0, itemID, 2) ) /*locked*/ \
	forecolor		0.8 0.8 0.8 0.6 \
	decoration \
} \
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		90 y 220 35 DR_BUTTON_ALIGN \
	forecolor	1 1 1 0.8 \
	exp			text( tableLookup(ABILITY_TABLE, 0, itemID, 5) ) \
	type		ITEM_TYPE_BUTTON \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.32 \
	textalignx	70 \
	textaligny	22 \
	visible		when( rank >= tableLookup(ABILITY_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	mouseEnter \
	{ \
		play "mouse_over"; \
	} \
	action \
	{ \
		scriptMenuResponse itemID; \
		close self; \
		open "character_stuff"; \
	} \
} \ 
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		90 y 220 35 DR_BUTTON_ALIGN \
	forecolor	0.8 0.8 0.8 0.6 \
	exp			text( tableLookup(ABILITY_TABLE, 0, itemID, 5) ) \
	type		ITEM_TYPE_BUTTON \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.32 \
	textalignx	70 \
	textaligny	22 \
	visible		when( rank < tableLookup(ABILITY_TABLE, 0, itemID, 2) ) /*locked*/ \
} \
itemDef \
{ \
	visible		1 \
	rect		90 y 220 35 DR_BUTTON_ALIGN \
	textscale	0.18 \
	textalignx	70 \
	textaligny	33 \
	forecolor	1 1 1 0.8 \
	exp			text( tableLookup(ABILITY_TABLE, 0, itemID, 6) ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.2 \
	decoration \
} \
itemDef \
{ \
	visible		when( rank < tableLookup(ABILITY_TABLE, 0, itemID, 2) ) /*locked*/ \
	origin		308 y \
	textscale	0.22 \
	textaligny	11 \
	forecolor	1 1 1 0.8 \
	exp			text( "^1Locked("+tableLookup(ABILITY_TABLE, 0, itemID, 2)+")" ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_RIGHT \
	textscale	0.2 \
	decoration \
} \
itemDef \
{ \
	visible		when( rank >= tableLookup(ABILITY_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	origin		308 y \
	textscale	0.22 \
	textaligny	11 \
	forecolor	1 1 1 0.8 \
	exp			text( "^2Unlocked" ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_RIGHT \
	textscale	0.2 \
	decoration \
}


// 20 sprays - 96x90
// 25 sprays = 96x72
#define DR_SPRAY( row, column, itemID ) \
itemDef \
{ \
	rect			80 90 96 72 DR_BUTTON_ALIGN \
	origin			(96*row) (72*column) \
	style			WINDOW_STYLE_SHADER \
	exp				material( tableLookup(SPRAY_TABLE, 0, itemID, 3) ) \
	visible			1 \
	border			1 \
	bordercolor		0 0 0 1 \
	decoration \
} \
itemDef \
{ \
	rect			80 90 96 72 DR_BUTTON_ALIGN \
	origin			(96*row) (72*column) \
	style			WINDOW_STYLE_SHADER \
	background		"black" \
	forecolor		0 0 0 0.8 \
	visible			when( rank < tableLookup(SPRAY_TABLE, 0, itemID, 2) ) \
	decoration \
} \
itemDef \
{ \
	visible		when( rank < tableLookup(SPRAY_TABLE, 0, itemID, 2) ) \
	rect		80 90 0 0 DR_BUTTON_ALIGN \
	origin		(96*row) (72*column) \
	textalignx	48 \
	textaligny	45 \
	forecolor	1 1 1 0.8 \
	exp			text( "^1UNLOCKED AT LEVEL" + tableLookup(SPRAY_TABLE, 0, itemID, 2) ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_CENTER \
	textscale	0.2 \
	decoration \
} \
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		80 90 95 71 DR_BUTTON_ALIGN \
	origin		(96*row) (72*column) \
	forecolor	1 1 1 0.8 \
	type		ITEM_TYPE_BUTTON \
	exp			text( " " ) \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.32 \
	textalignx	70 \
	textaligny	22 \
	visible		1 /*unlocked*/ \
	mouseEnter \
	{ \
		play "mouse_over"; \
	} \
	action \
	{ \
		scriptMenuResponse itemID; \
		close self; \
		open "character_stuff"; \
	} \
} 

// 4 rows x 3 columns 
// == 160x90
//  480 x 360
#define DR_WEAPON_ALT( page, row, column, itemID ) \
itemDef \
{ \
	rect			80 90 160 90 DR_BUTTON_ALIGN \
	origin			(160*row) (90*column) \
	style			WINDOW_STYLE_SHADER \
	exp				material( tableLookup(ITEM_TABLE, 0, itemID, 3) ) \
	visible			1 \
	border			1 \
	bordercolor		1 1 1 1 \
	decoration \
} \
itemDef \
{ \
	rect			80 90 160 90 DR_BUTTON_ALIGN \
	origin			(160*row) (90*column) \
	style			WINDOW_STYLE_SHADER \
	background		"black" \
	forecolor		0 0 0 0.8 \
	visible			when( rank < tableLookup(ITEM_TABLE, 0, itemID, 2) ) \
	decoration \
} \
itemDef \
{ \
	visible		when( rank < tableLookup(ITEM_TABLE, 0, itemID, 2) ) \
	rect		80 90 0 0 DR_BUTTON_ALIGN \
	origin		(160*row) (90*column) \
	textalignx	48 \
	textaligny	45 \
	forecolor	1 1 1 0.8 \
	exp			text( "^1UNLOCKED AT LEVEL" + tableLookup(ITEM_TABLE, 0, itemID, 2) ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_CENTER \
	textscale	0.2 \
	decoration \
} \
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		80 90 0 0 DR_BUTTON_ALIGN \
	origin		(160*row) (90*column) \
	forecolor	0.8 0.8 0.8 0.6 \
	exp			text( tableLookup(ITEM_TABLE, 0, itemID, 5) ) \
	type		ITEM_TYPE_BUTTON \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.32 \
	textalignx	7 \
	textaligny	18 \
	visible		1 \
} \
itemDef \
{ \
	visible		1 \
	rect		80 90 0 0 DR_BUTTON_ALIGN \
	origin		(160*row) (90*column) \
	textscale	0.18 \
	textalignx	5 \
	textaligny	85 \
	forecolor	1 1 1 0.8 \
	exp			text( tableLookup(ITEM_TABLE, 0, itemID, 6) ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.2 \
	decoration \
} \
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		80 90 159 89 DR_BUTTON_ALIGN \
	origin		(160*row) (90*column) \
	forecolor	1 1 1 0.8 \
	type		ITEM_TYPE_BUTTON \
	exp			text( " " ) \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.32 \
	textalignx	70 \
	textaligny	22 \
	visible		1 /*unlocked*/ \
	mouseEnter \
	{ \
		play "mouse_over"; \
	} \
	action \
	{ \
		scriptMenuResponse itemID; \
		close self; \
		open "character_stuff"; \
	} \
} 

// 4 rows x 3 columns 
// == 160x90
#define DR_CHARACTER_ALT( page, row, column, itemID ) \
itemDef \
{ \
	rect			80 90 160 90 DR_BUTTON_ALIGN \
	origin			(160*row) (90*column) \
	style			WINDOW_STYLE_SHADER \
	exp				material( tableLookup(CHARACTER_TABLE, 0, itemID, 3) ) \
	visible			1 \
	border			1 \
	bordercolor		1 1 1 1 \
	decoration \
} \
itemDef \
{ \
	rect			80 90 160 90 DR_BUTTON_ALIGN \
	origin			(160*row) (90*column) \
	style			WINDOW_STYLE_SHADER \
	background		"black" \
	forecolor		0 0 0 0.8 \
	visible			when( rank < tableLookup(CHARACTER_TABLE, 0, itemID, 2) ) \
	decoration \
} \
itemDef \
{ \
	visible		when( rank < tableLookup(CHARACTER_TABLE, 0, itemID, 2) ) \
	rect		80 90 0 0 DR_BUTTON_ALIGN \
	origin		(160*row) (90*column) \
	textalignx	48 \
	textaligny	45 \
	forecolor	1 1 1 0.8 \
	exp			text( "^1UNLOCKED AT LEVEL" + tableLookup(CHARACTER_TABLE, 0, itemID, 2) ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_CENTER \
	textscale	0.2 \
	decoration \
} \
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		80 90 0 0 DR_BUTTON_ALIGN \
	origin		(160*row) (90*column) \
	forecolor	0.8 0.8 0.8 0.6 \
	exp			text( tableLookup(CHARACTER_TABLE, 0, itemID, 6) ) \
	type		ITEM_TYPE_BUTTON \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.32 \
	textalignx	7 \
	textaligny	18 \
	visible		1 \
} \
itemDef \
{ \
	visible		1 \
	rect		80 90 0 0 DR_BUTTON_ALIGN \
	origin		(160*row) (90*column) \
	textscale	0.18 \
	textalignx	5 \
	textaligny	85 \
	forecolor	1 1 1 0.8 \
	exp			text( tableLookup(CHARACTER_TABLE, 0, itemID, 7) ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.2 \
	decoration \
} \
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		80 90 159 89 DR_BUTTON_ALIGN \
	origin		(160*row) (90*column) \
	forecolor	1 1 1 0.8 \
	type		ITEM_TYPE_BUTTON \
	exp			text( " " ) \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.32 \
	textalignx	70 \
	textaligny	22 \
	visible		1 /*unlocked*/ \
	mouseEnter \
	{ \
		play "mouse_over"; \
	} \
	action \
	{ \
		scriptMenuResponse itemID; \
		close self; \
		open "character_stuff"; \
	} \
} 

#define DR_CHARACTER( y, itemID ) \
itemDef \
{ \
	visible			when( rank < tableLookup(CHARACTER_TABLE, 0, itemID, 2) ) /*locked*/ \
	rect			90 y 220 25 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_FILLED \
	border			1 \
	bordercolor		DR_BUTTON_BORDERCOLOR \ 
	forecolor		DR_BUTTON_FORECOLOR \ 
	backcolor		DR_BUTTON_BACKCOLOR \
} \
itemDef \
{ \
	visible			when( rank >= tableLookup(CHARACTER_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	rect			90 y 220 25 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_FILLED \
	border			1 \
	bordercolor		DR_BUTTON_BORDERCOLOR \ 
	forecolor		DR_BUTTON_FORECOLOR \ 
	backcolor		DR_BUTTON_BACKCOLOR_FOCUSED \
} \
itemDef \
{ \
	rect			92 (y+1) 30 24 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_SHADER \
	exp				material( tablelookup( CHARACTER_TABLE, 0, itemID, 3 ) ) \
	visible			when( rank >= tableLookup(CHARACTER_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	forecolor		1 1 1 1 \
	decoration \
} \
itemDef \
{ \
	rect			92 (y+1) 30 24 DR_BUTTON_ALIGN \
	style			WINDOW_STYLE_SHADER \
	exp				material( tablelookup( CHARACTER_TABLE, 0, itemID, 3 ) ) \
	visible			when( rank < tableLookup(CHARACTER_TABLE, 0, itemID, 2) ) /*locked*/ \
	forecolor		0.8 0.8 0.8 0.6 \
	decoration \
} \
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		90 y 220 25 DR_BUTTON_ALIGN \
	forecolor	1 1 1 0.8 \
	exp			text( tableLookup(CHARACTER_TABLE, 0, itemID, 6) ) \
	type		ITEM_TYPE_BUTTON \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.32 \
	textalignx	35 \
	textaligny	14 \
	visible		when( rank >= tableLookup(CHARACTER_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	mouseEnter \
	{ \
		play "mouse_over"; \
	} \
	action \
	{ \
		scriptMenuResponse itemID; \
		close self; \
		open "character_stuff"; \
	} \
} \ 
itemDef \
{ \
	style		WINDOW_STYLE_FILLED \
	rect		90 y 220 25 DR_BUTTON_ALIGN \
	forecolor	0.8 0.8 0.8 0.6 \
	exp			text( tableLookup(CHARACTER_TABLE, 0, itemID, 6) ) \
	type		ITEM_TYPE_BUTTON \
	textfont	UI_FONT_NORMAL \
	textstyle	ITEM_TEXTSTYLE_SHADOWED \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.32 \
	textalignx	35 \
	textaligny	14 \
	visible		when( rank < tableLookup(CHARACTER_TABLE, 0, itemID, 2) ) /*locked*/ \
} \
itemDef \
{ \
	visible		1 \
	rect		90 y 220 25 DR_BUTTON_ALIGN \
	textscale	0.18 \
	textalignx	35 \
	textaligny	23 \
	forecolor	1 1 1 0.8 \
	exp			text( tableLookup(CHARACTER_TABLE, 0, itemID, 7) ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_LEFT \
	textscale	0.2 \
	decoration \
} \
itemDef \
{ \
	visible		when( rank < tableLookup(CHARACTER_TABLE, 0, itemID, 2) ) /*locked*/ \
	origin		308 y \
	textscale	0.22 \
	textaligny	11 \
	forecolor	1 1 1 0.8 \
	exp			text( "^1LOCKED ("+tableLookup(CHARACTER_TABLE, 0, itemID, 2)+")" ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_RIGHT \
	textscale	0.2 \
	decoration \
} \
itemDef \
{ \
	visible		when( rank >= tableLookup(CHARACTER_TABLE, 0, itemID, 2) ) /*unlocked*/ \
	origin		308 y \
	textscale	0.22 \
	textaligny	11 \
	forecolor	1 1 1 0.8 \
	exp			text( "^2UNLOCKED" ) \
	textfont	UI_FONT_NORMAL \
	textalign	ITEM_ALIGN_RIGHT \
	textscale	0.2 \
	decoration \
}






/*
#define STATTODVAR_SPRAY execNow "statGetInDvar 979 drui_spray"
#define STATTODVAR_CHARACTER execNow "statGetInDvar 980 drui_character"
#define STATTODVAR_WEAPON execNow "statGetInDvar 981 drui_weapon"

#define STATS_UPDATE \
	STATTODVAR_SPRAY; \
	STATTODVAR_CHARACTER; \
	STATTODVAR_WEAPON;*/