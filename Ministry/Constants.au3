
#Region Constants
;Type (see: http://wiki.gamerevision.com/index.php/Item_Type)

Global Const $GuildWars = WinGetProcess("Guild Wars")

Global const $Vlox 					= 624
Global const $ArborBay 				= 485
Global const $SoOLevel1			 	= 581
Global const $SoOLevel2			 	= 582
Global const $SoOLevel3			 	= 583
Global Const $LostSouls				= 0x324
Global Const $ShandraDialog 		= 0x832401
Global Const $ShandraReward 		= 0x832407

Global Const $Gadds 				= 638
Global Const $Sparkfly 				= 558
Global Const $BogrootLvl1 			= 615
Global Const $BogrootLvl2 			= 616
Global Const $MAP_ID_BALTH_TEMPLE 	= 248

Global Const $Kaineng_Center		= 194
Global Const $Kaineng_Center2		= 817
Global Const $Kaineng_Center_Quest 	= 861

Global Const $AsuranBuffArr[5] = [2434, 2435, 2436, 2481, 2548]
Global Const $DwarvenBuffArr[9] = [2445, 2446, 2447, 2448, 2549, 2565, 2566, 2567, 2568]

Global Enum $RARITY_White = 2621, $RARITY_Blue = 2623, $RARITY_Purple = 2626, $RARITY_Gold = 2624, $RARITY_Green = 2627


; Sorrow Furnace Bosses by Playernumber:
Global Const $Garbock 	= 2560
Global Const $Gordac 	= 2561
Global Const $Runar	 	= 2562
Global Const $Gardock 	= 2563
Global Const $Ivor	 	= 2564
Global Const $Tarnok	= 2565
Global Const $Vokur		= 2566
Global Const $Villnar 	= 2567
Global Const $Galigord	= 2568
Global Const $Brohn 	= 2569
Global Const $Tanzit 	= 2570
Global Const $Drago 	= 2571
Global Const $Korvald 	= 2572
Global Const $Bortak 	= 2573	; can also be Tanzit?
Global Const $Rago		= 2574
Global Const $Rago2	 	= 2575
Global Const $Malinon 	= 2576
Global Const $Graygore	= 2577
Global Const $Gorrel 	= 2578
Global Const $Morggriff = 2579
Global Const $Flint 	= 2580
Global Const $Wroth 	= 2581
Global Const $Thorgall 	= 2582
Global Const $Gargash 	= 2583
Global Const $Grognar 	= 2584
Global Const $Gulnar 	= 2585
Global Const $Bezzr		= 3663

Global $SF_Bosses[3000]
$SF_Bosses[0] = 26
$SF_Bosses[2560] = "Garbock"
$SF_Bosses[2561] = "Gordac"
$SF_Bosses[2562] = "Runar"
$SF_Bosses[2563] = "Gardock"
$SF_Bosses[2564] = "Ìvor"
$SF_Bosses[2565] = "Tarnok"
$SF_Bosses[2566] = "Vokur"
$SF_Bosses[2567] = "Villnar"
$SF_Bosses[2568] = "Galigord"
$SF_Bosses[2569] = "Brohn"
$SF_Bosses[2570] = "Tanzit"
$SF_Bosses[2571] = "Drago"
$SF_Bosses[2572] = "Korvald"
$SF_Bosses[2573] = "Bortak"
$SF_Bosses[2574] = "Rago"
$SF_Bosses[2575] = "Rago"
$SF_Bosses[2576] = "Malinon"
$SF_Bosses[2577] = "Graygore"
$SF_Bosses[2578] = "Gorrel"
$SF_Bosses[2579] = "Morgriff"
$SF_Bosses[2580] = "Flint"
$SF_Bosses[2581] = "Wroth"
$SF_Bosses[2582] = "Thorgall"
$SF_Bosses[2583] = "Gargash"
$SF_Bosses[2584] = "Grognar"
$SF_Bosses[2585] = "Gunar"


; Prophecies Green Items
Global Const $Galigord_Stone_Staff			= 5901
Global Const $Rago_Flame_Staff				= 5902
Global Const $Tanzit_Defender				= 5914
Global Const $Bortak_Bone_Cesta				= 5916
Global Const $Villar_Glove					= 5919
Global Const $Vokur_Cane 					= 5947
Global Const $Drago_Flatbow 				= 5949
Global Const $Willcrusher					= 0			; to be updated

; Factions Green Items
Global Const $Bazzr_Staff					= 6309
Global Const $Deeproot_Sorrow				= 6996
Global Const $Hanaku_Focus 					= 7995
Global Const $Quansong_Focus				= 8003
Global Const $Kunvie_Air_Staff				= 8084
Global Const $Rajazan_Fervor				= 8085
Global Const $Kaolin_Domination_Staff		= 8257
Global Const $Kepkhet_Refuge				= 8431
Global Const $Kaswa_Gluttony				= 8509
Global Const $Wingstorm 					= 8515
Global Const $The_Stonereaper				= 8547
Global Const $Arbor_Earth_Staff				= 8554
Global Const $Jayne_Staff					= 8555
Global Const $Talou_Staff					= 8640
Global Const $Milthuran_Staff				= 8641
Global Const $Shen_Censure 					= 8785
Global Const $Aegis_of_Aaaaarrrrrrggghhh	= 0			; to be updated
Global Const $Phoenix_Retribution			= 11521
Global Const $Zelnehlun_Longbow				= 19273
Global Const $Yammiron_Focus 				= 19323
Global Const $Kayin_Focus 					= 19323
Global Const $Dunshek_Purifier				= 19337
Global Const $Modti_Depravation				= 19410
Global Const $Vanahk_Staff					= 19420
Global Const $Alem_Remedy					= 19424
Global Const $Bohdalz_Fury					= 0			; to be updated

; EotN Green Items
Global Const $Claws_of_the_Kinslayer		= 0			; to be updated
Global Const $Stygian_Scepter				= 21267
Global Const $The_Mindsquall				= 26901
Global Const $Kemil_Scepter					= 26902
Global Const $Kurg_Focus					= 26910
Global Const $The_Thundermaw				= 25918
Global Const $Drikard_Rod					= 26925
Global Const $Chaelse_Staff					= 26930
Global Const $Baglorag_Maul					= 26936
Global Const $Asterius_Scythe				= 26956
Global Const $Staff_Of_The_Wanderer			= 26956
Global Const $Frozy_Staff					= 26958
Global Const $Bogroot_Staff					= 26983
Global Const $Bogroot_Focus					= 26984
Global Const $Oola_Staff					= 26986
Global Const $Ooloa_Wand					= 26987
Global Const $Ooloa_Focus					= 26988
Global Const $Fendi_Staff					= 27001
Global Const $Cyndr_Heart					= 27006
Global Const $Bow_of_the_Kinslayer			= 27017
Global Const $Eldritch_Maul					= 27030
Global Const $Eldritch_Staff				= 27031
Global Const $Jacodo_Staff					= 28314
Global Const $Iceblood_Warstaff				= 0			; to be updated
Global Const $Spear_of_the_Hierophant 		= 0			; to be updated

; Nightfall Green Items
Global Const $Aegis_of_Terror				= 0			; to be updated
Global Const $Alsin_Walking_Stick			= 19413		; to be updated
Global Const $Divine_Ghostly_Staff			= 0			; to be updated
Global Const $Keht_Aegis					= 0			; to be updated
Global Const $Menzes_Ambition				= 0			; to be updated
Global Const $Morolah_Staff					= 19412		; to be updated
Global Const $Staff_of_Ruin					= 0			; to be updated

; War in Krita Winds of Change Green Items
Global Const $Aegis_Of_Clarity				= 29116
Global Const $Conviction_Axe				= 29110
Global Const $Diligence						= 29117
Global Const $Faith							= 29118
Global Const $Guidance						= 29111
Global Const $Judgment						= 29119
Global Const $Resolve						= 29112
Global Const $Temperance					= 29115
Global Const $The_People_Resolve			= 29113
Global Const $The_People_Will				= 29120
Global Const $The_Righteous_Hand			= 29114
Global Const $Xun_Rao_Quill					= 0			; Imperial lockboxes only

; War in Kryta Green Items
Global Const $Peace							= 0			; to be updated
Global Const $Harmony						= 0			; to be updated
Global Const $Law_and_Order					= 0			; to be updated
Global Const $The_Soul_Reaper				= 0			; to be updated
Global Const $Righteous_Fury				= 0 		; to be updated
Global Const $Firebrand						= 0			; to be updated
Global Const $Oroku_Slicers					= 30218
Global Const $Plague_Soaked_Stave			= 30231
Global Const $Traveler_Walking_Stick		= 31167
Global Const $The_Holy_Avenger				= 35134
Global Const $The_Peacekeeper				= 35136
Global Const $The_Interdictor				= 35137
Global Const $The_Rapture					= 35143
Global Const $Beacon_of_the_Unseen			= 35145

; Core Green Items
Global Const $Heleyne_Insight				= 36676


#Region Rare Skins
Global Const $Crystalline_Sword 			= 399
Global Const $Icy_Dragon_Sword				= 0			; to be updated

Global Const $Froggy_Domination 			= 1953
Global Const $Froggy_Fast_Casting			= 1956
Global Const $Froggy_Illusion				= 1957
Global Const $Froggy_Inspiration			= 1958
Global Const $Froggy_Soul_Reaping			= 1959
Global Const $Froggy_Blood					= 1960
Global Const $Froggy_Curses					= 1961
Global Const $Froggy_Death					= 1962
Global Const $Froggy_Air					= 1963
Global Const $Froggy_Earth					= 1964
Global Const $Froggy_Energy_Storage			= 1965
Global Const $Froggy_Fire					= 1966
Global Const $Froggy_Water					= 1967
Global Const $Froggy_Divine					= 1968
Global Const $Froggy_Healing				= 1969
Global Const $Froggy_Protection				= 1970
Global Const $Froggy_Smiting				= 1971
Global Const $Froggy_Communing				= 1972
Global Const $Froggy_Spawning				= 1973
Global Const $Froggy_Restoration			= 1974
Global Const $Froggy_Channeling				= 1975
#EndRegion Froggy

Global Const $BDS_Domination				= 1987
Global Const $BDS_Fast_Casting				= 1988
Global Const $BDS_Illusion					= 1989
Global Const $BDS_Inspiration				= 1990
Global Const $BDS_Soul_Reaping				= 1991
Global Const $BDS_Blood						= 1992
Global Const $BDS_Curses					= 1993
Global Const $BDS_Death						= 1994
Global Const $BDS_Air						= 1995
Global Const $BDS_Earth						= 1996
Global Const $BDS_Energy_Storage			= 1997
Global Const $BDS_Fire						= 1998
Global Const $BDS_Water						= 1999
Global Const $BDS_Divine					= 2000
Global Const $BDS_Healing					= 2001
Global Const $BDS_Protection				= 2002
Global Const $BDS_Smiting					= 2003
Global Const $BDS_Communing					= 2004
Global Const $BDS_Spawning					= 2005
Global Const $BDS_Restoration				= 2006
Global Const $BDS_Channeling				= 2007


Global Const $TYPE_SALVAGE				= 0
Global Const $TYPE_LEADHAND				= 1
Global Const $TYPE_AXE					= 2
Global Const $TYPE_BAG					= 3
Global Const $TYPE_BOOTS				= 4
Global Const $TYPE_BOW					= 5
Global Const $TYPE_BUNDLE				= 6
Global Const $TYPE_CHESTPIECE			= 7
Global Const $TYPE_RUNE_AND_MOD			= 8
Global Const $TYPE_USABLE				= 9
Global Const $TYPE_DYE					= 10
Global Const $TYPE_MATERIAL_AND_ZCOINS	= 11
Global Const $TYPE_OFFHAND				= 12
Global Const $TYPE_GLOVES				= 13
Global Const $TYPE_CELESTIAL_SIGIL		= 14
Global Const $TYPE_HAMMER				= 15
Global Const $TYPE_HEADPIECE			= 16
Global Const $TYPE_TROPHY_2				= 17	; SalvageItem / CC Shards?
Global Const $TYPE_KEY					= 18
Global Const $TYPE_LEGGINS				= 19
Global Const $TYPE_GOLD_COINS			= 20
Global Const $TYPE_QUEST_ITEM			= 21
Global Const $TYPE_WAND					= 22
Global Const $TYPE_SHIELD				= 24
Global Const $TYPE_STAFF				= 26
Global Const $TYPE_SWORD				= 27
Global Const $TYPE_KIT					= 29	; + Keg Ale
Global Const $TYPE_TROPHY				= 30
Global Const $TYPE_SCROLL				= 31
Global Const $TYPE_DAGGERS				= 32
Global Const $TYPE_PRESENT				= 33
Global Const $TYPE_MINIPET				= 34
Global Const $TYPE_SCYTHE				= 35
Global Const $TYPE_SPEAR				= 36
Global Const $TYPE_BOOKS				= 43	; Encrypted Charr Battle Plan/Decoder, Golem User Manual, Books
Global Const $TYPE_COSTUME_BODY			= 44
Global Const $TYPE_COSTUME_HEADPICE		= 45
Global Const $TYPE_NOT_EQUIPPED			= 46
;Material
Global Const $MODEL_ID_BONES			= 921
Global Const $MODEL_ID_DUST				= 929
Global Const $MODEL_ID_IRON				= 948
Global Const $MODEL_ID_FEATHERS			= 933
Global Const $MODEL_ID_PLANT_FIBRES		= 934
Global Const $MODEL_ID_SCALES			= 953
Global Const $MODEL_ID_CHITIN			= 954
Global Const $MODEL_ID_GRANITE			= 955
Global Const $MODEL_ID_MONSTROUS_EYE	= 931
Global Const $MODEL_ID_MONSTROUS_FANG	= 932
Global Const $MODEL_ID_MONSTROUS_CLAW	= 923
Global Const $MODEL_ID_RUBY				= 937
Global Const $MODEL_ID_SAPPHIRE			= 938
;Kits
Global Const $MODEL_ID_CHEAP_SALVAGE_KIT	= 2992
Global Const $MODEL_ID_SALVAGE_KIT			= 5900
Global Const $MODEL_ID_CHEAP_ID_KIT			= 2989
Global Const $MODEL_ID_ID_KIT				= 5899
;Scrolls
Global Const $MODEL_ID_UWSCROLL		= 3746
Global Const $MODEL_ID_FOWSCROLL	= 22280
;Misc
Global Const $MODEL_ID_GOLD_COINS	= 2511
Global Const $MODEL_ID_LOCKPICK		= 22751
Global Const $MODEL_ID_DYE			= 146
Global Const $EXTRA_ID_BLACK		= 10
Global Const $EXTRA_ID_WHITE		= 12
;Event
Global Const $MODEL_ID_TOTS					= 28434
Global Const $MODEL_ID_GOLDEN_EGGS			= 22752
Global Const $MODEL_ID_BUNNIES				= 22644
Global Const $MODEL_ID_GROG					= 30855
Global Const $MODEL_ID_SHAMROCK_ALE			= 22190
Global Const $MODEL_ID_CLOVER				= 22191
Global Const $MODEL_ID_PIE					= 28436
Global Const $MODEL_ID_CIDER				= 28435
Global Const $MODEL_ID_POPPERS				= 21810
Global Const $MODEL_ID_ROCKETS				= 21809
Global Const $MODEL_ID_CUPCAKES				= 22269
Global Const $MODEL_ID_SPARKLER				= 21813
Global Const $MODEL_ID_HONEYCOMB			= 26784
Global Const $MODEL_ID_VICTORY_TOKEN		= 18345
Global Const $MODEL_ID_LUNAR_TOKEN			= 21833
Global Const $MODEL_ID_HUNTERS_ALE			= 910
Global Const $MODEL_ID_PUMPKIN_COOKIE		= 28433
Global Const $MODEL_ID_KRYTAN_BRANDY		= 35124
Global Const $MODEL_ID_BLUE_DRINK			= 21812
Global Const $MODEL_ID_FRUITCAKE			= 21492
Global Const $MODEL_ID_SPIKED_EGGNOGG		= 6366
Global Const $MODEL_ID_EGGNOGG				= 6375
Global Const $MODEL_ID_SNOWMAN_SUMMONER		= 6376
Global Const $MODEL_ID_FROSTY_TONIC			= 30648
Global Const $MODEL_ID_MISCHIEVOUS_TONIC	= 31020
Global Const $MODEL_ID_DELICIOUS_CAKE		= 36681
Global Const $MODEL_ID_ICED_TEA				= 36682
Global Const $MODEL_ID_PARTY_BEACON			= 36683
;Tomes - E = ELITE | R = REGULAR
Global Const $MODEL_ID_TOME_E_SIN		= 21786
Global Const $MODEL_ID_TOME_E_MES		= 21787
Global Const $MODEL_ID_TOME_E_NEC		= 21788
Global Const $MODEL_ID_TOME_E_ELE		= 21789
Global Const $MODEL_ID_TOME_E_MONK		= 21790
Global Const $MODEL_ID_TOME_E_WAR		= 21791
Global Const $MODEL_ID_TOME_E_RANGER	= 21792
Global Const $MODEL_ID_TOME_E_DERV		= 21793
Global Const $MODEL_ID_TOME_E_RIT		= 21794
Global Const $MODEL_ID_TOME_E_PARA		= 21795
Global Const $MODEL_ID_TOME_R_SIN		= 21796
Global Const $MODEL_ID_TOME_R_MES		= 21797
Global Const $MODEL_ID_TOME_R_NEC		= 21798
Global Const $MODEL_ID_TOME_R_ELE		= 21799
Global Const $MODEL_ID_TOME_R_MONK		= 21800
Global Const $MODEL_ID_TOME_R_WAR		= 21801
Global Const $MODEL_ID_TOME_R_RANGER	= 21802
Global Const $MODEL_ID_TOME_R_DERV		= 21803
Global Const $MODEL_ID_TOME_R_RIT		= 21804
Global Const $MODEL_ID_TOME_R_PARA		= 21805
;Conditions
Global Const $EFFECT_ID_BLEEDING	= 478
Global Const $EFFECT_ID_BLIND		= 479
Global Const $EFFECT_ID_BURNING		= 480
Global Const $EFFECT_ID_CRIPPLED	= 481
Global Const $EFFECT_ID_DEEP_WOUND	= 482
Global Const $EFFECT_ID_DISEASE		= 483
Global Const $EFFECT_ID_POISON		= 484
Global Const $EFFECT_ID_DAZED		= 485
Global Const $EFFECT_ID_WEAKNESS	= 486
;Arrays for pickung up common stuff (things that do not drop from enemies (i.e. rice wine etc.)) are not listed.
Global Const $EVENT_ID_ARRAY[29] =	[28,	$MODEL_ID_TOTS, $MODEL_ID_GOLDEN_EGGS, $MODEL_ID_BUNNIES, $MODEL_ID_GROG, $MODEL_ID_SHAMROCK_ALE, $MODEL_ID_CLOVER, $MODEL_ID_PIE, $MODEL_ID_CIDER, $MODEL_ID_POPPERS, $MODEL_ID_ROCKETS, $MODEL_ID_CUPCAKES,  _
											$MODEL_ID_SPARKLER, $MODEL_ID_HONEYCOMB, $MODEL_ID_VICTORY_TOKEN, $MODEL_ID_LUNAR_TOKEN, $MODEL_ID_HUNTERS_ALE, $MODEL_ID_PUMPKIN_COOKIE, $MODEL_ID_KRYTAN_BRANDY, $MODEL_ID_BLUE_DRINK, $MODEL_ID_FRUITCAKE, _
											$MODEL_ID_SPIKED_EGGNOGG, $MODEL_ID_EGGNOGG, $MODEL_ID_SNOWMAN_SUMMONER, $MODEL_ID_FROSTY_TONIC, $MODEL_ID_MISCHIEVOUS_TONIC, $MODEL_ID_DELICIOUS_CAKE, $MODEL_ID_ICED_TEA, $MODEL_ID_PARTY_BEACON]
Global Const $ALCOHOL_ID_ARRAY[9] = [8, $MODEL_ID_GROG, $MODEL_ID_SHAMROCK_ALE, $MODEL_ID_CIDER, $MODEL_ID_HUNTERS_ALE, $MODEL_ID_KRYTAN_BRANDY, $MODEL_ID_SPIKED_EGGNOGG, $MODEL_ID_EGGNOGG, $MODEL_ID_ICED_TEA]
Global Const $SWEETS_ID_ARAY[9] = [8, $MODEL_ID_GOLDEN_EGGS, $MODEL_ID_BUNNIES, $MODEL_ID_PIE, $MODEL_ID_HONEYCOMB, $MODEL_ID_PUMPKIN_COOKIE, $MODEL_ID_BLUE_DRINK, $MODEL_ID_FRUITCAKE, $MODEL_ID_DELICIOUS_CAKE]
Global Const $PARTY_ID_ARAY[8] = [7, $MODEL_ID_POPPERS, $MODEL_ID_ROCKETS, $MODEL_ID_SPARKLER, $MODEL_ID_SNOWMAN_SUMMONER, $MODEL_ID_FROSTY_TONIC, $MODEL_ID_MISCHIEVOUS_TONIC, $MODEL_ID_PARTY_BEACON]
Global Const $MATERIAL_ID_ARRAY[14] = [13, $MODEL_ID_BONES, $MODEL_ID_DUST, $MODEL_ID_IRON, $MODEL_ID_FEATHERS, $MODEL_ID_PLANT_FIBRES, $MODEL_ID_SCALES, $MODEL_ID_CHITIN, $MODEL_ID_GRANITE, $MODEL_ID_MONSTROUS_EYE, $MODEL_ID_MONSTROUS_FANG, $MODEL_ID_MONSTROUS_CLAW, $MODEL_ID_RUBY, $MODEL_ID_SAPPHIRE]
Global Const $TOME_ID_ARRAY[3] = [2, $MODEL_ID_TOME_E_SIN, $MODEL_ID_TOME_R_PARA]	;lowest ID and highest ID
;Hero IDs [ID, "short Name"]
Global Enum $HERO_ID_Norgu = 1, $HERO_ID_Goren, $HERO_ID_Tahlkora, $HERO_ID_Master, $HERO_ID_Jin, $HERO_ID_Koss, $HERO_ID_Dunkoro, $HERO_ID_Sousuke, $HERO_ID_Melonni, $HERO_ID_Zhed, $HERO_ID_Morgahn, $HERO_ID_Margrid, $HERO_ID_Zenmai, $HERO_ID_Olias, $HERO_ID_Razah, $HERO_ID_Mox, $HERO_ID_Keiran, $HERO_ID_Jora, $HERO_ID_Brandor, $HERO_ID_Anton, $HERO_ID_Livia, $HERO_ID_Hayda, $HERO_ID_Kahmu, $HERO_ID_Gwen, $HERO_ID_Xandra, $HERO_ID_Vekk, $HERO_ID_Ogden, $HERO_ID_MERCENARY_1, $HERO_ID_MERCENARY_2, $HERO_ID_MERCENARY_3, $HERO_ID_MERCENARY_4, $HERO_ID_MERCENARY_5, $HERO_ID_MERCENARY_6, $HERO_ID_MERCENARY_7, $HERO_ID_MERCENARY_8, $HERO_ID_Miku , $HERO_ID_Zei_Ri
Global Const $HERO_ID[38][2] = [ [37, 1], [1, "Norgu"], [2, "Goren"], [3, "Tahlkora"], [4, "Master"], [5, "Jin"], [6, "Koss"], [7, "Dunkoro"], [8, "Sousuke"], [9, "Melonni"], [10, "Zhed"], [11, "Morgahn"], [12, "Margrid"], [13, "Zenmai"], [14, "Olias"], [15, "Razah"], [16, "Mox"], [17, "Keiran"], [18, "Jora"], [19, "Brandor"], [20, "Anton"], [21, "Livia"], [22, "Hayda"], [23, "Kahmu"], [24, "Gwen"], [25, "Xandra"], [26, "Vekk"], [27, "Ogden"], [28, "Mercenary Hero 1"], [29, "Mercenary Hero 2"], [30, "Mercenary Hero 3"], [31, "Mercenary Hero 4"], [32, "Mercenary Hero 5"], [33, "Mercenary Hero 6"], [34, "Mercenary Hero 7"], [35, "Mercenary Hero 8"], [36, "Miku"], [37, "Zei Ri"] ]
Global Const $TYPE_ID [12] = [$TYPE_STAFF, $TYPE_WAND, $TYPE_OFFHAND, $TYPE_SHIELD, $TYPE_AXE, $TYPE_BOW, $TYPE_HAMMER, $TYPE_DAGGERS, $TYPE_SCYTHE, $TYPE_SPEAR, $TYPE_SWORD, $TYPE_SALVAGE]

#Endregion

#Region Tomes
; All Tomes
Global $Tome_Array[20] = [21786, 21787, 21788, 21789, 21790, 21791, 21792, 21793, 21794, 21795, 21796, 21797, 21798, 21799, 21800, 21801, 21802, 21803, 21804, 21805]
;~ Elite Tomes
Global $Elite_Tome_Array[10] = [21786, 21787, 21788, 21789, 21790, 21791, 21792, 21793, 21794, 21795]
Global Const $ITEM_ID_Assassin_EliteTome = 21786
Global Const $ITEM_ID_Mesmer_EliteTome = 21787
Global Const $ITEM_ID_Necromancer_EliteTome = 21788
Global Const $ITEM_ID_Elementalist_EliteTome = 21789
Global Const $ITEM_ID_Monk_EliteTome = 21790
Global Const $ITEM_ID_Warrior_EliteTome = 21791
Global Const $ITEM_ID_Ranger_EliteTome = 21792
Global Const $ITEM_ID_Dervish_EliteTome = 21793
Global Const $ITEM_ID_Ritualist_EliteTome = 21794
Global Const $ITEM_ID_Paragon_EliteTome = 21795
;~ Normal Tomes
Global $Regular_Tome_Array[10] = [21796, 21797, 21798, 21799, 21800, 21801, 21802, 21803, 21804, 21805]
Global Const $ITEM_ID_Assassin_Tome = 21796
Global Const $ITEM_ID_Mesmer_Tome = 21797
Global Const $ITEM_ID_Necromancer_Tome = 21798
Global Const $ITEM_ID_Elementalist_Tome = 21799
Global Const $ITEM_ID_Monk_Tome = 21800
Global Const $ITEM_ID_Warrior_Tome = 21801
Global Const $ITEM_ID_Ranger_Tome = 21802
Global Const $ITEM_ID_Dervish_Tome = 21803
Global Const $ITEM_ID_Ritualist_Tome = 21804
Global Const $ITEM_ID_Paragon_Tome = 21805
#EndRegion Tomes


#Region Guild Hall Globals
;~ Prophecies

Global $GH_Array[16] = [4, 5, 6, 51, 176, 177, 178, 179, 275, 276, 359, 360, 529, 530, 537, 538]
Global $GH_ID_Warriors_Isle = 4
Global $GH_ID_Hunters_Isle = 5
Global $GH_ID_Wizards_Isle = 6
Global $GH_ID_Burning_Isle = 52
Global $GH_ID_Frozen_Isle = 176
Global $GH_ID_Nomads_Isle = 177
Global $GH_ID_Druids_Isle = 178
Global $GH_ID_Isle_Of_The_Dead = 179
;~ Factions
Global $GH_ID_Isle_Of_Weeping_Stone = 275
Global $GH_ID_Isle_Of_Jade = 276
Global $GH_ID_Imperial_Isle = 359
Global $GH_ID_Isle_Of_Meditation = 360
;~ Nightfall
Global $GH_ID_Uncharted_Isle = 529
Global $GH_ID_Isle_Of_Wurms = 530
Global $GH_ID_Corrupted_Isle = 537
Global $GH_ID_Isle_Of_Solitude = 538

Global $WarriorsIsle = False
Global $HuntersIsle = False
Global $WizardsIsle = False
Global $BurningIsle = False
Global $FrozenIsle = False
Global $NomadsIsle = False
Global $DruidsIsle = False
Global $IsleOfTheDead = False
Global $IsleOfWeepingStone = False
Global $IsleOfJade = False
Global $ImperialIsle = False
Global $IsleOfMeditation = False
Global $UnchartedIsle = False
Global $IsleOfWurms = False
Global $CorruptedIsle = False
Global $IsleOfSolitude = False
#EndRegion Guild Hall Globals


#Region All Skill IDs, Global Variables
; SKILL TYPES
Global $Stance = 3;
Global $Hex = 4;
Global $Spell = 5;
Global $Enchantment = 6;
Global $Signet = 7;
Global $Condition = 8;
Global $Well = 9;
Global $Skill = 10;
Global $Ward = 11;
Global $Glyph = 12;
Global $Attack = 14;
Global $Shout = 15;
Global $Preparation = 19;
Global $Trap = 21;
Global $Ritual = 22;
Global $ItemSpell = 24;
Global $WeaponSpell = 25;
Global $Chant = 27;
Global $EchoRefrain = 28;
Global $Disguise = 29;

; PROFESSIONS
Global $None = 0
Global $Warrior = 1
Global $Ranger = 2
Global $Monk = 3
Global $Necromancer = 4
Global $Mesmer = 5
Global $Elementalist = 6
Global $Assassin = 7
Global $Ritualist = 8
Global $Paragon = 9
Global $Dervish = 10

; ATTRIBUTES
Global $Fast_Casting = 0;
Global $Illusion_Magic = 1;
Global $Domination_Magic = 2;
Global $Inspiration_Magic = 3;
Global $Blood_Magic = 4;
Global $Death_Magic = 5;
Global $Soul_Reaping = 6;
Global $Curses = 7;
Global $Air_Magic = 8;
Global $Earth_Magic = 9;
Global $Fire_Magic = 10;
Global $Water_Magic = 11;
Global $Energy_Storage = 12;
Global $Healing_Prayers = 13;
Global $Smiting_Prayers = 14;
Global $Protection_Prayers = 15;
Global $Divine_Favor = 16;
Global $Strength = 17;
Global $Axe_Mastery = 18;
Global $Hammer_Mastery = 19;
Global $Swordsmanship = 20;
Global $Tactics = 21;
Global $Beast_Mastery = 22;
Global $Expertise = 23;
Global $Wilderness_Survival = 24;
Global $Marksmanship = 25;
Global $Dagger_Mastery = 29;
Global $Deadly_Arts = 30;
Global $Shadow_Arts = 31;
Global $Communing = 32;
Global $Restoration_Magic = 33;
Global $Channeling_Magic = 34;
Global $Critical_Strikes = 35;
Global $Spawning_Power = 36;
Global $Spear_Mastery = 37;
Global $Command = 38;
Global $Motivation = 39;
Global $Leadership = 40;
Global $Scythe_Mastery = 41;
Global $Wind_Prayers = 42;
Global $Earth_Prayers = 43;
Global $Mysticism = 44;
Global $AttrID_None = 0xFF

; RANGES
Global $Adjacent = 156
Global $Nearby = 240
Global $Area = 312
Global $Earshot = 1000
Global $Spell_casting = 1085
Global $Spirit = 2500
Global $Compass = 5000

; SKILL TARGETS
Global $target_self = 0
Global $target_none = 0
Global $target_spirit = 1
Global $target_animal = 1
Global $target_corpse = 1
Global $target_ally = 3
Global $target_otherally = 4
Global $target_enemy = 5
Global $target_dead_ally = 6
Global $target_minion = 14
Global $target_ground = 16

;SKILL IDs
Global $No_Skill = 0;
Global $Healing_Signet = 1;
Global $Resurrection_Signet = 2;
Global $Signet_of_Capture = 3;
Global $BAMPH = 4;
Global $Power_Block = 5;
Global $Mantra_of_Earth = 6;
Global $Mantra_of_Flame = 7;
Global $Mantra_of_Frost = 8;
Global $Mantra_of_Lightning = 9;
Global $Hex_Breaker = 10;
Global $Distortion = 11;
Global $Mantra_of_Celerity = 12;
Global $Mantra_of_Recovery = 13;
Global $Mantra_of_Persistence = 14;
Global $Mantra_of_Inscriptions = 15;
Global $Mantra_of_Concentration = 16;
Global $Mantra_of_Resolve = 17;
Global $Mantra_of_Signets = 18;
Global $Fragility = 19;
Global $Confusion = 20;
Global $Inspired_Enchantment = 21;
Global $Inspired_Hex = 22;
Global $Power_Spike = 23;
Global $Power_Leak = 24;
Global $Power_Drain = 25;
Global $Empathy = 26;
Global $Shatter_Delusions = 27;
Global $Backfire = 28;
Global $Blackout = 29;
Global $Diversion = 30;
Global $Conjure_Phantasm = 31;
Global $Illusion_of_Weakness = 32;
Global $Illusionary_Weaponry = 33;
Global $Sympathetic_Visage = 34;
Global $Ignorance = 35;
Global $Arcane_Conundrum = 36;
Global $Illusion_of_Haste = 37;
Global $Channeling = 38;
Global $Energy_Surge = 39;
Global $Ether_Feast = 40;
Global $Ether_Lord = 41;
Global $Energy_Burn = 42;
Global $Clumsiness = 43;
Global $Phantom_Pain = 44;
Global $Ethereal_Burden = 45;
Global $Guilt = 46;
Global $Ineptitude = 47;
Global $Spirit_of_Failure = 48;
Global $Mind_Wrack = 49;
Global $Wastrels_Worry = 50;
Global $Shame = 51;
Global $Panic = 52;
Global $Migraine = 53;
Global $Crippling_Anguish = 54;
Global $Fevered_Dreams = 55;
Global $Soothing_Images = 56;
Global $Cry_of_Frustration = 57;
Global $Signet_of_Midnight = 58;
Global $Signet_of_Weariness = 59;
Global $Signet_of_Illusions_beta_version = 60;
Global $Leech_Signet = 61;
Global $Signet_of_Humility = 62;
Global $Keystone_Signet = 63;
Global $Mimic = 64;
Global $Arcane_Mimicry = 65;
Global $Spirit_Shackles = 66;
Global $Shatter_Hex = 67;
Global $Drain_Enchantment = 68;
Global $Shatter_Enchantment = 69;
Global $Disappear = 70;
Global $Unnatural_Signet_alpha_version = 71;
Global $Elemental_Resistance = 72;
Global $Physical_Resistance = 73;
Global $Echo = 74;
Global $Arcane_Echo = 75;
Global $Imagined_Burden = 76;
Global $Chaos_Storm = 77;
Global $Epidemic = 78;
Global $Energy_Drain = 79;
Global $Energy_Tap = 80;
Global $Arcane_Thievery = 81;
Global $Mantra_of_Recall = 82;
Global $Animate_Bone_Horror = 83;
Global $Animate_Bone_Fiend = 84;
Global $Animate_Bone_Minions = 85;
Global $Grenths_Balance = 86;
Global $Veratas_Gaze = 87;
Global $Veratas_Aura = 88;
Global $Deathly_Chill = 89;
Global $Veratas_Sacrifice = 90;
Global $Well_of_Power = 91;
Global $Well_of_Blood = 92;
Global $Well_of_Suffering = 93;
Global $Well_of_the_Profane = 94;
Global $Putrid_Explosion = 95;
Global $Soul_Feast = 96;
Global $Necrotic_Traversal = 97;
Global $Consume_Corpse = 98;
Global $Parasitic_Bond = 99;
Global $Soul_Barbs = 100;
Global $Barbs = 101;
Global $Shadow_Strike = 102;
Global $Price_of_Failure = 103;
Global $Death_Nova = 104;
Global $Deathly_Swarm = 105;
Global $Rotting_Flesh = 106;
Global $Virulence = 107;
Global $Suffering = 108;
Global $Life_Siphon = 109;
Global $Unholy_Feast = 110;
Global $Awaken_the_Blood = 111;
Global $Desecrate_Enchantments = 112;
Global $Tainted_Flesh = 113;
Global $Aura_of_the_Lich = 114;
Global $Blood_Renewal = 115;
Global $Dark_Aura = 116;
Global $Enfeeble = 117;
Global $Enfeebling_Blood = 118;
Global $Blood_is_Power = 119;
Global $Blood_of_the_Master = 120;
Global $Spiteful_Spirit = 121;
Global $Malign_Intervention = 122;
Global $Insidious_Parasite = 123;
Global $Spinal_Shivers = 124;
Global $Wither = 125;
Global $Life_Transfer = 126;
Global $Mark_of_Subversion = 127;
Global $Soul_Leech = 128;
Global $Defile_Flesh = 129;
Global $Demonic_Flesh = 130;
Global $Barbed_Signet = 131;
Global $Plague_Signet = 132;
Global $Dark_Pact = 133;
Global $Order_of_Pain = 134;
Global $Faintheartedness = 135;
Global $Shadow_of_Fear = 136;
Global $Rigor_Mortis = 137;
Global $Dark_Bond = 138;
Global $Infuse_Condition = 139;
Global $Malaise = 140;
Global $Rend_Enchantments = 141;
Global $Lingering_Curse = 142;
Global $Strip_Enchantment = 143;
Global $Chilblains = 144;
Global $Signet_of_Agony = 145;
Global $Offering_of_Blood = 146;
Global $Dark_Fury = 147;
Global $Order_of_the_Vampire = 148;
Global $Plague_Sending = 149;
Global $Mark_of_Pain = 150;
Global $Feast_of_Corruption = 151;
Global $Taste_of_Death = 152;
Global $Vampiric_Gaze = 153;
Global $Plague_Touch = 154;
Global $Vile_Touch = 155;
Global $Vampiric_Touch = 156;
Global $Blood_Ritual = 157;
Global $Touch_of_Agony = 158;
Global $Weaken_Armor = 159;
Global $Windborne_Speed = 160;
Global $Lightning_Storm = 161;
Global $Gale = 162;
Global $Whirlwind = 163;
Global $Elemental_Attunement = 164;
Global $Armor_of_Earth = 165;
Global $Kinetic_Armor = 166;
Global $Eruption = 167;
Global $Magnetic_Aura = 168;
Global $Earth_Attunement = 169;
Global $Earthquake = 170;
Global $Stoning = 171;
Global $Stone_Daggers = 172;
Global $Grasping_Earth = 173;
Global $Aftershock = 174;
Global $Ward_Against_Elements = 175;
Global $Ward_Against_Melee = 176;
Global $Ward_Against_Foes = 177;
Global $Ether_Prodigy = 178;
Global $Incendiary_Bonds = 179;
Global $Aura_of_Restoration = 180;
Global $Ether_Renewal = 181;
Global $Conjure_Flame = 182;
Global $Inferno = 183;
Global $Fire_Attunement = 184;
Global $Mind_Burn = 185;
Global $Fireball = 186;
Global $Meteor = 187;
Global $Flame_Burst = 188;
Global $Rodgorts_Invocation = 189;
Global $Mark_of_Rodgort = 190;
Global $Immolate = 191;
Global $Meteor_Shower = 192;
Global $Phoenix = 193;
Global $Flare = 194;
Global $Lava_Font = 195;
Global $Searing_Heat = 196;
Global $Fire_Storm = 197;
Global $Glyph_of_Elemental_Power = 198;
Global $Glyph_of_Energy = 199;
Global $Glyph_of_Lesser_Energy = 200;
Global $Glyph_of_Concentration = 201;
Global $Glyph_of_Sacrifice = 202;
Global $Glyph_of_Renewal = 203;
Global $Rust = 204;
Global $Lightning_Surge = 205;
Global $Armor_of_Frost = 206;
Global $Conjure_Frost = 207;
Global $Water_Attunement = 208;
Global $Mind_Freeze = 209;
Global $Ice_Prison = 210;
Global $Ice_Spikes = 211;
Global $Frozen_Burst = 212;
Global $Shard_Storm = 213;
Global $Ice_Spear = 214;
Global $Maelstrom = 215;
Global $Iron_Mist = 216;
Global $Crystal_Wave = 217;
Global $Obsidian_Flesh = 218;
Global $Obsidian_Flame = 219;
Global $Blinding_Flash = 220;
Global $Conjure_Lightning = 221;
Global $Lightning_Strike = 222;
Global $Chain_Lightning = 223;
Global $Enervating_Charge = 224;
Global $Air_Attunement = 225;
Global $Mind_Shock = 226;
Global $Glimmering_Mark = 227;
Global $Thunderclap = 228;
Global $Lightning_Orb = 229;
Global $Lightning_Javelin = 230;
Global $Shock = 231;
Global $Lightning_Touch = 232;
Global $Swirling_Aura = 233;
Global $Deep_Freeze = 234;
Global $Blurred_Vision = 235;
Global $Mist_Form = 236;
Global $Water_Trident = 237;
Global $Armor_of_Mist = 238;
Global $Ward_Against_Harm = 239;
Global $Smite = 240;
Global $Life_Bond = 241;
Global $Balthazars_Spirit = 242;
Global $Strength_of_Honor = 243;
Global $Life_Attunement = 244;
Global $Protective_Spirit = 245;
Global $Divine_Intervention = 246;
Global $Symbol_of_Wrath = 247;
Global $Retribution = 248;
Global $Holy_Wrath = 249;
Global $Essence_Bond = 250;
Global $Scourge_Healing = 251;
Global $Banish = 252;
Global $Scourge_Sacrifice = 253;
Global $Vigorous_Spirit = 254;
Global $Watchful_Spirit = 255;
Global $Blessed_Aura = 256;
Global $Aegis = 257;
Global $Guardian = 258;
Global $Shield_of_Deflection = 259;
Global $Aura_of_Faith = 260;
Global $Shield_of_Regeneration = 261;
Global $Shield_of_Judgment = 262;
Global $Protective_Bond = 263;
Global $Pacifism = 264;
Global $Amity = 265;
Global $Peace_and_Harmony = 266;
Global $Judges_Insight = 267;
Global $Unyielding_Aura = 268;
Global $Mark_of_Protection = 269;
Global $Life_Barrier = 270;
Global $Zealots_Fire = 271;
Global $Balthazars_Aura = 272;
Global $Spell_Breaker = 273;
Global $Healing_Seed = 274;
Global $Mend_Condition = 275;
Global $Restore_Condition = 276;
Global $Mend_Ailment = 277;
Global $Purge_Conditions = 278;
Global $Divine_Healing = 279;
Global $Heal_Area = 280;
Global $Orison_of_Healing = 281;
Global $Word_of_Healing = 282;
Global $Dwaynas_Kiss = 283;
Global $Divine_Boon = 284;
Global $Healing_Hands = 285;
Global $Heal_Other = 286;
Global $Heal_Party = 287;
Global $Healing_Breeze = 288;
Global $Vital_Blessing = 289;
Global $Mending = 290;
Global $Live_Vicariously = 291;
Global $Infuse_Health = 292;
Global $Signet_of_Devotion = 293;
Global $Signet_of_Judgment = 294;
Global $Purge_Signet = 295;
Global $Bane_Signet = 296;
Global $Blessed_Signet = 297;
Global $Martyr = 298;
Global $Shielding_Hands = 299;
Global $Contemplation_of_Purity = 300;
Global $Remove_Hex = 301;
Global $Smite_Hex = 302;
Global $Convert_Hexes = 303;
Global $Light_of_Dwayna = 304;
Global $Resurrect = 305;
Global $Rebirth = 306;
Global $Reversal_of_Fortune = 307;
Global $Succor = 308;
Global $Holy_Veil = 309;
Global $Divine_Spirit = 310;
Global $Draw_Conditions = 311;
Global $Holy_Strike = 312;
Global $Healing_Touch = 313;
Global $Restore_Life = 314;
Global $Vengeance = 315;
Global $To_the_Limit = 316;
Global $Battle_Rage = 317;
Global $Defy_Pain = 318;
Global $Rush = 319;
Global $Hamstring = 320;
Global $Wild_Blow = 321;
Global $Power_Attack = 322;
Global $Desperation_Blow = 323;
Global $Thrill_of_Victory = 324;
Global $Distracting_Blow = 325;
Global $Protectors_Strike = 326;
Global $Griffons_Sweep = 327;
Global $Pure_Strike = 328;
Global $Skull_Crack = 329;
Global $Cyclone_Axe = 330;
Global $Hammer_Bash = 331;
Global $Bulls_Strike = 332;
Global $I_Will_Avenge_You = 333;
Global $Axe_Rake = 334;
Global $Cleave = 335;
Global $Executioners_Strike = 336;
Global $Dismember = 337;
Global $Eviscerate = 338;
Global $Penetrating_Blow = 339;
Global $Disrupting_Chop = 340;
Global $Swift_Chop = 341;
Global $Axe_Twist = 342;
Global $For_Great_Justice = 343;
Global $Flurry = 344;
Global $Defensive_Stance = 345;
Global $Frenzy = 346;
Global $Endure_Pain = 347;
Global $Watch_Yourself = 348;
Global $Sprint = 349;
Global $Belly_Smash = 350;
Global $Mighty_Blow = 351;
Global $Crushing_Blow = 352;
Global $Crude_Swing = 353;
Global $Earth_Shaker = 354;
Global $Devastating_Hammer = 355;
Global $Irresistible_Blow = 356;
Global $Counter_Blow = 357;
Global $Backbreaker = 358;
Global $Heavy_Blow = 359;
Global $Staggering_Blow = 360;
Global $Dolyak_Signet = 361;
Global $Warriors_Cunning = 362;
Global $Shield_Bash = 363;
Global $Charge = 364;
Global $Victory_is_Mine = 365;
Global $Fear_Me = 366;
Global $Shields_Up = 367;
Global $I_Will_Survive = 368;
Global $Dont_Believe_Their_Lies = 369;
Global $Berserker_Stance = 370;
Global $Balanced_Stance = 371;
Global $Gladiators_Defense = 372;
Global $Deflect_Arrows = 373;
Global $Warriors_Endurance = 374;
Global $Dwarven_Battle_Stance = 375;
Global $Disciplined_Stance = 376;
Global $Wary_Stance = 377;
Global $Shield_Stance = 378;
Global $Bulls_Charge = 379;
Global $Bonettis_Defense = 380;
Global $Hundred_Blades = 381;
Global $Sever_Artery = 382;
Global $Galrath_Slash = 383;
Global $Gash = 384;
Global $Final_Thrust = 385;
Global $Seeking_Blade = 386;
Global $Riposte = 387;
Global $Deadly_Riposte = 388;
Global $Flourish = 389;
Global $Savage_Slash = 390;
Global $Hunters_Shot = 391;
Global $Pin_Down = 392;
Global $Crippling_Shot = 393;
Global $Power_Shot = 394;
Global $Barrage = 395;
Global $Dual_Shot = 396;
Global $Quick_Shot = 397;
Global $Penetrating_Attack = 398;
Global $Distracting_Shot = 399;
Global $Precision_Shot = 400;
Global $Splinter_Shot_monster_skill = 401;
Global $Determined_Shot = 402;
Global $Called_Shot = 403;
Global $Poison_Arrow = 404;
Global $Oath_Shot = 405;
Global $Debilitating_Shot = 406;
Global $Point_Blank_Shot = 407;
Global $Concussion_Shot = 408;
Global $Punishing_Shot = 409;
Global $Call_of_Ferocity = 410;
Global $Charm_Animal = 411;
Global $Call_of_Protection = 412;
Global $Call_of_Elemental_Protection = 413;
Global $Call_of_Vitality = 414;
Global $Call_of_Haste = 415;
Global $Call_of_Healing = 416;
Global $Call_of_Resilience = 417;
Global $Call_of_Feeding = 418;
Global $Call_of_the_Hunter = 419;
Global $Call_of_Brutality = 420;
Global $Call_of_Disruption = 421;
Global $Revive_Animal = 422;
Global $Symbiotic_Bond = 423;
Global $Throw_Dirt = 424;
Global $Dodge = 425;
Global $Savage_Shot = 426;
Global $Antidote_Signet = 427;
Global $Incendiary_Arrows = 428;
Global $Melandrus_Arrows = 429;
Global $Marksmans_Wager = 430;
Global $Ignite_Arrows = 431;
Global $Read_the_Wind = 432;
Global $Kindle_Arrows = 433;
Global $Choking_Gas = 434;
Global $Apply_Poison = 435;
Global $Comfort_Animal = 436;
Global $Bestial_Pounce = 437;
Global $Maiming_Strike = 438;
Global $Feral_Lunge = 439;
Global $Scavenger_Strike = 440;
Global $Melandrus_Assault = 441;
Global $Ferocious_Strike = 442;
Global $Predators_Pounce = 443;
Global $Brutal_Strike = 444;
Global $Disrupting_Lunge = 445;
Global $Troll_Unguent = 446;
Global $Otyughs_Cry = 447;
Global $Escape = 448;
Global $Practiced_Stance = 449;
Global $Whirling_Defense = 450;
Global $Melandrus_Resilience = 451;
Global $Dryders_Defenses = 452;
Global $Lightning_Reflexes = 453;
Global $Tigers_Fury = 454;
Global $Storm_Chaser = 455;
Global $Serpents_Quickness = 456;
Global $Dust_Trap = 457;
Global $Barbed_Trap = 458;
Global $Flame_Trap = 459;
Global $Healing_Spring = 460;
Global $Spike_Trap = 461;
Global $Winter = 462;
Global $Winnowing = 463;
Global $Edge_of_Extinction = 464;
Global $Greater_Conflagration = 465;
Global $Conflagration = 466;
Global $Fertile_Season = 467;
Global $Symbiosis = 468;
Global $Primal_Echoes = 469;
Global $Predatory_Season = 470;
Global $Frozen_Soil = 471;
Global $Favorable_Winds = 472;
Global $High_Winds = 473;
Global $Energizing_Wind = 474;
Global $Quickening_Zephyr = 475;
Global $Natures_Renewal = 476;
Global $Muddy_Terrain = 477;
Global $Bleeding = 478;
Global $Blind = 479;
Global $Burning = 480;
Global $Crippled = 481;
Global $Deep_Wound = 482;
Global $Disease = 483;
Global $Poison = 484;
Global $Dazed = 485;
Global $Weakness = 486;
Global $Cleansed = 487;
Global $Eruption_environment = 488;
Global $Fire_Storm_environment = 489;
Global $Fount_Of_Maguuma = 491;
Global $Healing_Fountain = 492;
Global $Icy_Ground = 493;
Global $Maelstrom_environment = 494;
Global $Mursaat_Tower_skill = 495;
Global $Quicksand_environment_effect = 496;
Global $Curse_of_the_Bloodstone = 497;
Global $Chain_Lightning_environment = 498;
Global $Obelisk_Lightning = 499;
Global $Tar = 500;
Global $Siege_Attack = 501;
Global $Scepter_of_Orrs_Aura = 503;
Global $Scepter_of_Orrs_Power = 504;
Global $Burden_Totem = 505;
Global $Splinter_Mine_skill = 506;
Global $Entanglement = 507;
Global $Dwarven_Powder_Keg = 508;
Global $Seed_of_Resurrection = 509;
Global $Deafening_Roar = 510;
Global $Brutal_Mauling = 511;
Global $Crippling_Attack = 512;
Global $Breaking_Charm = 514;
Global $Charr_Buff = 515;
Global $Claim_Resource = 516;
Global $Dozen_Shot = 524;
Global $Nibble = 525;
Global $Reflection = 528;
Global $Giant_Stomp = 530;
Global $Agnars_Rage = 531;
Global $Crystal_Haze = 533;
Global $Crystal_Bonds = 534;
Global $Jagged_Crystal_Skin = 535;
Global $Crystal_Hibernation = 536;
Global $Hunger_of_the_Lich = 539;
Global $Embrace_the_Pain = 540;
Global $Life_Vortex = 541;
Global $Oracle_Link = 542;
Global $Guardian_Pacify = 543;
Global $Soul_Vortex = 544;
Global $Spectral_Agony = 546;
Global $Undead_sensitivity_to_Light = 554;
Global $Titans_get_plus_Health_regen_and_set_enemies_on_fire_each_time_he_is_hit = 558;
Global $Resurrect_Resurrect_Gargoyle = 560;
Global $Wurm_Siege = 563;
Global $Shiver_Touch = 566;
Global $Spontaneous_Combustion = 567;
Global $Vanish = 568;
Global $Victory_or_Death = 569;
Global $Mark_of_Insecurity = 570;
Global $Disrupting_Dagger = 571;
Global $Deadly_Paradox = 572;
Global $Holy_Blessing = 575;
Global $Statues_Blessing = 576;
Global $Domain_of_Energy_Draining = 580;
Global $Domain_of_Health_Draining = 582;
Global $Domain_of_Slow = 583;
Global $Divine_Fire = 584;
Global $Swamp_Water = 585;
Global $Janthirs_Gaze = 586;
Global $Stormcaller_skill = 589;
Global $Knock = 590;
Global $Blessing_of_the_Kurzicks = 593;
Global $Chimera_of_Intensity = 596;
Global $Life_Stealing_effect = 657;
Global $Jaundiced_Gaze = 763;
Global $Wail_of_Doom = 764;
Global $Heros_Insight = 765;
Global $Gaze_of_Contempt = 766;
Global $Berserkers_Insight = 767;
Global $Slayers_Insight = 768;
Global $Vipers_Defense = 769;
Global $Return = 770;
Global $Aura_of_Displacement = 771;
Global $Generous_Was_Tsungrai = 772;
Global $Mighty_Was_Vorizun = 773;
Global $To_the_Death = 774;
Global $Death_Blossom = 775;
Global $Twisting_Fangs = 776;
Global $Horns_of_the_Ox = 777;
Global $Falling_Spider = 778;
Global $Black_Lotus_Strike = 779;
Global $Fox_Fangs = 780;
Global $Moebius_Strike = 781;
Global $Jagged_Strike = 782;
Global $Unsuspecting_Strike = 783;
Global $Entangling_Asp = 784;
Global $Mark_of_Death = 785;
Global $Iron_Palm = 786;
Global $Resilient_Weapon = 787;
Global $Blind_Was_Mingson = 788;
Global $Grasping_Was_Kuurong = 789;
Global $Vengeful_Was_Khanhei = 790;
Global $Flesh_of_My_Flesh = 791;
Global $Splinter_Weapon = 792;
Global $Weapon_of_Warding = 793;
Global $Wailing_Weapon = 794;
Global $Nightmare_Weapon = 795;
Global $Sorrows_Flame = 796;
Global $Sorrows_Fist = 797;
Global $Blast_Furnace = 798;
Global $Beguiling_Haze = 799;
Global $Enduring_Toxin = 800;
Global $Shroud_of_Silence = 801;
Global $Expose_Defenses = 802;
Global $Power_Leech = 803;
Global $Arcane_Languor = 804;
Global $Animate_Vampiric_Horror = 805;
Global $Cultists_Fervor = 806;
Global $Reapers_Mark = 808;
Global $Shatterstone = 809;
Global $Protectors_Defense = 810;
Global $Run_as_One = 811;
Global $Defiant_Was_Xinrae = 812;
Global $Lyssas_Aura = 813;
Global $Shadow_Refuge = 814;
Global $Scorpion_Wire = 815;
Global $Mirrored_Stance = 816;
Global $Discord = 817;
Global $Well_of_Weariness = 818;
Global $Vampiric_Spirit = 819;
Global $Depravity = 820;
Global $Icy_Veins = 821;
Global $Weaken_Knees = 822;
Global $Burning_Speed = 823;
Global $Lava_Arrows = 824;
Global $Bed_of_Coals = 825;
Global $Shadow_Form = 826;
Global $Siphon_Strength = 827;
Global $Vile_Miasma = 828;
Global $Ray_of_Judgment = 830;
Global $Primal_Rage = 831;
Global $Animate_Flesh_Golem = 832;
Global $Reckless_Haste = 834;
Global $Blood_Bond = 835;
Global $Ride_the_Lightning = 836;
Global $Energy_Boon = 837;
Global $Dwaynas_Sorrow = 838;
Global $Retreat = 839;
Global $Poisoned_Heart = 840;
Global $Fetid_Ground = 841;
Global $Arc_Lightning = 842;
Global $Gust = 843;
Global $Churning_Earth = 844;
Global $Liquid_Flame = 845;
Global $Steam = 846;
Global $Boon_Signet = 847;
Global $Reverse_Hex = 848;
Global $Lacerating_Chop = 849;
Global $Fierce_Blow = 850;
Global $Sun_and_Moon_Slash = 851;
Global $Splinter_Shot = 852;
Global $Melandrus_Shot = 853;
Global $Snare = 854;
Global $Kilroy_Stonekin = 856;
Global $Adventurers_Insight = 857;
Global $Dancing_Daggers = 858;
Global $Conjure_Nightmare = 859;
Global $Signet_of_Disruption = 860;
Global $Ravenous_Gaze = 862;
Global $Order_of_Apostasy = 863;
Global $Oppressive_Gaze = 864;
Global $Lightning_Hammer = 865;
Global $Vapor_Blade = 866;
Global $Healing_Light = 867;
Global $Coward = 869;
Global $Pestilence = 870;
Global $Shadowsong = 871;
Global $Shadowsong_attack = 872;
Global $Resurrect_monster_skill = 873;
Global $Consuming_Flames = 874;
Global $Chains_of_Enslavement = 875;
Global $Signet_of_Shadows = 876;
Global $Lyssas_Balance = 877;
Global $Visions_of_Regret = 878;
Global $Illusion_of_Pain = 879;
Global $Stolen_Speed = 880;
Global $Ether_Signet = 881;
Global $Signet_of_Disenchantment = 882;
Global $Vocal_Minority = 883;
Global $Searing_Flames = 884;
Global $Shield_Guardian = 885;
Global $Restful_Breeze = 886;
Global $Signet_of_Rejuvenation = 887;
Global $Whirling_Axe = 888;
Global $Forceful_Blow = 889;
Global $None_Shall_Pass = 891;
Global $Quivering_Blade = 892;
Global $Seeking_Arrows = 893;
Global $Rampagers_Insight = 894;
Global $Hunters_Insight = 895;
Global $Oath_of_Healing = 897;
Global $Overload = 898;
Global $Images_of_Remorse = 899;
Global $Shared_Burden = 900;
Global $Soul_Bind = 901;
Global $Blood_of_the_Aggressor = 902;
Global $Icy_Prism = 903;
Global $Furious_Axe = 904;
Global $Auspicious_Blow = 905;
Global $On_Your_Knees = 906;
Global $Dragon_Slash = 907;
Global $Marauders_Shot = 908;
Global $Focused_Shot = 909;
Global $Spirit_Rift = 910;
Global $Union = 911;
Global $Tranquil_Was_Tanasen = 913;
Global $Consume_Soul = 914;
Global $Spirit_Light = 915;
Global $Lamentation = 916;
Global $Rupture_Soul = 917;
Global $Spirit_to_Flesh = 918;
Global $Spirit_Burn = 919;
Global $Destruction = 920;
Global $Dissonance = 921;
Global $Dissonance_attack = 922;
Global $Disenchantment = 923;
Global $Disenchantment_attack = 924;
Global $Recall = 925;
Global $Sharpen_Daggers = 926;
Global $Shameful_Fear = 927;
Global $Shadow_Shroud = 928;
Global $Shadow_of_Haste = 929;
Global $Auspicious_Incantation = 930;
Global $Power_Return = 931;
Global $Complicate = 932;
Global $Shatter_Storm = 933;
Global $Unnatural_Signet = 934;
Global $Rising_Bile = 935;
Global $Envenom_Enchantments = 936;
Global $Shockwave = 937;
Global $Ward_of_Stability = 938;
Global $Icy_Shackles = 939;
Global $Blessed_Light = 941;
Global $Withdraw_Hexes = 942;
Global $Extinguish = 943;
Global $Signet_of_Strength = 944;
Global $Trappers_Focus = 946;
Global $Brambles = 947;
Global $Desperate_Strike = 948;
Global $Way_of_the_Fox = 949;
Global $Shadowy_Burden = 950;
Global $Siphon_Speed = 951;
Global $Deaths_Charge = 952;
Global $Power_Flux = 953;
Global $Expel_Hexes = 954;
Global $Rip_Enchantment = 955;
Global $Spell_Shield = 957;
Global $Healing_Whisper = 958;
Global $Ethereal_Light = 959;
Global $Release_Enchantments = 960;
Global $Lacerate = 961;
Global $Spirit_Transfer = 962;
Global $Restoration = 963;
Global $Vengeful_Weapon = 964;
Global $Spear_of_Archemorus = 966;
Global $Argos_Cry = 971;
Global $Jade_Fury = 972;
Global $Blinding_Powder = 973;
Global $Mantis_Touch = 974;
Global $Exhausting_Assault = 975;
Global $Repeating_Strike = 976;
Global $Way_of_the_Lotus = 977;
Global $Mark_of_Instability = 978;
Global $Mistrust = 979;
Global $Feast_of_Souls = 980;
Global $Recuperation = 981;
Global $Shelter = 982;
Global $Weapon_of_Shadow = 983;
Global $Torch_Enchantment = 984;
Global $Caltrops = 985;
Global $Nine_Tail_Strike = 986;
Global $Way_of_the_Empty_Palm = 987;
Global $Temple_Strike = 988;
Global $Golden_Phoenix_Strike = 989;
Global $Expunge_Enchantments = 990;
Global $Deny_Hexes = 991;
Global $Triple_Chop = 992;
Global $Enraged_Smash = 993;
Global $Renewing_Smash = 994;
Global $Tiger_Stance = 995;
Global $Standing_Slash = 996;
Global $Famine = 997;
Global $Torch_Hex = 998;
Global $Torch_Degeneration_Hex = 999;
Global $Blinding_Snow = 1000;
Global $Avalanche_skill = 1001;
Global $Snowball = 1002;
Global $Mega_Snowball = 1003;
Global $Yuletide = 1004;
Global $Ice_Fort = 1006;
Global $Yellow_Snow = 1007;
Global $Hidden_Rock = 1008;
Global $Snow_Down_the_Shirt = 1009;
Global $Mmmm_Snowcone = 1010;
Global $Holiday_Blues = 1011;
Global $Icicles = 1012;
Global $Ice_Breaker = 1013;
Global $Lets_Get_Em = 1014;
Global $Flurry_of_Ice = 1015;
Global $Critical_Eye = 1018;
Global $Critical_Strike = 1019;
Global $Blades_of_Steel = 1020;
Global $Jungle_Strike = 1021;
Global $Wild_Strike = 1022;
Global $Leaping_Mantis_Sting = 1023;
Global $Black_Mantis_Thrust = 1024;
Global $Disrupting_Stab = 1025;
Global $Golden_Lotus_Strike = 1026;
Global $Critical_Defenses = 1027;
Global $Way_of_Perfection = 1028;
Global $Dark_Apostasy = 1029;
Global $Locusts_Fury = 1030;
Global $Shroud_of_Distress = 1031;
Global $Heart_of_Shadow = 1032;
Global $Impale = 1033;
Global $Seeping_Wound = 1034;
Global $Assassins_Promise = 1035;
Global $Signet_of_Malice = 1036;
Global $Dark_Escape = 1037;
Global $Crippling_Dagger = 1038;
Global $Star_Strike = 1039;
Global $Spirit_Walk = 1040;
Global $Unseen_Fury = 1041;
Global $Flashing_Blades = 1042;
Global $Dash = 1043;
Global $Dark_Prison = 1044;
Global $Palm_Strike = 1045;
Global $Assassin_of_Lyssa = 1046;
Global $Mesmer_of_Lyssa = 1047;
Global $Revealed_Enchantment = 1048;
Global $Revealed_Hex = 1049;
Global $Disciple_of_Energy = 1050;
Global $Accumulated_Pain = 1052;
Global $Psychic_Distraction = 1053;
Global $Ancestors_Visage = 1054;
Global $Recurring_Insecurity = 1055;
Global $Kitahs_Burden = 1056;
Global $Psychic_Instability = 1057;
Global $Psychic_Instability_PVP = 3185;
Global $Chaotic_Power = 1058;
Global $Hex_Eater_Signet = 1059;
Global $Celestial_Haste = 1060;
Global $Feedback = 1061;
Global $Arcane_Larceny = 1062;
Global $Chaotic_Ward = 1063;
Global $Favor_of_the_Gods = 1064;
Global $Dark_Aura_blessing = 1065;
Global $Spoil_Victor = 1066;
Global $Lifebane_Strike = 1067;
Global $Bitter_Chill = 1068;
Global $Taste_of_Pain = 1069;
Global $Defile_Enchantments = 1070;
Global $Shivers_of_Dread = 1071;
Global $Star_Servant = 1072;
Global $Necromancer_of_Grenth = 1073;
Global $Ritualist_of_Grenth = 1074;
Global $Vampiric_Swarm = 1075;
Global $Blood_Drinker = 1076;
Global $Vampiric_Bite = 1077;
Global $Wallows_Bite = 1078;
Global $Enfeebling_Touch = 1079;
Global $Disciple_of_Ice = 1080;
Global $Teinais_Wind = 1081;
Global $Shock_Arrow = 1082;
Global $Unsteady_Ground = 1083;
Global $Sliver_Armor = 1084;
Global $Ash_Blast = 1085;
Global $Dragons_Stomp = 1086;
Global $Unnatural_Resistance = 1087;
Global $Second_Wind = 1088;
Global $Cloak_of_Faith = 1089;
Global $Smoldering_Embers = 1090;
Global $Double_Dragon = 1091;
Global $Disciple_of_the_Air = 1092;
Global $Teinais_Heat = 1093;
Global $Breath_of_Fire = 1094;
Global $Star_Burst = 1095;
Global $Glyph_of_Essence = 1096;
Global $Teinais_Prison = 1097;
Global $Mirror_of_Ice = 1098;
Global $Teinais_Crystals = 1099;
Global $Celestial_Storm = 1100;
Global $Monk_of_Dwayna = 1101;
Global $Aura_of_the_Grove = 1102;
Global $Cathedral_Collapse = 1103;
Global $Miasma = 1104;
Global $Acid_Trap = 1105;
Global $Shield_of_Saint_Viktor = 1106;
Global $Urn_of_Saint_Viktor = 1107;
Global $Aura_of_Light = 1112;
Global $Kirins_Wrath = 1113;
Global $Spirit_Bond = 1114;
Global $Air_of_Enchantment = 1115;
Global $Warriors_Might = 1116;
Global $Heavens_Delight = 1117;
Global $Healing_Burst = 1118;
Global $Kareis_Healing_Circle = 1119;
Global $Jameis_Gaze = 1120;
Global $Gift_of_Health = 1121;
Global $Battle_Fervor = 1122;
Global $Life_Sheath = 1123;
Global $Star_Shine = 1124;
Global $Disciple_of_Fire = 1125;
Global $Empathic_Removal = 1126;
Global $Warrior_of_Balthazar = 1127;
Global $Resurrection_Chant = 1128;
Global $Word_of_Censure = 1129;
Global $Spear_of_Light = 1130;
Global $Stonesoul_Strike = 1131;
Global $Shielding_Branches = 1132;
Global $Drunken_Blow = 1133;
Global $Leviathans_Sweep = 1134;
Global $Jaizhenju_Strike = 1135;
Global $Penetrating_Chop = 1136;
Global $Yeti_Smash = 1137;
Global $Disciple_of_the_Earth = 1138;
Global $Ranger_of_Melandru = 1139;
Global $Storm_of_Swords = 1140;
Global $You_Will_Die = 1141;
Global $Auspicious_Parry = 1142;
Global $Strength_of_the_Oak = 1143;
Global $Silverwing_Slash = 1144;
Global $Destroy_Enchantment = 1145;
Global $Shove = 1146;
Global $Base_Defense = 1147;
Global $Carrier_Defense = 1148;
Global $The_Chalice_of_Corruption = 1149;
Global $Song_of_the_Mists = 1151;
Global $Demonic_Agility = 1152;
Global $Blessing_of_the_Kirin = 1153;
Global $Juggernaut_Toss = 1155;
Global $Aura_of_the_Juggernaut = 1156;
Global $Star_Shards = 1157;
Global $Turtle_Shell = 1172;
Global $Blood_of_zu_Heltzer = 1175;
Global $Afflicted_Soul_Explosion = 1176;
Global $Dark_Chain_Lightning = 1179;
Global $Corrupted_Breath = 1181;
Global $Renewing_Corruption = 1182;
Global $Corrupted_Dragon_Spores = 1183;
Global $Corrupted_Dragon_Scales = 1184;
Global $Construct_Possession = 1185;
Global $Siege_Turtle_Attack = 1186;
Global $Of_Royal_Blood = 1189;
Global $Passage_to_Tahnnakai = 1190;
Global $Sundering_Attack = 1191;
Global $Zojuns_Shot = 1192;
Global $Predatory_Bond = 1194;
Global $Heal_as_One = 1195;
Global $Zojuns_Haste = 1196;
Global $Needling_Shot = 1197;
Global $Broad_Head_Arrow = 1198;
Global $Glass_Arrows = 1199;
Global $Archers_Signet = 1200;
Global $Savage_Pounce = 1201;
Global $Enraged_Lunge = 1202;
Global $Bestial_Mauling = 1203;
Global $Energy_Drain_effect = 1204;
Global $Poisonous_Bite = 1205;
Global $Pounce = 1206;
Global $Celestial_Stance = 1207;
Global $Sheer_Exhaustion = 1208;
Global $Bestial_Fury = 1209;
Global $Life_Drain = 1210;
Global $Vipers_Nest = 1211;
Global $Equinox = 1212;
Global $Tranquility = 1213;
Global $Clamor_of_Souls = 1215;
Global $Ritual_Lord = 1217;
Global $Cruel_Was_Daoshen = 1218;
Global $Protective_Was_Kaolai = 1219;
Global $Attuned_Was_Songkai = 1220;
Global $Resilient_Was_Xiko = 1221;
Global $Lively_Was_Naomei = 1222;
Global $Anguished_Was_Lingwah = 1223;
Global $Draw_Spirit = 1224;
Global $Channeled_Strike = 1225;
Global $Spirit_Boon_Strike = 1226;
Global $Essence_Strike = 1227;
Global $Spirit_Siphon = 1228;
Global $Explosive_Growth = 1229;
Global $Boon_of_Creation = 1230;
Global $Spirit_Channeling = 1231;
Global $Armor_of_Unfeeling = 1232;
Global $Soothing_Memories = 1233;
Global $Mend_Body_and_Soul = 1234;
Global $Dulled_Weapon = 1235;
Global $Binding_Chains = 1236;
Global $Painful_Bond = 1237;
Global $Signet_of_Creation = 1238;
Global $Signet_of_Spirits = 1239;
Global $Soul_Twisting = 1240;
Global $Celestial_Summoning = 1241;
Global $Ghostly_Haste = 1244;
Global $Gaze_from_Beyond = 1245;
Global $Ancestors_Rage = 1246;
Global $Pain = 1247;
Global $Pain_attack = 1248;
Global $Displacement = 1249;
Global $Preservation = 1250;
Global $Life = 1251;
Global $Earthbind = 1252;
Global $Bloodsong = 1253;
Global $Bloodsong_attack = 1254;
Global $Wanderlust = 1255;
Global $Wanderlust_attack = 1256;
Global $Spirit_Light_Weapon = 1257;
Global $Brutal_Weapon = 1258;
Global $Guided_Weapon = 1259;
Global $Meekness = 1260;
Global $Frigid_Armor = 1261;
Global $Healing_Ring = 1262;
Global $Renew_Life = 1263;
Global $Doom = 1264;
Global $Wielders_Boon = 1265;
Global $Soothing = 1266;
Global $Vital_Weapon = 1267;
Global $Weapon_of_Quickening = 1268;
Global $Signet_of_Rage = 1269;
Global $Fingers_of_Chaos = 1270;
Global $Echoing_Banishment = 1271;
Global $Suicidal_Impulse = 1272;
Global $Impossible_Odds = 1273;
Global $Battle_Scars = 1274;
Global $Riposting_Shadows = 1275;
Global $Meditation_of_the_Reaper = 1276;
Global $Blessed_Water = 1280;
Global $Defiled_Water = 1281;
Global $Stone_Spores = 1282;
Global $Haiju_Lagoon_Water = 1287;
Global $Aspect_of_Exhaustion = 1288;
Global $Aspect_of_Exposure = 1289;
Global $Aspect_of_Surrender = 1290;
Global $Aspect_of_Death = 1291;
Global $Aspect_of_Soothing = 1292;
Global $Aspect_of_Pain = 1293;
Global $Aspect_of_Lethargy = 1294;
Global $Aspect_of_Depletion_energy_loss = 1295;
Global $Aspect_of_Failure = 1296;
Global $Aspect_of_Shadows = 1297;
Global $Scorpion_Aspect = 1298;
Global $Aspect_of_Fear = 1299;
Global $Aspect_of_Depletion_energy_depletion_damage = 1300;
Global $Aspect_of_Decay = 1301;
Global $Aspect_of_Torment = 1302;
Global $Nightmare_Aspect = 1303;
Global $Spiked_Coral = 1304;
Global $Shielding_Urn = 1305;
Global $Extensive_Plague_Exposure = 1306;
Global $Forests_Binding = 1307;
Global $Exploding_Spores = 1308;
Global $Suicide_Energy = 1309;
Global $Suicide_Health = 1310;
Global $Nightmare_Refuge = 1311;
Global $Rage_of_the_Sea = 1315;
Global $Sugar_Rush = 1323;
Global $Torment_Slash = 1324;
Global $Spirit_of_the_Festival = 1325;
Global $Trade_Winds = 1326;
Global $Dragon_Blast = 1327;
Global $Imperial_Majesty = 1328;
Global $Extend_Conditions = 1333;
Global $Hypochondria = 1334;
Global $Wastrels_Demise = 1335;
Global $Spiritual_Pain = 1336;
Global $Drain_Delusions = 1337;
Global $Persistence_of_Memory = 1338;
Global $Symbols_of_Inspiration = 1339;
Global $Symbolic_Celerity = 1340;
Global $Frustration = 1341;
Global $Tease = 1342;
Global $Ether_Phantom = 1343;
Global $Web_of_Disruption = 1344;
Global $Enchanters_Conundrum = 1345;
Global $Signet_of_Illusions = 1346;
Global $Discharge_Enchantment = 1347;
Global $Hex_Eater_Vortex = 1348;
Global $Mirror_of_Disenchantment = 1349;
Global $Simple_Thievery = 1350;
Global $Animate_Shambling_Horror = 1351;
Global $Order_of_Undeath = 1352;
Global $Putrid_Flesh = 1353;
Global $Feast_for_the_Dead = 1354;
Global $Jagged_Bones = 1355;
Global $Contagion = 1356;
Global $Ulcerous_Lungs = 1358;
Global $Pain_of_Disenchantment = 1359;
Global $Mark_of_Fury = 1360;
Global $Corrupt_Enchantment = 1362;
Global $Signet_of_Sorrow = 1363;
Global $Signet_of_Suffering = 1364;
Global $Signet_of_Lost_Souls = 1365;
Global $Well_of_Darkness = 1366;
Global $Blinding_Surge = 1367;
Global $Chilling_Winds = 1368;
Global $Lightning_Bolt = 1369;
Global $Storm_Djinns_Haste = 1370;
Global $Stone_Striker = 1371;
Global $Sandstorm = 1372;
Global $Stone_Sheath = 1373;
Global $Ebon_Hawk = 1374;
Global $Stoneflesh_Aura = 1375;
Global $Glyph_of_Restoration = 1376;
Global $Ether_Prism = 1377;
Global $Master_of_Magic = 1378;
Global $Glowing_Gaze = 1379;
Global $Savannah_Heat = 1380;
Global $Flame_Djinns_Haste = 1381;
Global $Freezing_Gust = 1382;
Global $Sulfurous_Haze = 1384;
Global $Sentry_Trap_skill = 1386;
Global $Judges_Intervention = 1390;
Global $Supportive_Spirit = 1391;
Global $Watchful_Healing = 1392;
Global $Healers_Boon = 1393;
Global $Healers_Covenant = 1394;
Global $Balthazars_Pendulum = 1395;
Global $Words_of_Comfort = 1396;
Global $Light_of_Deliverance = 1397;
Global $Scourge_Enchantment = 1398;
Global $Shield_of_Absorption = 1399;
Global $Reversal_of_Damage = 1400;
Global $Mending_Touch = 1401;
Global $Critical_Chop = 1402;
Global $Agonizing_Chop = 1403;
Global $Flail = 1404;
Global $Charging_Strike = 1405;
Global $Headbutt = 1406;
Global $Lions_Comfort = 1407;
Global $Rage_of_the_Ntouka = 1408;
Global $Mokele_Smash = 1409;
Global $Overbearing_Smash = 1410;
Global $Signet_of_Stamina = 1411;
Global $Youre_All_Alone = 1412;
Global $Burst_of_Aggression = 1413;
Global $Enraging_Charge = 1414;
Global $Crippling_Slash = 1415;
Global $Barbarous_Slice = 1416;
Global $Vial_of_Purified_Water = 1417;
Global $Disarm_Trap = 1418;
Global $Feeding_Frenzy_skill = 1419;
Global $Quake_Of_Ahdashim = 1420;
Global $Create_Light_of_Seborhin = 1422;
Global $Unlock_Cell = 1423;
Global $Wave_of_Torment = 1430;
Global $Corsairs_Net = 1433;
Global $Corrupted_Healing = 1434;
Global $Corrupted_Strength = 1436;
Global $Desert_Wurm_disguise = 1437;
Global $Junundu_Feast = 1438;
Global $Junundu_Strike = 1439;
Global $Junundu_Smash = 1440;
Global $Junundu_Siege = 1441;
Global $Junundu_Tunnel = 1442;
Global $Leave_Junundu = 1443;
Global $Summon_Torment = 1444;
Global $Signal_Flare = 1445;
Global $The_Elixir_of_Strength = 1446;
Global $Ehzah_from_Above = 1447;
Global $Last_Rites_of_Torment = 1449;
Global $Abaddons_Conspiracy = 1450;
Global $Hungers_Bite = 1451;
Global $Call_to_the_Torment = 1454;
Global $Command_of_Torment = 1455;
Global $Abaddons_Favor = 1456;
Global $Abaddons_Chosen = 1457;
Global $Enchantment_Collapse = 1458;
Global $Call_of_Sacrifice = 1459;
Global $Enemies_Must_Die = 1460;
Global $Earth_Vortex = 1461;
Global $Frost_Vortex = 1462;
Global $Rough_Current = 1463;
Global $Turbulent_Flow = 1464;
Global $Prepared_Shot = 1465;
Global $Burning_Arrow = 1466;
Global $Arcing_Shot = 1467;
Global $Strike_as_One = 1468;
Global $Crossfire = 1469;
Global $Barbed_Arrows = 1470;
Global $Scavengers_Focus = 1471;
Global $Toxicity = 1472;
Global $Quicksand = 1473;
Global $Storms_Embrace = 1474;
Global $Trappers_Speed = 1475;
Global $Tripwire = 1476;
Global $Kournan_Guardsman_Uniform = 1477;
Global $Renewing_Surge = 1478;
Global $Offering_of_Spirit = 1479;
Global $Spirits_Gift = 1480;
Global $Death_Pact_Signet = 1481;
Global $Reclaim_Essence = 1482;
Global $Banishing_Strike = 1483;
Global $Mystic_Sweep = 1484;
Global $Eremites_Attack = 1485;
Global $Reap_Impurities = 1486;
Global $Twin_Moon_Sweep = 1487;
Global $Victorious_Sweep = 1488;
Global $Irresistible_Sweep = 1489;
Global $Pious_Assault = 1490;
Global $Mystic_Twister = 1491;
Global $Grenths_Fingers = 1493;
Global $Aura_of_Thorns = 1495;
Global $Balthazars_Rage = 1496;
Global $Dust_Cloak = 1497;
Global $Staggering_Force = 1498;
Global $Pious_Renewal = 1499;
Global $Mirage_Cloak = 1500;
Global $Arcane_Zeal = 1502;
Global $Mystic_Vigor = 1503;
Global $Watchful_Intervention = 1504;
Global $Vow_of_Piety = 1505;
Global $Vital_Boon = 1506;
Global $Heart_of_Holy_Flame = 1507;
Global $Extend_Enchantments = 1508;
Global $Faithful_Intervention = 1509;
Global $Sand_Shards = 1510;
Global $Lyssas_Haste = 1512;
Global $Guiding_Hands = 1513;
Global $Fleeting_Stability = 1514;
Global $Armor_of_Sanctity = 1515;
Global $Mystic_Regeneration = 1516;
Global $Vow_of_Silence = 1517;
Global $Avatar_of_Balthazar = 1518;
Global $Avatar_of_Dwayna = 1519;
Global $Avatar_of_Grenth = 1520;
Global $Avatar_of_Lyssa = 1521;
Global $Avatar_of_Melandru = 1522;
Global $Meditation = 1523;
Global $Eremites_Zeal = 1524;
Global $Natural_Healing = 1525;
Global $Imbue_Health = 1526;
Global $Mystic_Healing = 1527;
Global $Dwaynas_Touch = 1528;
Global $Pious_Restoration = 1529;
Global $Signet_of_Pious_Light = 1530;
Global $Intimidating_Aura = 1531;
Global $Mystic_Sandstorm = 1532;
Global $Winds_of_Disenchantment = 1533;
Global $Rending_Touch = 1534;
Global $Crippling_Sweep = 1535;
Global $Wounding_Strike = 1536;
Global $Wearying_Strike = 1537;
Global $Lyssas_Assault = 1538;
Global $Chilling_Victory = 1539;
Global $Conviction = 1540;
Global $Enchanted_Haste = 1541;
Global $Pious_Concentration = 1542;
Global $Pious_Haste = 1543;
Global $Whirling_Charge = 1544;
Global $Test_of_Faith = 1545;
Global $Blazing_Spear = 1546;
Global $Mighty_Throw = 1547;
Global $Cruel_Spear = 1548;
Global $Harriers_Toss = 1549;
Global $Unblockable_Throw = 1550;
Global $Spear_of_Lightning = 1551;
Global $Wearying_Spear = 1552;
Global $Anthem_of_Fury = 1553;
Global $Crippling_Anthem = 1554;
Global $Defensive_Anthem = 1555;
Global $Godspeed = 1556;
Global $Anthem_of_Flame = 1557;
Global $Go_for_the_Eyes = 1558;
Global $Anthem_of_Envy = 1559;
Global $Song_of_Power = 1560;
Global $Zealous_Anthem = 1561;
Global $Aria_of_Zeal = 1562;
Global $Lyric_of_Zeal = 1563;
Global $Ballad_of_Restoration = 1564;
Global $Chorus_of_Restoration = 1565;
Global $Aria_of_Restoration = 1566;
Global $Song_of_Concentration = 1567;
Global $Anthem_of_Guidance = 1568;
Global $Energizing_Chorus = 1569;
Global $Song_of_Purification = 1570;
Global $Hexbreaker_Aria = 1571;
Global $Brace_Yourself = 1572;
Global $Awe = 1573;
Global $Enduring_Harmony = 1574;
Global $Blazing_Finale = 1575;
Global $Burning_Refrain = 1576;
Global $Finale_of_Restoration = 1577;
Global $Mending_Refrain = 1578;
Global $Purifying_Finale = 1579;
Global $Bladeturn_Refrain = 1580;
Global $Glowing_Signet = 1581;
Global $Leaders_Zeal = 1583;
Global $Leaders_Comfort = 1584;
Global $Signet_of_Synergy = 1585;
Global $Angelic_Protection = 1586;
Global $Angelic_Bond = 1587;
Global $Cautery_Signet = 1588;
Global $Stand_Your_Ground = 1589;
Global $Lead_the_Way = 1590;
Global $Make_Haste = 1591;
Global $We_Shall_Return = 1592;
Global $Never_Give_Up = 1593;
Global $Help_Me = 1594;
Global $Fall_Back = 1595;
Global $Incoming = 1596;
Global $Theyre_on_Fire = 1597;
Global $Never_Surrender = 1598;
Global $Its_just_a_flesh_wound = 1599;
Global $Barbed_Spear = 1600;
Global $Vicious_Attack = 1601;
Global $Stunning_Strike = 1602;
Global $Merciless_Spear = 1603;
Global $Disrupting_Throw = 1604;
Global $Wild_Throw = 1605;
Global $Curse_of_the_Staff_of_the_Mists = 1606;
Global $Aura_of_the_Staff_of_the_Mists = 1607;
Global $Power_of_the_Staff_of_the_Mists = 1608;
Global $Scepter_of_Ether = 1609;
Global $Summoning_of_the_Scepter = 1610;
Global $Rise_From_Your_Grave = 1611;
Global $Corsair_Disguise = 1613;
Global $Queen_Heal = 1616;
Global $Queen_Wail = 1617;
Global $Queen_Armor = 1618;
Global $Queen_Bite = 1619;
Global $Queen_Thump = 1620;
Global $Queen_Siege = 1621;
Global $Dervish_of_the_Mystic = 1624;
Global $Dervish_of_the_Wind = 1625;
Global $Paragon_of_Leadership = 1626;
Global $Paragon_of_Motivation = 1627;
Global $Dervish_of_the_Blade = 1628;
Global $Paragon_of_Command = 1629;
Global $Paragon_of_the_Spear = 1630;
Global $Dervish_of_the_Earth = 1631;
Global $Malicious_Strike = 1633;
Global $Shattering_Assault = 1634;
Global $Golden_Skull_Strike = 1635;
Global $Black_Spider_Strike = 1636;
Global $Golden_Fox_Strike = 1637;
Global $Deadly_Haste = 1638;
Global $Assassins_Remedy = 1639;
Global $Foxs_Promise = 1640;
Global $Feigned_Neutrality = 1641;
Global $Hidden_Caltrops = 1642;
Global $Assault_Enchantments = 1643;
Global $Wastrels_Collapse = 1644;
Global $Lift_Enchantment = 1645;
Global $Augury_of_Death = 1646;
Global $Signet_of_Toxic_Shock = 1647;
Global $Signet_of_Twilight = 1648;
Global $Way_of_the_Assassin = 1649;
Global $Shadow_Walk = 1650;
Global $Deaths_Retreat = 1651;
Global $Shadow_Prison = 1652;
Global $Swap = 1653;
Global $Shadow_Meld = 1654;
Global $Price_of_Pride = 1655;
Global $Air_of_Disenchantment = 1656;
Global $Signet_of_Clumsiness = 1657;
Global $Symbolic_Posture = 1658;
Global $Toxic_Chill = 1659;
Global $Well_of_Silence = 1660;
Global $Glowstone = 1661;
Global $Mind_Blast = 1662;
Global $Elemental_Flame = 1663;
Global $Invoke_Lightning = 1664;
Global $Battle_Cry = 1665;
Global $Energy_Shrine_Bonus = 1667;
Global $Northern_Health_Shrine_Bonus = 1668;
Global $Southern_Health_Shrine_Bonus = 1669;
Global $Curse_of_Silence = 1671;
Global $To_the_Pain_Hero_Battles = 1672;
Global $Edge_of_Reason = 1673;
Global $Depths_of_Madness_environment_effect = 1674;
Global $Cower_in_Fear = 1675;
Global $Dreadful_Pain = 1676;
Global $Veiled_Nightmare = 1677;
Global $Base_Protection = 1678;
Global $Kournan_Siege_Flame = 1679;
Global $Drake_Skin = 1680;
Global $Skale_Vigor = 1681;
Global $Pahnai_Salad_item_effect = 1682;
Global $Pensive_Guardian = 1683;
Global $Scribes_Insight = 1684;
Global $Holy_Haste = 1685;
Global $Glimmer_of_Light = 1686;
Global $Zealous_Benediction = 1687;
Global $Defenders_Zeal = 1688;
Global $Signet_of_Mystic_Wrath = 1689;
Global $Signet_of_Removal = 1690;
Global $Dismiss_Condition = 1691;
Global $Divert_Hexes = 1692;
Global $Counterattack = 1693;
Global $Magehunter_Strike = 1694;
Global $Soldiers_Strike = 1695;
Global $Decapitate = 1696;
Global $Magehunters_Smash = 1697;
Global $Soldiers_Stance = 1698;
Global $Soldiers_Defense = 1699;
Global $Frenzied_Defense = 1700;
Global $Steady_Stance = 1701;
Global $Steelfang_Slash = 1702;
Global $Sunspear_Battle_Call = 1703;
Global $Earth_Shattering_Blow = 1705;
Global $Corrupt_Power = 1706;
Global $Words_of_Madness = 1707;
Global $Gaze_of_MoavuKaal = 1708;
Global $Presence_of_the_Skale_Lord = 1709;
Global $Madness_Dart = 1710;
Global $Reform_Carvings = 1715;
Global $Sunspear_Siege = 1717;
Global $Soul_Torture = 1718;
Global $Screaming_Shot = 1719;
Global $Keen_Arrow = 1720;
Global $Rampage_as_One = 1721;
Global $Forked_Arrow = 1722;
Global $Disrupting_Accuracy = 1723;
Global $Experts_Dexterity = 1724;
Global $Roaring_Winds = 1725;
Global $Magebane_Shot = 1726;
Global $Natural_Stride = 1727;
Global $Hekets_Rampage = 1728;
Global $Smoke_Trap = 1729;
Global $Infuriating_Heat = 1730;
Global $Vocal_Was_Sogolon = 1731;
Global $Destructive_Was_Glaive = 1732;
Global $Wielders_Strike = 1733;
Global $Gaze_of_Fury = 1734;
Global $Gaze_of_Fury_attack = 1735;
Global $Spirits_Strength = 1736;
Global $Wielders_Zeal = 1737;
Global $Sight_Beyond_Sight = 1738;
Global $Renewing_Memories = 1739;
Global $Wielders_Remedy = 1740;
Global $Ghostmirror_Light = 1741;
Global $Signet_of_Ghostly_Might = 1742;
Global $Signet_of_Binding = 1743;
Global $Caretakers_Charge = 1744;
Global $Anguish = 1745;
Global $Anguish_attack = 1746;
Global $Empowerment = 1747;
Global $Recovery = 1748;
Global $Weapon_of_Fury = 1749;
Global $Xinraes_Weapon = 1750;
Global $Warmongers_Weapon = 1751;
Global $Weapon_of_Remedy = 1752;
Global $Rending_Sweep = 1753;
Global $Onslaught = 1754;
Global $Mystic_Corruption = 1755;
Global $Grenths_Grasp = 1756;
Global $Veil_of_Thorns = 1757;
Global $Harriers_Grasp = 1758;
Global $Vow_of_Strength = 1759;
Global $Ebon_Dust_Aura = 1760;
Global $Zealous_Vow = 1761;
Global $Heart_of_Fury = 1762;
Global $Zealous_Renewal = 1763;
Global $Attackers_Insight = 1764;
Global $Rending_Aura = 1765;
Global $Featherfoot_Grace = 1766;
Global $Reapers_Sweep = 1767;
Global $Harriers_Haste = 1768;
Global $Focused_Anger = 1769;
Global $Natural_Temper = 1770;
Global $Song_of_Restoration = 1771;
Global $Lyric_of_Purification = 1772;
Global $Soldiers_Fury = 1773;
Global $Aggressive_Refrain = 1774;
Global $Energizing_Finale = 1775;
Global $Signet_of_Aggression = 1776;
Global $Remedy_Signet = 1777;
Global $Signet_of_Return = 1778;
Global $Make_Your_Time = 1779;
Global $Cant_Touch_This = 1780;
Global $Find_Their_Weakness = 1781;
Global $The_Power_Is_Yours = 1782;
Global $Slayers_Spear = 1783;
Global $Swift_Javelin = 1784;
Global $Skale_Hunt = 1790;
Global $Mandragor_Hunt = 1791;
Global $Skree_Battle = 1792;
Global $Insect_Hunt = 1793;
Global $Corsair_Bounty = 1794;
Global $Plant_Hunt = 1795;
Global $Undead_Hunt = 1796;
Global $Eternal_Suffering = 1797;
Global $Eternal_Languor = 1800;
Global $Eternal_Lethargy = 1803;
Global $Thirst_of_the_Drought = 1808;
Global $Lightbringer = 1813;
Global $Lightbringers_Gaze = 1814;
Global $Lightbringer_Signet = 1815;
Global $Sunspear_Rebirth_Signet = 1816;
Global $Wisdom = 1817;
Global $Maddened_Strike = 1818;
Global $Maddened_Stance = 1819;
Global $Spirit_Form = 1820;
Global $Monster_Hunt = 1822;
Global $Elemental_Hunt = 1826;
Global $Demon_Hunt = 1831;
Global $Minotaur_Hunt = 1832;
Global $Heket_Hunt = 1837;
Global $Kournan_Bounty = 1839;
Global $Dhuum_Battle = 1844;
Global $Menzies_Battle = 1845;
Global $Monolith_Hunt = 1847;
Global $Margonite_Battle = 1849;
Global $Titan_Hunt = 1851;
Global $Giant_Hunt = 1853;
Global $Kournan_Siege = 1855;
Global $Lose_your_Head = 1856;
Global $Altar_Buff = 1859;
Global $Choking_Breath = 1861;
Global $Junundu_Bite = 1862;
Global $Blinding_Breath = 1863;
Global $Burning_Breath = 1864;
Global $Junundu_Wail = 1865;
Global $Capture_Point = 1866;
Global $Approaching_the_Vortex = 1867;
Global $Avatar_of_Sweetness = 1871;
Global $Corrupted_Lands = 1873;
Global $Unknown_Junundu_Ability = 1876;
Global $Torment_Slash_Smothering_Tendrils = 1880;
Global $Bonds_of_Torment = 1881;
Global $Shadow_Smash = 1882;
Global $Consume_Torment = 1884;
Global $Banish_Enchantment = 1885;
Global $Summoning_Shadows = 1886;
Global $Lightbringers_Insight = 1887;
Global $Repressive_Energy = 1889;
Global $Enduring_Torment = 1890;
Global $Shroud_of_Darkness = 1891;
Global $Demonic_Miasma = 1892;
Global $Enraged = 1893;
Global $Touch_of_Aaaaarrrrrrggghhh = 1894;
Global $Wild_Smash = 1895;
Global $Unyielding_Anguish = 1896;
Global $Jadoths_Storm_of_Judgment = 1897;
Global $Anguish_Hunt = 1898;
Global $Avatar_of_Holiday_Cheer = 1899;
Global $Side_Step = 1900;
Global $Jack_Frost = 1901;
Global $Avatar_of_Grenth_snow_fighting_skill = 1902;
Global $Avatar_of_Dwayna_snow_fighting_skill = 1903;
Global $Steady_Aim = 1904;
Global $Rudis_Red_Nose = 1905;
Global $Volatile_Charr_Crystal = 1911;
Global $Hard_mode = 1912;
Global $Sugar_Jolt = 1916;
Global $Rollerbeetle_Racer = 1917;
Global $Ram = 1918;
Global $Harden_Shell = 1919;
Global $Rollerbeetle_Dash = 1920;
Global $Super_Rollerbeetle = 1921;
Global $Rollerbeetle_Echo = 1922;
Global $Distracting_Lunge = 1923;
Global $Rollerbeetle_Blast = 1924;
Global $Spit_Rocks = 1925;
Global $Lunar_Blessing = 1926;
Global $Lucky_Aura = 1927;
Global $Spiritual_Possession = 1928;
Global $Water = 1929;
Global $Pig_Form = 1930;
Global $Beetle_Metamorphosis = 1931;
Global $Golden_Egg_item_effect = 1934;
Global $Infernal_Rage = 1937;
Global $Putrid_Flames = 1938;
Global $Flame_Call = 1940;
Global $Whirling_Fires = 1942;
Global $Charr_Siege_Attack_What_Must_Be_Done = 1943;
Global $Charr_Siege_Attack_Against_the_Charr = 1944;
Global $Birthday_Cupcake_skill = 1945;
Global $Blessing_of_the_Luxons = 1947;
Global $Shadow_Sanctuary = 1948;
Global $Ether_Nightmare = 1949;
Global $Signet_of_Corruption = 1950;
Global $Elemental_Lord = 1951;
Global $Selfless_Spirit = 1952;
Global $Triple_Shot = 1953;
Global $Save_Yourselves = 1954;
Global $Aura_of_Holy_Might = 1955;
Global $Spear_of_Fury = 1957;
Global $Fire_Dart = 1983;
Global $Ice_Dart = 1984;
Global $Poison_Dart = 1985;
Global $Vampiric_Assault = 1986;
Global $Lotus_Strike = 1987;
Global $Golden_Fang_Strike = 1988;
Global $Falling_Lotus_Strike = 1990;
Global $Sadists_Signet = 1991;
Global $Signet_of_Distraction = 1992;
Global $Signet_of_Recall = 1993;
Global $Power_Lock = 1994;
Global $Waste_Not_Want_Not = 1995;
Global $Sum_of_All_Fears = 1996;
Global $Withering_Aura = 1997;
Global $Cacophony = 1998;
Global $Winters_Embrace = 1999;
Global $Earthen_Shackles = 2000;
Global $Ward_of_Weakness = 2001;
Global $Glyph_of_Swiftness = 2002;
Global $Cure_Hex = 2003;
Global $Smite_Condition = 2004;
Global $Smiters_Boon = 2005;
Global $Castigation_Signet = 2006;
Global $Purifying_Veil = 2007;
Global $Pulverizing_Smash = 2008;
Global $Keen_Chop = 2009;
Global $Knee_Cutter = 2010;
Global $Grapple = 2011;
Global $Radiant_Scythe = 2012;
Global $Grenths_Aura = 2013;
Global $Signet_of_Pious_Restraint = 2014;
Global $Farmers_Scythe = 2015;
Global $Energetic_Was_Lee_Sa = 2016;
Global $Anthem_of_Weariness = 2017;
Global $Anthem_of_Disruption = 2018;
Global $Freezing_Ground = 2020;
Global $Fire_Jet = 2022;
Global $Ice_Jet = 2023;
Global $Poison_Jet = 2024;
Global $Fire_Spout = 2027;
Global $Ice_Spout = 2028;
Global $Poison_Spout = 2029;
Global $Summon_Spirits = 2051;
Global $Shadow_Fang = 2052;
Global $Calculated_Risk = 2053;
Global $Shrinking_Armor = 2054;
Global $Aneurysm = 2055;
Global $Wandering_Eye = 2056;
Global $Foul_Feast = 2057;
Global $Putrid_Bile = 2058;
Global $Shell_Shock = 2059;
Global $Glyph_of_Immolation = 2060;
Global $Patient_Spirit = 2061;
Global $Healing_Ribbon = 2062;
Global $Aura_of_Stability = 2063;
Global $Spotless_Mind = 2064;
Global $Spotless_Soul = 2065;
Global $Disarm = 2066;
Global $I_Meant_to_Do_That = 2067;
Global $Rapid_Fire = 2068;
Global $Sloth_Hunters_Shot = 2069;
Global $Aura_Slicer = 2070;
Global $Zealous_Sweep = 2071;
Global $Pure_Was_Li_Ming = 2072;
Global $Weapon_of_Aggression = 2073;
Global $Chest_Thumper = 2074;
Global $Hasty_Refrain = 2075;
Global $Cracked_Armor = 2077;
Global $Berserk = 2078;
Global $Fleshreavers_Escape = 2079;
Global $Chomp = 2080;
Global $Twisting_Jaws = 2081;
Global $Mandragors_Charge = 2083;
Global $Rock_Slide = 2084;
Global $Avalanche_effect = 2085;
Global $Snaring_Web = 2086;
Global $Ceiling_Collapse = 2087;
Global $Trample = 2088;
Global $Wurm_Bile = 2089 ;
Global $Critical_Agility = 2101;
Global $Cry_of_Pain = 2102;
Global $Necrosis = 2103;
Global $Intensity = 2104;
Global $Seed_of_Life = 2105;
Global $Call_of_the_Eye = 2106;
Global $Whirlwind_Attack = 2107;
Global $Never_Rampage_Alone = 2108;
Global $Eternal_Aura = 2109;
Global $Vampirism = 2110;
Global $Vampirism_attack = 2111;
Global $Theres_Nothing_to_Fear = 2112;
Global $Ursan_Rage_Blood_Washes_Blood = 2113;
Global $Ursan_Strike_Blood_Washes_Blood = 2114;
Global $Sneak_Attack = 2116;
Global $Firebomb_Explosion = 2117;
Global $Firebomb = 2118;
Global $Shield_of_Fire = 2119;
Global $Spirit_World_Retreat = 2122;
Global $Shattered_Spirit = 2124;
Global $Spirit_Roar = 2125;
Global $Spirit_Senses = 2126;
Global $Unseen_Aggression = 2127;
Global $Volfen_Pounce_Curse_of_the_Nornbear = 2128;
Global $Volfen_Claw_Curse_of_the_Nornbear = 2129;
Global $Volfen_Bloodlust_Curse_of_the_Nornbear = 2131;
Global $Volfen_Agility_Curse_of_the_Nornbear = 2132;
Global $Volfen_Blessing_Curse_of_the_Nornbear = 2133;
Global $Charging_Spirit = 2134;
Global $Trampling_Ox = 2135;
Global $Smoke_Powder_Defense = 2136;
Global $Confusing_Images = 2137;
Global $Hexers_Vigor = 2138;
Global $Masochism = 2139;
Global $Piercing_Trap = 2140;
Global $Companionship = 2141;
Global $Feral_Aggression = 2142;
Global $Disrupting_Shot = 2143;
Global $Volley = 2144;
Global $Expert_Focus = 2145;
Global $Pious_Fury = 2146;
Global $Crippling_Victory = 2147;
Global $Sundering_Weapon = 2148;
Global $Weapon_of_Renewal = 2149;
Global $Maiming_Spear = 2150;
Global $Temporal_Sheen = 2151;
Global $Flux_Overload = 2152;
Global $Phase_Shield_effect = 2154;
Global $Phase_Shield = 2155;
Global $Vitality_Transfer = 2156;
Global $Golem_Strike = 2157;
Global $Bloodstone_Slash = 2158;
Global $Energy_Blast_golem = 2159;
Global $Chaotic_Energy = 2160;
Global $Golem_Fire_Shield = 2161;
Global $The_Way_of_Duty = 2162;
Global $The_Way_of_Kinship = 2163;
Global $Diamondshard_Mist_environment_effect = 2164;
Global $Diamondshard_Grave = 2165;
Global $The_Way_of_Strength = 2166;
Global $Diamondshard_Mist = 2167;
Global $Raven_Blessing_A_Gate_Too_Far = 2168;
Global $Raven_Flight_A_Gate_Too_Far = 2170;
Global $Raven_Shriek_A_Gate_Too_Far = 2171;
Global $Raven_Swoop_A_Gate_Too_Far = 2172;
Global $Raven_Talons_A_Gate_Too_Far = 2173;
Global $Aspect_of_Oak = 2174;
Global $Tremor = 2176;
Global $Pyroclastic_Shot = 2180;
Global $Rolling_Shift = 2184;
Global $Powder_Keg_Explosion = 2185;
Global $Signet_of_Deadly_Corruption = 2186;
Global $Way_of_the_Master = 2187;
Global $Defile_Defenses = 2188;
Global $Angorodons_Gaze = 2189;
Global $Magnetic_Surge = 2190;
Global $Slippery_Ground = 2191;
Global $Glowing_Ice = 2192;
Global $Energy_Blast = 2193;
Global $Distracting_Strike = 2194;
Global $Symbolic_Strike = 2195;
Global $Soldiers_Speed = 2196;
Global $Body_Blow = 2197;
Global $Body_Shot = 2198;
Global $Poison_Tip_Signet = 2199;
Global $Signet_of_Mystic_Speed = 2200;
Global $Shield_of_Force = 2201;
Global $Mending_Grip = 2202;
Global $Spiritleech_Aura = 2203;
Global $Rejuvenation = 2204;
Global $Agony = 2205;
Global $Ghostly_Weapon = 2206;
Global $Inspirational_Speech = 2207;
Global $Burning_Shield = 2208;
Global $Holy_Spear = 2209;
Global $Spear_Swipe = 2210;
Global $Alkars_Alchemical_Acid = 2211;
Global $Light_of_Deldrimor = 2212;
Global $Ear_Bite = 2213;
Global $Low_Blow = 2214;
Global $Brawling_Headbutt = 2215;
Global $Dont_Trip = 2216;
Global $By_Urals_Hammer = 2217;
Global $Drunken_Master = 2218;
Global $Great_Dwarf_Weapon = 2219;
Global $Great_Dwarf_Armor = 2220;
Global $Breath_of_the_Great_Dwarf = 2221;
Global $Snow_Storm = 2222;
Global $Black_Powder_Mine = 2223;
Global $Summon_Mursaat = 2224;
Global $Summon_Ruby_Djinn = 2225;
Global $Summon_Ice_Imp = 2226;
Global $Summon_Naga_Shaman = 2227;
Global $Deft_Strike = 2228;
Global $Signet_of_Infection = 2229;
Global $Tryptophan_Signet = 2230;
Global $Ebon_Battle_Standard_of_Courage = 2231;
Global $Ebon_Battle_Standard_of_Wisdom = 2232;
Global $Ebon_Battle_Standard_of_Honor = 2233;
Global $Ebon_Vanguard_Sniper_Support = 2234;
Global $Ebon_Vanguard_Assassin_Support = 2235;
Global $Well_of_Ruin = 2236;
Global $Atrophy = 2237;
Global $Spear_of_Redemption = 2238;
Global $Gelatinous_Material_Explosion = 2240;
Global $Gelatinous_Corpse_Consumption = 2241;
Global $Gelatinous_Absorption = 2243;
Global $Unstable_Ooze_Explosion = 2244;
Global $Unstable_Aura = 2246;
Global $Unstable_Pulse = 2247;
Global $Polymock_Power_Drain = 2248;
Global $Polymock_Block = 2249;
Global $Polymock_Glyph_of_Concentration = 2250;
Global $Polymock_Ether_Signet = 2251;
Global $Polymock_Glyph_of_Power = 2252;
Global $Polymock_Overload = 2253;
Global $Polymock_Glyph_Destabilization = 2254;
Global $Polymock_Mind_Wreck = 2255;
Global $Order_of_Unholy_Vigor = 2256;
Global $Order_of_the_Lich = 2257;
Global $Master_of_Necromancy = 2258;
Global $Animate_Undead = 2259;
Global $Polymock_Deathly_Chill = 2260;
Global $Polymock_Rising_Bile = 2261;
Global $Polymock_Rotting_Flesh = 2262;
Global $Polymock_Lightning_Strike = 2263;
Global $Polymock_Lightning_Orb = 2264;
Global $Polymock_Lightning_Djinns_Haste = 2265;
Global $Polymock_Flare = 2266;
Global $Polymock_Immolate = 2267;
Global $Polymock_Meteor = 2268;
Global $Polymock_Ice_Spear = 2269;
Global $Polymock_Icy_Prison = 2270;
Global $Polymock_Mind_Freeze = 2271;
Global $Polymock_Ice_Shard_Storm = 2272;
Global $Polymock_Frozen_Trident = 2273;
Global $Polymock_Smite = 2274;
Global $Polymock_Smite_Hex = 2275;
Global $Polymock_Bane_Signet = 2276;
Global $Polymock_Stone_Daggers = 2277;
Global $Polymock_Obsidian_Flame = 2278;
Global $Polymock_Earthquake = 2279;
Global $Polymock_Frozen_Armor = 2280;
Global $Polymock_Glyph_Freeze = 2281;
Global $Polymock_Fireball = 2282;
Global $Polymock_Rodgorts_Invocation = 2283;
Global $Polymock_Calculated_Risk = 2284;
Global $Polymock_Recurring_Insecurity = 2285;
Global $Polymock_Backfire = 2286;
Global $Polymock_Guilt = 2287;
Global $Polymock_Lamentation = 2288;
Global $Polymock_Spirit_Rift = 2289;
Global $Polymock_Painful_Bond = 2290;
Global $Polymock_Signet_of_Clumsiness = 2291;
Global $Polymock_Migraine = 2292;
Global $Polymock_Glowing_Gaze = 2293;
Global $Polymock_Searing_Flames = 2294;
Global $Polymock_Signet_of_Revenge = 2295;
Global $Polymock_Signet_of_Smiting = 2296;
Global $Polymock_Stoning = 2297;
Global $Polymock_Eruption = 2298;
Global $Polymock_Shock_Arrow = 2299;
Global $Polymock_Mind_Shock = 2300;
Global $Polymock_Piercing_Light_Spear = 2301;
Global $Polymock_Mind_Blast = 2302;
Global $Polymock_Savannah_Heat = 2303;
Global $Polymock_Diversion = 2304;
Global $Polymock_Lightning_Blast = 2305;
Global $Polymock_Poisoned_Ground = 2306;
Global $Polymock_Icy_Bonds = 2307;
Global $Polymock_Sandstorm = 2308;
Global $Polymock_Banish = 2309;
Global $Mergoyle_Form = 2310;
Global $Skale_Form = 2311;
Global $Gargoyle_Form = 2312;
Global $Ice_Imp_Form = 2313;
Global $Fire_Imp_Form = 2314;
Global $Kappa_Form = 2315;
Global $Aloe_Seed_Form = 2316;
Global $Earth_Elemental_Form = 2317;
Global $Fire_Elemental_Form = 2318;
Global $Ice_Elemental_Form = 2319;
Global $Mirage_Iboga_Form = 2320;
Global $Wind_Rider_Form = 2321;
Global $Naga_Shaman_Form = 2322;
Global $Mantis_Dreamweaver_Form = 2323;
Global $Ruby_Djinn_Form = 2324;
Global $Gaki_Form = 2325;
Global $Stone_Rain_Form = 2326;
Global $Mursaat_Elementalist_Form = 2327;
Global $Crystal_Shield = 2328;
Global $Crystal_Snare = 2329;
Global $Paranoid_Indignation = 2330;
Global $Searing_Breath = 2331;
Global $Brawling = 2333;
Global $Brawling_Block = 2334;
Global $Brawling_Jab = 2335;
Global $Brawling_Straight_Right = 2337;
Global $Brawling_Hook = 2338;
Global $Brawling_Uppercut = 2340;
Global $Brawling_Combo_Punch = 2341;
Global $Brawling_Headbutt_Brawling_skill = 2342;
Global $STAND_UP = 2343;
Global $Call_of_Destruction = 2344;
Global $Lava_Ground = 2346;
Global $Lava_Wave = 2347;
Global $Charr_Siege_Attack_Assault_on_the_Stronghold = 2352;
Global $Finish_Him = 2353;
Global $Dodge_This = 2354;
Global $I_Am_The_Strongest = 2355;
Global $I_Am_Unstoppable = 2356;
Global $A_Touch_of_Guile = 2357;
Global $You_Move_Like_a_Dwarf = 2358;
Global $You_Are_All_Weaklings = 2359;
Global $Feel_No_Pain = 2360;
Global $Club_of_a_Thousand_Bears = 2361;
Global $Lava_Blast = 2364;
Global $Thunderfist_Strike = 2365;
Global $Alkars_Concoction = 2367;
Global $Murakais_Consumption = 2368;
Global $Murakais_Censure = 2369;
Global $Murakais_Calamity = 2370;
Global $Murakais_Storm_of_Souls = 2371;
Global $Edification = 2372;
Global $Heart_of_the_Norn = 2373;
Global $Ursan_Blessing = 2374;
Global $Ursan_Strike = 2375;
Global $Ursan_Rage = 2376;
Global $Ursan_Roar = 2377;
Global $Ursan_Force = 2378;
Global $Volfen_Blessing = 2379;
Global $Volfen_Claw = 2380;
Global $Volfen_Pounce = 2381;
Global $Volfen_Bloodlust = 2382;
Global $Volfen_Agility = 2383;
Global $Raven_Blessing = 2384;
Global $Raven_Talons = 2385;
Global $Raven_Swoop = 2386;
Global $Raven_Shriek = 2387;
Global $Raven_Flight = 2388;
Global $Totem_of_Man = 2389;
Global $Murakais_Call = 2391;
Global $Spawn_Pods = 2392;
Global $Enraged_Blast = 2393;
Global $Spawn_Hatchling = 2394;
Global $Ursan_Roar_Blood_Washes_Blood = 2395;
Global $Ursan_Force_Blood_Washes_Blood = 2396;
Global $Ursan_Aura = 2397;
Global $Consume_Flames = 2398;
Global $Charr_Flame_Keeper_Form = 2401;
Global $Titan_Form = 2402;
Global $Skeletal_Mage_Form = 2403;
Global $Smoke_Wraith_Form = 2404;
Global $Bone_Dragon_Form = 2405;
Global $Dwarven_Arcanist_Form = 2407;
Global $Dolyak_Rider_Form = 2408;
Global $Extract_Inscription = 2409;
Global $Charr_Shaman_Form = 2410;
Global $Mindbender = 2411;
Global $Smooth_Criminal = 2412;
Global $Technobabble = 2413;
Global $Radiation_Field = 2414;
Global $Asuran_Scan = 2415;
Global $Air_of_Superiority = 2416;
Global $Mental_Block = 2417;
Global $Pain_Inverter = 2418;
Global $Healing_Salve = 2419;
Global $Ebon_Escape = 2420;
Global $Weakness_Trap = 2421;
Global $Winds = 2422;
Global $Dwarven_Stability = 2423;
Global $StoutHearted = 2424;
Global $Decipher_Inscriptions = 2426;
Global $Rebel_Yell = 2427;
Global $Asuran_Flame_Staff = 2429;
Global $Aura_of_the_Bloodstone = 2430;
Global $Haunted_Ground = 2433;
Global $Asuran_Bodyguard = 2434;
Global $Energy_Channel = 2437;
Global $Hunt_Rampage_Asura = 2438;
Global $Boss_Bounty = 2440;
Global $Hunt_Point_Bonus_Asura = 2441;
Global $Time_Attack = 2444;
Global $Dwarven_Raider = 2445;
Global $Great_Dwarfs_Blessing = 2449;
Global $Hunt_Rampage_Deldrimor = 2450;
Global $Hunt_Point_Bonus = 2453;
Global $Vanguard_Patrol = 2457;
Global $Vanguard_Commendation = 2461;
Global $Hunt_Rampage_Ebon_Vanguard = 2462;
Global $Norn_Hunting_Party = 2469;
Global $Strength_of_the_Norn = 2473;
Global $Hunt_Rampage_Norn = 2474;
Global $Gloat = 2483;
Global $Metamorphosis = 2484;
Global $Inner_Fire = 2485;
Global $Elemental_Shift = 2486;
Global $Dryders_Feast = 2487;
Global $Fungal_Explosion = 2488;
Global $Blood_Rage = 2489;
Global $Parasitic_Bite = 2490;
Global $False_Death = 2491;
Global $Ooze_Combination = 2492;
Global $Ooze_Division = 2493;
Global $Bear_Form = 2494;
Global $Spore_Explosion = 2496;
Global $Dormant_Husk = 2497;
Global $Monkey_See_Monkey_Do = 2498;
Global $Tengus_Mimicry = 2500;
Global $Tongue_Lash = 2501;
Global $Soulrending_Shriek = 2502;
Global $Siege_Devourer = 2504;
Global $Siege_Devourer_Feast = 2505;
Global $Devourer_Bite = 2506;
Global $Siege_Devourer_Swipe = 2507;
Global $Devourer_Siege = 2508;
Global $HYAHHHHH = 2509;
Global $Dismount_Siege_Devourer = 2513;
Global $The_Masters_Mark = 2514;
Global $The_Snipers_Spear = 2515;
Global $Mount = 2516;
Global $Reverse_Polarity_Fire_Shield = 2517;
Global $Tengus_Gaze = 2518;
Global $Armor_of_Salvation_item_effect = 2520;
Global $Grail_of_Might_item_effect = 2521;
Global $Essence_of_Celerity_item_effect = 2522;
Global $Duncans_Defense = 2527;
Global $Invigorating_Mist = 2536;
Global $Courageous_Was_Saidra = 2537;
Global $Animate_Undead_Palawa_Joko = 2538;
Global $Order_of_Unholy_Vigor_Palawa_Joko = 2539;
Global $Order_of_the_Lich_Palawa_Joko = 2540;
Global $Golem_Boosters = 2541;
Global $Tongue_Whip = 2544;
Global $Lit_Torch = 2545;
Global $Dishonorable = 2546;
Global $Veteran_Asuran_Bodyguard = 2548;
Global $Veteran_Dwarven_Raider = 2549;
Global $Veteran_Vanguard_Patrol = 2550;
Global $Veteran_Norn_Hunting_Party = 2551 ;
Global $Candy_Corn_skill = 2604;
Global $Candy_Apple_skill = 2605;
Global $Anton_disguise = 2606;
Global $Erys_Vasburg_disguise = 2607;
Global $Olias_disguise = 2608;
Global $Argo_disguise = 2609;
Global $Mhenlo_disguise = 2610;
Global $Lukas_disguise = 2611;
Global $Aidan_disguise = 2612;
Global $Kahmu_disguise = 2613;
Global $Razah_disguise = 2614;
Global $Morgahn_disguise = 2615;
Global $Nika_disguise = 2616;
Global $Seaguard_Hala_disguise = 2617;
Global $Livia_disguise = 2618;
Global $Cynn_disguise = 2619;
Global $Tahlkora_disguise = 2620;
Global $Devona_disguise = 2621;
Global $Zho_disguise = 2622;
Global $Melonni_disguise = 2623;
Global $Xandra_disguise = 2624;
Global $Hayda_disguise = 2625 ;
Global $Pie_Induced_Ecstasy = 2649;
Global $Togo_disguise = 2651;
Global $Turai_Ossa_disguise = 2652;
Global $Gwen_disguise = 2653;
Global $Saul_DAlessio_disguise = 2654;
Global $Dragon_Empire_Rage = 2655;
Global $Call_to_the_Spirit_Realm = 2656;
Global $Hide = 2658;
Global $Feign_Death = 2659;
Global $Flee = 2660;
Global $Throw_Rock = 2661;
Global $Siege_Strike = 2663;
Global $Spike_Trap_spell = 2664;
Global $Barbed_Bomb = 2665;
Global $Balm_Bomb = 2667;
Global $Explosives = 2668;
Global $Rations = 2669;
Global $Form_Up_and_Advance = 2670;
Global $Spectral_Agony_hex = 2672;
Global $Stun_Bomb = 2673;
Global $Banner_of_the_Unseen = 2674;
Global $Signet_of_the_Unseen = 2675;
Global $For_Elona = 2676;
Global $Giant_Stomp_Turai_Ossa = 2677;
Global $Whirlwind_Attack_Turai_Ossa = 2678;
Global $Journey_to_the_North = 2699;
Global $Rat_Form = 2701;
Global $Party_Time = 2712;
Global $Awakened_Head_Form = 2841;
Global $Spider_Form = 2842;
Global $Golem_Form = 2844;
Global $Norn_Form = 2846;
Global $Rift_Warden_Form = 2848;
Global $Snowman_Form = 2851;
Global $Energy_Drain_PvP = 2852;
Global $Energy_Tap_PvP = 2853;
Global $PvP_effect = 2854;
Global $Ward_Against_Melee_PvP = 2855;
Global $Lightning_Orb_PvP = 2856;
Global $Aegis_PvP = 2857;
Global $Watch_Yourself_PvP = 2858;
Global $Enfeeble_PvP = 2859;
Global $Ether_Renewal_PvP = 2860;
Global $Penetrating_Attack_PvP = 2861;
Global $Shadow_Form_PvP = 2862;
Global $Discord_PvP = 2863;
Global $Sundering_Attack_PvP = 2864;
Global $Ritual_Lord_PvP = 2865;
Global $Flesh_of_My_Flesh_PvP = 2866;
Global $Ancestors_Rage_PvP = 2867;
Global $Splinter_Weapon_PvP = 2868;
Global $Assassins_Remedy_PvP = 2869;
Global $Blinding_Surge_PvP = 2870;
Global $Light_of_Deliverance_PvP = 2871;
Global $Death_Pact_Signet_PvP = 2872;
Global $Mystic_Sweep_PvP = 2873;
Global $Eremites_Attack_PvP = 2874;
Global $Harriers_Toss_PvP = 2875;
Global $Defensive_Anthem_PvP = 2876;
Global $Ballad_of_Restoration_PvP = 2877;
Global $Song_of_Restoration_PvP = 2878;
Global $Incoming_PvP = 2879;
Global $Never_Surrender_PvP = 2880;
Global $Mantra_of_Inscriptions_PvP = 2882;
Global $For_Great_Justice_PvP = 2883;
Global $Mystic_Regeneration_PvP = 2884;
Global $Enfeebling_Blood_PvP = 2885;
Global $Summoning_Sickness = 2886;
Global $Signet_of_Judgment_PvP = 2887;
Global $Chilling_Victory_PvP = 2888;
Global $Unyielding_Aura_PvP = 2891;
Global $Spirit_Bond_PvP = 2892;
Global $Weapon_of_Warding_PvP = 2893;
Global $Smiters_Boon_PvP = 2895;
Global $Battle_Fervor_Deactivating_ROX = 2896;
Global $Cloak_of_Faith_Deactivating_ROX = 2897;
Global $Dark_Aura_Deactivating_ROX = 2898;
Global $Reactor_Blast = 2902;
Global $Reactor_Blast_Timer = 2903;
Global $Jade_Brotherhood_Disguise = 2904;
Global $Internal_Power_Engaged = 2905;
Global $Target_Acquisition = 2906;
Global $NOX_Beam = 2907;
Global $NOX_Field_Dash = 2908;
Global $NOXion_Buster = 2909;
Global $Countdown = 2910;
Global $Bit_Golem_Breaker = 2911;
Global $Bit_Golem_Rectifier = 2912;
Global $Bit_Golem_Crash = 2913;
Global $Bit_Golem_Force = 2914;
Global $NOX_Phantom = 2916;
Global $NOX_Thunder = 2917;
Global $NOX_Lock_On = 2918;
Global $NOX_Driver = 2919;
Global $NOX_Fire = 2920;
Global $NOX_Knuckle = 2921;
Global $NOX_Divider_Drive = 2922;
Global $Sloth_Hunters_Shot_PvP = 2925;
Global $Experts_Dexterity_PvP = 2959;
Global $Signet_of_Spirits_PvP = 2965;
Global $Signet_of_Ghostly_Might_PvP = 2966;
Global $Avatar_of_Grenth_PvP = 2967;
Global $Oversized_Tonic_Warning = 2968;
Global $Read_the_Wind_PvP = 2969;
Global $Blue_Rock_Candy_Rush = 2971;
Global $Green_Rock_Candy_Rush = 2972;
Global $Red_Rock_Candy_Rush = 2973;
Global $Fall_Back_PVP = 3037;
Global $Well_Supplied = 3174;

Global $aSkill_Name[3407][2] = [ _
		 [1, "Healing Signet"], _
		 [2, "Resurrection Signet"], _
		 [3, "Signet of Capture"], _
		 [4, "BAMPH"], _
		 [5, "Power Block"], _
		 [6, "Mantra of Earth"], _
		 [7, "Mantra of Flame"], _
		 [8, "Mantra of Frost"], _
		 [9, "Mantra of Lightning"], _
		 [10, "Hex Breaker"], _
		 [11, "Distortion"], _
		 [12, "Mantra of Celerity"], _
		 [13, "Mantra of Recovery"], _
		 [14, "Mantra of Persistence"], _
		 [15, "Mantra of Inscriptions"], _
		 [16, "Mantra of Concentration"], _
		 [17, "Mantra of Resolve"], _
		 [18, "Mantra of Signets"], _
		 [19, "Fragility"], _
		 [20, "Confusion"], _
		 [21, "Inspired Enchantment"], _
		 [22, "Inspired Hex"], _
		 [23, "Power Spike"], _
		 [24, "Power Leak"], _
		 [25, "Power Drain"], _
		 [26, "Empathy"], _
		 [27, "Shatter Delusions"], _
		 [28, "Backfire"], _
		 [29, "Blackout"], _
		 [30, "Diversion"], _
		 [31, "Conjure Phantasm"], _
		 [32, "Illusion of Weakness"], _
		 [33, "Illusionary Weaponry"], _
		 [34, "Sympathetic Visage"], _
		 [35, "Ignorance"], _
		 [36, "Arcane Conundrum"], _
		 [37, "Illusion of Haste"], _
		 [38, "Channeling"], _
		 [39, "Energy Surge"], _
		 [40, "Ether Feast"], _
		 [41, "Ether Lord"], _
		 [42, "Energy Burn"], _
		 [43, "Clumsiness"], _
		 [44, "Phantom Pain"], _
		 [45, "Ethereal Burden"], _
		 [46, "Guilt"], _
		 [47, "Ineptitude"], _
		 [48, "Spirit of Failure"], _
		 [49, "Mind Wrack"], _
		 [50, "Wastrels Worry"], _
		 [51, "Shame"], _
		 [52, "Panic"], _
		 [53, "Migraine"], _
		 [54, "Crippling Anguish"], _
		 [55, "Fevered Dreams"], _
		 [56, "Soothing Images"], _
		 [57, "Cry of Frustration"], _
		 [58, "Signet of Midnight"], _
		 [59, "Signet of Weariness"], _
		 [60, "Signet of Illusions (beta version)"], _
		 [61, "Leech Signet"], _
		 [62, "Signet of Humility"], _
		 [63, "Keystone Signet"], _
		 [64, "Mimic"], _
		 [65, "Arcane Mimicry"], _
		 [66, "Spirit Shackles"], _
		 [67, "Shatter Hex"], _
		 [68, "Drain Enchantment"], _
		 [69, "Shatter Enchantment"], _
		 [70, "Disappear"], _
		 [71, "Unnatural Signet (alpha version)"], _
		 [72, "Elemental Resistance"], _
		 [73, "Physical Resistance"], _
		 [74, "Echo"], _
		 [75, "Arcane Echo"], _
		 [76, "Imagined Burden"], _
		 [77, "Chaos Storm"], _
		 [78, "Epidemic"], _
		 [79, "Energy Drain"], _
		 [80, "Energy Tap"], _
		 [81, "Arcane Thievery"], _
		 [82, "Mantra of Recall"], _
		 [83, "Animate Bone Horror"], _
		 [84, "Animate Bone Fiend"], _
		 [85, "Animate Bone Minions"], _
		 [86, "Grenths Balance"], _
		 [87, "Veratas Gaze"], _
		 [88, "Veratas Aura"], _
		 [89, "Deathly Chill"], _
		 [90, "Veratas Sacrifice"], _
		 [91, "Well of Power"], _
		 [92, "Well of Blood"], _
		 [93, "Well of Suffering"], _
		 [94, "Well of the Profane"], _
		 [95, "Putrid Explosion"], _
		 [96, "Soul Feast"], _
		 [97, "Necrotic Traversal"], _
		 [98, "Consume Corpse"], _
		 [99, "Parasitic Bond"], _
		 [100, "Soul Barbs"], _
		 [101, "Barbs"], _
		 [102, "Shadow Strike"], _
		 [103, "Price of Failure"], _
		 [104, "Death Nova"], _
		 [105, "Deathly Swarm"], _
		 [106, "Rotting Flesh"], _
		 [107, "Virulence"], _
		 [108, "Suffering"], _
		 [109, "Life Siphon"], _
		 [110, "Unholy Feast"], _
		 [111, "Awaken the Blood"], _
		 [112, "Desecrate Enchantments"], _
		 [113, "Tainted Flesh"], _
		 [114, "Aura of the Lich"], _
		 [115, "Blood Renewal"], _
		 [116, "Dark Aura"], _
		 [117, "Enfeeble"], _
		 [118, "Enfeebling Blood"], _
		 [119, "Blood is Power"], _
		 [120, "Blood of the Master"], _
		 [121, "Spiteful Spirit"], _
		 [122, "Malign Intervention"], _
		 [123, "Insidious Parasite"], _
		 [124, "Spinal Shivers"], _
		 [125, "Wither"], _
		 [126, "Life Transfer"], _
		 [127, "Mark of Subversion"], _
		 [128, "Soul Leech"], _
		 [129, "Defile Flesh"], _
		 [130, "Demonic Flesh"], _
		 [131, "Barbed Signet"], _
		 [132, "Plague Signet"], _
		 [133, "Dark Pact"], _
		 [134, "Order of Pain"], _
		 [135, "Faintheartedness"], _
		 [136, "Shadow of Fear"], _
		 [137, "Rigor Mortis"], _
		 [138, "Dark Bond"], _
		 [139, "Infuse Condition"], _
		 [140, "Malaise"], _
		 [141, "Rend Enchantments"], _
		 [142, "Lingering Curse"], _
		 [143, "Strip Enchantment"], _
		 [144, "Chilblains"], _
		 [145, "Signet of Agony"], _
		 [146, "Offering of Blood"], _
		 [147, "Dark Fury"], _
		 [148, "Order of the Vampire"], _
		 [149, "Plague Sending"], _
		 [150, "Mark of Pain"], _
		 [151, "Feast of Corruption"], _
		 [152, "Taste of Death"], _
		 [153, "Vampiric Gaze"], _
		 [154, "Plague Touch"], _
		 [155, "Vile Touch"], _
		 [156, "Vampiric Touch"], _
		 [157, "Blood Ritual"], _
		 [158, "Touch of Agony"], _
		 [159, "Weaken Armor"], _
		 [160, "Windborne Speed"], _
		 [161, "Lightning Storm"], _
		 [162, "Gale"], _
		 [163, "Whirlwind"], _
		 [164, "Elemental Attunement"], _
		 [165, "Armor of Earth"], _
		 [166, "Kinetic Armor"], _
		 [167, "Eruption"], _
		 [168, "Magnetic Aura"], _
		 [169, "Earth Attunement"], _
		 [170, "Earthquake"], _
		 [171, "Stoning"], _
		 [172, "Stone Daggers"], _
		 [173, "Grasping Earth"], _
		 [174, "Aftershock"], _
		 [175, "Ward Against Elements"], _
		 [176, "Ward Against Melee"], _
		 [177, "Ward Against Foes"], _
		 [178, "Ether Prodigy"], _
		 [179, "Incendiary Bonds"], _
		 [180, "Aura of Restoration"], _
		 [181, "Ether Renewal"], _
		 [182, "Conjure Flame"], _
		 [183, "Inferno"], _
		 [184, "Fire Attunement"], _
		 [185, "Mind Burn"], _
		 [186, "Fireball"], _
		 [187, "Meteor"], _
		 [188, "Flame Burst"], _
		 [189, "Rodgorts Invocation"], _
		 [190, "Mark of Rodgort"], _
		 [191, "Immolate"], _
		 [192, "Meteor Shower"], _
		 [193, "Phoenix"], _
		 [194, "Flare"], _
		 [195, "Lava Font"], _
		 [196, "Searing Heat"], _
		 [197, "Fire Storm"], _
		 [198, "Glyph of Elemental Power"], _
		 [199, "Glyph of Energy"], _
		 [200, "Glyph of Lesser Energy"], _
		 [201, "Glyph of Concentration"], _
		 [202, "Glyph of Sacrifice"], _
		 [203, "Glyph of Renewal"], _
		 [204, "Rust"], _
		 [205, "Lightning Surge"], _
		 [206, "Armor of Frost"], _
		 [207, "Conjure Frost"], _
		 [208, "Water Attunement"], _
		 [209, "Mind Freeze"], _
		 [210, "Ice Prison"], _
		 [211, "Ice Spikes"], _
		 [212, "Frozen Burst"], _
		 [213, "Shard Storm"], _
		 [214, "Ice Spear"], _
		 [215, "Maelstrom"], _
		 [216, "Iron Mist"], _
		 [217, "Crystal Wave"], _
		 [218, "Obsidian Flesh"], _
		 [219, "Obsidian Flame"], _
		 [220, "Blinding Flash"], _
		 [221, "Conjure Lightning"], _
		 [222, "Lightning Strike"], _
		 [223, "Chain Lightning"], _
		 [224, "Enervating Charge"], _
		 [225, "Air Attunement"], _
		 [226, "Mind Shock"], _
		 [227, "Glimmering Mark"], _
		 [228, "Thunderclap"], _
		 [229, "Lightning Orb"], _
		 [230, "Lightning Javelin"], _
		 [231, "Shock"], _
		 [232, "Lightning Touch"], _
		 [233, "Swirling Aura"], _
		 [234, "Deep Freeze"], _
		 [235, "Blurred Vision"], _
		 [236, "Mist Form"], _
		 [237, "Water Trident"], _
		 [238, "Armor of Mist"], _
		 [239, "Ward Against Harm"], _
		 [240, "Smite"], _
		 [241, "Life Bond"], _
		 [242, "Balthazars Spirit"], _
		 [243, "Strength of Honor"], _
		 [244, "Life Attunement"], _
		 [245, "Protective Spirit"], _
		 [246, "Divine Intervention"], _
		 [247, "Symbol of Wrath"], _
		 [248, "Retribution"], _
		 [249, "Holy Wrath"], _
		 [250, "Essence Bond"], _
		 [251, "Scourge Healing"], _
		 [252, "Banish"], _
		 [253, "Scourge Sacrifice"], _
		 [254, "Vigorous Spirit"], _
		 [255, "Watchful Spirit"], _
		 [256, "Blessed Aura"], _
		 [257, "Aegis"], _
		 [258, "Guardian"], _
		 [259, "Shield of Deflection"], _
		 [260, "Aura of Faith"], _
		 [261, "Shield of Regeneration"], _
		 [262, "Shield of Judgment"], _
		 [263, "Protective Bond"], _
		 [264, "Pacifism"], _
		 [265, "Amity"], _
		 [266, "Peace and Harmony"], _
		 [267, "Judges Insight"], _
		 [268, "Unyielding Aura"], _
		 [269, "Mark of Protection"], _
		 [270, "Life Barrier"], _
		 [271, "Zealots Fire"], _
		 [272, "Balthazars Aura"], _
		 [273, "Spell Breaker"], _
		 [274, "Healing Seed"], _
		 [275, "Mend Condition"], _
		 [276, "Restore Condition"], _
		 [277, "Mend Ailment"], _
		 [278, "Purge Conditions"], _
		 [279, "Divine Healing"], _
		 [280, "Heal Area"], _
		 [281, "Orison of Healing"], _
		 [282, "Word of Healing"], _
		 [283, "Dwaynas Kiss"], _
		 [284, "Divine Boon"], _
		 [285, "Healing Hands"], _
		 [286, "Heal Other"], _
		 [287, "Heal Party"], _
		 [288, "Healing Breeze"], _
		 [289, "Vital Blessing"], _
		 [290, "Mending"], _
		 [291, "Live Vicariously"], _
		 [292, "Infuse Health"], _
		 [293, "Signet of Devotion"], _
		 [294, "Signet of Judgment"], _
		 [295, "Purge Signet"], _
		 [296, "Bane Signet"], _
		 [297, "Blessed Signet"], _
		 [298, "Martyr"], _
		 [299, "Shielding Hands"], _
		 [300, "Contemplation of Purity"], _
		 [301, "Remove Hex"], _
		 [302, "Smite Hex"], _
		 [303, "Convert Hexes"], _
		 [304, "Light of Dwayna"], _
		 [305, "Resurrect"], _
		 [306, "Rebirth"], _
		 [307, "Reversal of Fortune"], _
		 [308, "Succor"], _
		 [309, "Holy Veil"], _
		 [310, "Divine Spirit"], _
		 [311, "Draw Conditions"], _
		 [312, "Holy Strike"], _
		 [313, "Healing Touch"], _
		 [314, "Restore Life"], _
		 [315, "Vengeance"], _
		 [316, "To the Limit"], _
		 [317, "Battle Rage"], _
		 [318, "Defy Pain"], _
		 [319, "Rush"], _
		 [320, "Hamstring"], _
		 [321, "Wild Blow"], _
		 [322, "Power Attack"], _
		 [323, "Desperation Blow"], _
		 [324, "Thrill of Victory"], _
		 [325, "Distracting Blow"], _
		 [326, "Protectors Strike"], _
		 [327, "Griffons Sweep"], _
		 [328, "Pure Strike"], _
		 [329, "Skull Crack"], _
		 [330, "Cyclone Axe"], _
		 [331, "Hammer Bash"], _
		 [332, "Bulls Strike"], _
		 [333, "I Will Avenge You"], _
		 [334, "Axe Rake"], _
		 [335, "Cleave"], _
		 [336, "Executioners Strike"], _
		 [337, "Dismember"], _
		 [338, "Eviscerate"], _
		 [339, "Penetrating Blow"], _
		 [340, "Disrupting Chop"], _
		 [341, "Swift Chop"], _
		 [342, "Axe Twist"], _
		 [343, "For Great Justice"], _
		 [344, "Flurry"], _
		 [345, "Defensive Stance"], _
		 [346, "Frenzy"], _
		 [347, "Endure Pain"], _
		 [348, "Watch Yourself"], _
		 [349, "Sprint"], _
		 [350, "Belly Smash"], _
		 [351, "Mighty Blow"], _
		 [352, "Crushing Blow"], _
		 [353, "Crude Swing"], _
		 [354, "Earth Shaker"], _
		 [355, "Devastating Hammer"], _
		 [356, "Irresistible Blow"], _
		 [357, "Counter Blow"], _
		 [358, "Backbreaker"], _
		 [359, "Heavy Blow"], _
		 [360, "Staggering Blow"], _
		 [361, "Dolyak Signet"], _
		 [362, "Warriors Cunning"], _
		 [363, "Shield Bash"], _
		 [364, "Charge"], _
		 [365, "Victory Is Mine"], _
		 [366, "Fear Me"], _
		 [367, "Shields Up"], _
		 [368, "I Will Survive"], _
		 [369, "Dont Believe Their Lies"], _
		 [370, "Berserker Stance"], _
		 [371, "Balanced Stance"], _
		 [372, "Gladiators Defense"], _
		 [373, "Deflect Arrows"], _
		 [374, "Warriors Endurance"], _
		 [375, "Dwarven Battle Stance"], _
		 [376, "Disciplined Stance"], _
		 [377, "Wary Stance"], _
		 [378, "Shield Stance"], _
		 [379, "Bulls Charge"], _
		 [380, "Bonettis Defense"], _
		 [381, "Hundred Blades"], _
		 [382, "Sever Artery"], _
		 [383, "Galrath Slash"], _
		 [384, "Gash"], _
		 [385, "Final Thrust"], _
		 [386, "Seeking Blade"], _
		 [387, "Riposte"], _
		 [388, "Deadly Riposte"], _
		 [389, "Flourish"], _
		 [390, "Savage Slash"], _
		 [391, "Hunters Shot"], _
		 [392, "Pin Down"], _
		 [393, "Crippling Shot"], _
		 [394, "Power Shot"], _
		 [395, "Barrage"], _
		 [396, "Dual Shot"], _
		 [397, "Quick Shot"], _
		 [398, "Penetrating Attack"], _
		 [399, "Distracting Shot"], _
		 [400, "Precision Shot"], _
		 [401, "Splinter Shot (monster skill)"], _
		 [402, "Determined Shot"], _
		 [403, "Called Shot"], _
		 [404, "Poison Arrow"], _
		 [405, "Oath Shot"], _
		 [406, "Debilitating Shot"], _
		 [407, "Point Blank Shot"], _
		 [408, "Concussion Shot"], _
		 [409, "Punishing Shot"], _
		 [410, "Call of Ferocity"], _
		 [411, "Charm Animal"], _
		 [412, "Call of Protection"], _
		 [413, "Call of Elemental Protection"], _
		 [414, "Call of Vitality"], _
		 [415, "Call of Haste"], _
		 [416, "Call of Healing"], _
		 [417, "Call of Resilience"], _
		 [418, "Call of Feeding"], _
		 [419, "Call of the Hunter"], _
		 [420, "Call of Brutality"], _
		 [421, "Call of Disruption"], _
		 [422, "Revive Animal"], _
		 [423, "Symbiotic Bond"], _
		 [424, "Throw Dirt"], _
		 [425, "Dodge"], _
		 [426, "Savage Shot"], _
		 [427, "Antidote Signet"], _
		 [428, "Incendiary Arrows"], _
		 [429, "Melandrus Arrows"], _
		 [430, "Marksmans Wager"], _
		 [431, "Ignite Arrows"], _
		 [432, "Read the Wind"], _
		 [433, "Kindle Arrows"], _
		 [434, "Choking Gas"], _
		 [435, "Apply Poison"], _
		 [436, "Comfort Animal"], _
		 [437, "Bestial Pounce"], _
		 [438, "Maiming Strike"], _
		 [439, "Feral Lunge"], _
		 [440, "Scavenger Strike"], _
		 [441, "Melandrus Assault"], _
		 [442, "Ferocious Strike"], _
		 [443, "Predators Pounce"], _
		 [444, "Brutal Strike"], _
		 [445, "Disrupting Lunge"], _
		 [446, "Troll Unguent"], _
		 [447, "Otyughs Cry"], _
		 [448, "Escape"], _
		 [449, "Practiced Stance"], _
		 [450, "Whirling Defense"], _
		 [451, "Melandrus Resilience"], _
		 [452, "Dryders Defenses"], _
		 [453, "Lightning Reflexes"], _
		 [454, "Tigers Fury"], _
		 [455, "Storm Chaser"], _
		 [456, "Serpents Quickness"], _
		 [457, "Dust Trap"], _
		 [458, "Barbed Trap"], _
		 [459, "Flame Trap"], _
		 [460, "Healing Spring"], _
		 [461, "Spike Trap"], _
		 [462, "Winter"], _
		 [463, "Winnowing"], _
		 [464, "Edge of Extinction"], _
		 [465, "Greater Conflagration"], _
		 [466, "Conflagration"], _
		 [467, "Fertile Season"], _
		 [468, "Symbiosis"], _
		 [469, "Primal Echoes"], _
		 [470, "Predatory Season"], _
		 [471, "Frozen Soil"], _
		 [472, "Favorable Winds"], _
		 [473, "High Winds"], _
		 [474, "Energizing Wind"], _
		 [475, "Quickening Zephyr"], _
		 [476, "Natures Renewal"], _
		 [477, "Muddy Terrain"], _
		 [478, "Bleeding"], _
		 [479, "Blind"], _
		 [480, "Burning"], _
		 [481, "Crippled"], _
		 [482, "Deep Wound"], _
		 [483, "Disease"], _
		 [484, "Poison"], _
		 [485, "Dazed"], _
		 [486, "Weakness"], _
		 [487, "Cleansed"], _
		 [488, "Eruption (environment)"], _
		 [489, "Fire Storm (environment)"], _
		 [490, "Vital Blessing (monster skill)"], _
		 [491, "Fount Of Maguuma"], _
		 [492, "Healing Fountain"], _
		 [493, "Icy Ground"], _
		 [494, "Maelstrom (environment)"], _
		 [495, "Mursaat Tower (skill)"], _
		 [496, "Quicksand (environment effect)"], _
		 [497, "Curse of the Bloodstone"], _
		 [498, "Chain Lightning (environment)"], _
		 [499, "Obelisk Lightning"], _
		 [500, "Tar"], _
		 [501, "Siege Attack"], _
		 [502, "Resurrect Party"], _
		 [503, "Scepter of Orrs Aura"], _
		 [504, "Scepter of Orrs Power"], _
		 [505, "Burden Totem"], _
		 [506, "Splinter Mine (skill)"], _
		 [507, "Entanglement"], _
		 [508, "Dwarven Powder Keg"], _
		 [509, "Seed of Resurrection"], _
		 [510, "Deafening Roar"], _
		 [511, "Brutal Mauling"], _
		 [512, "Crippling Attack"], _
		 [513, "Charm Animal (monster skill)"], _
		 [514, "Breaking Charm"], _
		 [515, "Charr Buff"], _
		 [516, "Claim Resource"], _
		 [517, "Claim Resource"], _
		 [518, "Claim Resource"], _
		 [519, "Claim Resource"], _
		 [520, "Claim Resource"], _
		 [521, "Claim Resource"], _
		 [522, "Claim Resource"], _
		 [523, "Claim Resource"], _
		 [524, "Dozen Shot"], _
		 [525, "Nibble"], _
		 [526, "Claim Resource"], _
		 [527, "Claim Resource"], _
		 [528, "Reflection"], _
		 [530, "Giant Stomp"], _
		 [531, "Agnars Rage"], _
		 [532, "Healing Breeze (Agnars Rage)"], _
		 [533, "Crystal Haze"], _
		 [534, "Crystal Bonds"], _
		 [535, "Jagged Crystal Skin"], _
		 [536, "Crystal Hibernation"], _
		 [537, "Stun Immunity"], _
		 [538, "Invulnerability"], _
		 [539, "Hunger of the Lich"], _
		 [540, "Embrace the Pain"], _
		 [541, "Life Vortex"], _
		 [542, "Oracle Link"], _
		 [543, "Guardian Pacify"], _
		 [544, "Soul Vortex"], _
		 [546, "Spectral Agony"], _
		 [547, "Natural Resistance"], _
		 [548, "Natural Resistance"], _
		 [549, "Guild Lord Aura"], _
		 [550, "Critical Hit Probability"], _
		 [551, "Stun on Critical Hit"], _
		 [552, "Blood Splattering"], _
		 [553, "Inanimate Object"], _
		 [554, "Undead sensitivity to Light"], _
		 [555, "Energy Boost"], _
		 [556, "Health Drain"], _
		 [557, "Immunity to Critical Hits"], _
		 [558, "Titans get plus Health regen and set enemies on fire each time he is hit."], _
		 [559, "Undying"], _
		 [560, "Resurrect (Gargoyle)"], _
		 [561, "Seal Regen"], _
		 [562, "Lightning Orb"], _
		 [563, "Wurm Siege (Dunes of Despair)"], _
		 [564, "Wurm Siege"], _
		 [565, "Claim Resource"], _
		 [566, "Shiver Touch"], _
		 [567, "Spontaneous Combustion"], _
		 [568, "Vanish"], _
		 [569, "Victory or Death"], _
		 [570, "Mark of Insecurity"], _
		 [571, "Disrupting Dagger"], _
		 [572, "Deadly Paradox"], _
		 [573, "Teleport Players"], _
		 [574, "Quest [for Coastal Exam."], _
		 [575, "Holy Blessing"], _
		 [576, "Statues Blessing"], _
		 [577, "Siege Attack"], _
		 [578, "Siege Attack"], _
		 [579, "Domain of [Damage"], _
		 [580, "Domain of Energy Draining"], _
		 [581, "Domain of Elements"], _
		 [582, "Domain of Health Draining"], _
		 [583, "Domain of Slow"], _
		 [584, "Divine Fire"], _
		 [585, "Swamp Water"], _
		 [586, "Janthirs Gaze"], _
		 [587, "Fake Spell"], _
		 [588, "Charm Animal (monster)"], _
		 [589, "Stormcaller (skill)"], _
		 [590, "Knock"], _
		 [591, "Quest ["], _
		 [592, "Rurik Must Live"], _
		 [593, "Blessing of the Kurzicks"], _
		 [594, "Lichs Phylactery"], _
		 [595, "Restore Life (monster skill)"], _
		 [596, "Chimera of Intensity"], _
		 [657, "Life Draining"], _
		 [763, "Jaundiced Gaze"], _
		 [764, "Wail of Doom"], _
		 [765, "Heros Insight"], _
		 [766, "Gaze of Contempt"], _
		 [767, "Berserkers Insight"], _
		 [768, "Slayers Insight"], _
		 [769, "Vipers Defense"], _
		 [770, "Return"], _
		 [771, "Aura of Displacement"], _
		 [772, "Generous Was Tsungrai"], _
		 [773, "Mighty Was Vorizun"], _
		 [774, "To the Death"], _
		 [775, "Death Blossom"], _
		 [776, "Twisting Fangs"], _
		 [777, "Horns of the Ox"], _
		 [778, "Falling Spider"], _
		 [779, "Black Lotus Strike"], _
		 [780, "Fox Fangs"], _
		 [781, "Moebius Strike"], _
		 [782, "Jagged Strike"], _
		 [783, "Unsuspecting Strike"], _
		 [784, "Entangling Asp"], _
		 [785, "Mark of Death"], _
		 [786, "Iron Palm"], _
		 [787, "Resilient Weapon"], _
		 [788, "Blind Was Mingson"], _
		 [789, "Grasping Was Kuurong"], _
		 [790, "Vengeful Was Khanhei"], _
		 [791, "Flesh of My Flesh"], _
		 [792, "Splinter Weapon"], _
		 [793, "Weapon of Warding"], _
		 [794, "Wailing Weapon"], _
		 [795, "Nightmare Weapon"], _
		 [796, "Sorrows Flame"], _
		 [797, "Sorrows Fist"], _
		 [798, "Blast Furnace"], _
		 [799, "Beguiling Haze"], _
		 [800, "Enduring Toxin"], _
		 [801, "Shroud of Silence"], _
		 [802, "Expose Defenses"], _
		 [803, "Power Leech"], _
		 [804, "Arcane Languor"], _
		 [805, "Animate Vampiric Horror"], _
		 [806, "Cultists Fervor"], _
		 [808, "Reapers Mark"], _
		 [809, "Shatterstone"], _
		 [810, "Protectors Defense"], _
		 [811, "Run as One"], _
		 [812, "Defiant Was Xinrae"], _
		 [813, "Lyssas Aura"], _
		 [814, "Shadow Refuge"], _
		 [815, "Scorpion Wire"], _
		 [816, "Mirrored Stance"], _
		 [817, "Discord"], _
		 [818, "Well of Weariness"], _
		 [819, "Vampiric Spirit"], _
		 [820, "Depravity"], _
		 [821, "Icy Veins"], _
		 [822, "Weaken Knees"], _
		 [823, "Burning Speed"], _
		 [824, "Lava Arrows"], _
		 [825, "Bed of Coals"], _
		 [826, "Shadow Form"], _
		 [827, "Siphon Strength"], _
		 [828, "Vile Miasma"], _
		 [829, "Veratas Promise"], _
		 [830, "Ray of Judgment"], _
		 [831, "Primal Rage"], _
		 [832, "Animate Flesh Golem"], _
		 [833, "Borrowed Energy"], _
		 [834, "Reckless Haste"], _
		 [835, "Blood Bond"], _
		 [836, "Ride the Lightning"], _
		 [837, "Energy Boon"], _
		 [838, "Dwaynas Sorrow"], _
		 [839, "Retreat"], _
		 [840, "Poisoned Heart"], _
		 [841, "Fetid Ground"], _
		 [842, "Arc Lightning"], _
		 [843, "Gust"], _
		 [844, "Churning Earth"], _
		 [845, "Liquid Flame"], _
		 [846, "Steam"], _
		 [847, "Boon Signet"], _
		 [848, "Reverse Hex"], _
		 [849, "Lacerating Chop"], _
		 [850, "Fierce Blow"], _
		 [851, "Sun and Moon Slash"], _
		 [852, "Splinter Shot"], _
		 [853, "Melandrus Shot"], _
		 [854, "Snare"], _
		 [855, "Chomper"], _
		 [856, "Kilroy Stonekin"], _
		 [857, "Adventurers Insight"], _
		 [858, "Dancing Daggers"], _
		 [859, "Conjure Nightmare"], _
		 [860, "Signet of Disruption"], _
		 [861, "Dissipation"], _
		 [862, "Ravenous Gaze"], _
		 [863, "Order of Apostasy"], _
		 [864, "Oppressive Gaze"], _
		 [865, "Lightning Hammer"], _
		 [866, "Vapor Blade"], _
		 [867, "Healing Light"], _
		 [868, "Aim True"], _
		 [869, "Coward"], _
		 [870, "Pestilence"], _
		 [871, "Shadowsong"], _
		 [872, "Shadowsong (attack)"], _
		 [873, "Resurrect (monster skill)"], _
		 [874, "Consuming Flames"], _
		 [875, "Chains of Enslavement"], _
		 [876, "Signet of Shadows"], _
		 [877, "Lyssas Balance"], _
		 [878, "Visions of Regret"], _
		 [879, "Illusion of Pain"], _
		 [880, "Stolen Speed"], _
		 [881, "Ether Signet"], _
		 [882, "Signet of Disenchantment"], _
		 [883, "Vocal Minority"], _
		 [884, "Searing Flames"], _
		 [885, "Shield Guardian"], _
		 [886, "Restful Breeze"], _
		 [887, "Signet of Rejuvenation"], _
		 [888, "Whirling Axe"], _
		 [889, "Forceful Blow"], _
		 [890, "Headshot"], _
		 [891, "None Shall Pass"], _
		 [892, "Quivering Blade"], _
		 [893, "Seeking Arrows"], _
		 [894, "Rampagers Insight"], _
		 [895, "Hunters Insight"], _
		 [896, "Amulet of Protection"], _
		 [897, "Oath of Healing"], _
		 [898, "Overload"], _
		 [899, "Images of Remorse"], _
		 [900, "Shared Burden"], _
		 [901, "Soul Bind"], _
		 [902, "Blood of the Aggressor"], _
		 [903, "Icy Prism"], _
		 [904, "Furious Axe"], _
		 [905, "Auspicious Blow"], _
		 [906, "On Your Knees"], _
		 [907, "Dragon Slash"], _
		 [908, "Marauders Shot"], _
		 [909, "Focused Shot"], _
		 [910, "Spirit Rift"], _
		 [911, "Union"], _
		 [912, "Blessing of the Kurzicks"], _
		 [913, "Tranquil Was Tanasen"], _
		 [914, "Consume Soul"], _
		 [915, "Spirit Light"], _
		 [916, "Lamentation"], _
		 [917, "Rupture Soul"], _
		 [918, "Spirit to Flesh"], _
		 [919, "Spirit Burn"], _
		 [920, "Destruction"], _
		 [921, "Dissonance"], _
		 [922, "Dissonance (attack)"], _
		 [923, "Disenchantment"], _
		 [924, "Disenchantment (attack)"], _
		 [925, "Recall"], _
		 [926, "Sharpen Daggers"], _
		 [927, "Shameful Fear"], _
		 [928, "Shadow Shroud"], _
		 [929, "Shadow of Haste"], _
		 [930, "Auspicious Incantation"], _
		 [931, "Power Return"], _
		 [932, "Complicate"], _
		 [933, "Shatter Storm"], _
		 [934, "Unnatural Signet"], _
		 [935, "Rising Bile"], _
		 [936, "Envenom Enchantments"], _
		 [937, "Shockwave"], _
		 [938, "Ward of Stability"], _
		 [939, "Icy Shackles"], _
		 [940, "Cry of Lament"], _
		 [941, "Blessed Light"], _
		 [942, "Withdraw Hexes"], _
		 [943, "Extinguish"], _
		 [944, "Signet of Strength"], _
		 [945, "REMOVE (With Haste)"], _
		 [946, "Trappers Focus"], _
		 [947, "Brambles"], _
		 [948, "Desperate Strike"], _
		 [949, "Way of the Fox"], _
		 [950, "Shadowy Burden"], _
		 [951, "Siphon Speed"], _
		 [952, "Deaths Charge"], _
		 [953, "Power Flux"], _
		 [954, "Expel Hexes"], _
		 [955, "Rip Enchantment"], _
		 [956, "Energy Font"], _
		 [957, "Spell Shield"], _
		 [958, "Healing Whisper"], _
		 [959, "Ethereal Light"], _
		 [960, "Release Enchantments"], _
		 [961, "Lacerate"], _
		 [962, "Spirit Transfer"], _
		 [963, "Restoration"], _
		 [964, "Vengeful Weapon"], _
		 [965, "Archemorus Strike"], _
		 [966, "Spear of Archemorus: Level 1"], _
		 [967, "Spear of Archemorus: Level 2"], _
		 [968, "Spear of Archemorus: Level 3"], _
		 [969, "Spear of Archemorus: Level 4"], _
		 [970, "Spear of Archemorus: Level 5"], _
		 [971, "Argos Cry"], _
		 [972, "Jade Fury"], _
		 [973, "Blinding Powder"], _
		 [974, "Mantis Touch"], _
		 [975, "Exhausting Assault"], _
		 [976, "Repeating Strike"], _
		 [977, "Way of the Lotus"], _
		 [978, "Mark of Instability"], _
		 [979, "Mistrust"], _
		 [980, "Feast of Souls"], _
		 [981, "Recuperation"], _
		 [982, "Shelter"], _
		 [983, "Weapon of Shadow"], _
		 [984, "Torch Enchantment"], _
		 [985, "Caltrops"], _
		 [986, "Nine Tail Strike"], _
		 [987, "Way of the Empty Palm"], _
		 [988, "Temple Strike"], _
		 [989, "Golden Phoenix Strike"], _
		 [990, "Expunge Enchantments"], _
		 [991, "Deny Hexes"], _
		 [992, "Triple Chop"], _
		 [993, "Enraged Smash"], _
		 [994, "Renewing Smash"], _
		 [995, "Tiger Stance"], _
		 [996, "Standing Slash"], _
		 [997, "Famine"], _
		 [998, "Torch Hex"], _
		 [999, "Torch Degeneration Hex"], _
		 [1000, "Blinding Snow"], _
		 [1001, "Avalanche (skill)"], _
		 [1002, "Snowball"], _
		 [1003, "Mega Snowball"], _
		 [1004, "Yuletide"], _
		 [1005, "Ice Skates"], _
		 [1006, "Ice Fort"], _
		 [1007, "Yellow Snow"], _
		 [1008, "Hidden Rock"], _
		 [1009, "Snow Down the Shirt"], _
		 [1010, "Mmmm. Snowcone"], _
		 [1011, "Holiday Blues"], _
		 [1012, "Icicles"], _
		 [1013, "Ice Breaker"], _
		 [1014, "Lets Get Em"], _
		 [1015, "Flurry of Ice"], _
		 [1016, "Snowball (NPC)"], _
		 [1017, "Undying"], _
		 [1018, "Critical Eye"], _
		 [1019, "Critical Strike"], _
		 [1020, "Blades of Steel"], _
		 [1021, "Jungle Strike"], _
		 [1022, "Wild Strike"], _
		 [1023, "Leaping Mantis Sting"], _
		 [1024, "Black Mantis Thrust"], _
		 [1025, "Disrupting Stab"], _
		 [1026, "Golden Lotus Strike"], _
		 [1027, "Critical Defenses"], _
		 [1028, "Way of Perfection"], _
		 [1029, "Dark Apostasy"], _
		 [1030, "Locusts Fury"], _
		 [1031, "Shroud of Distress"], _
		 [1032, "Heart of Shadow"], _
		 [1033, "Impale"], _
		 [1034, "Seeping Wound"], _
		 [1035, "Assassins Promise"], _
		 [1036, "Signet of Malice"], _
		 [1037, "Dark Escape"], _
		 [1038, "Crippling Dagger"], _
		 [1039, "Star Strike"], _
		 [1040, "Spirit Walk"], _
		 [1041, "Unseen Fury"], _
		 [1042, "Flashing Blades"], _
		 [1043, "Dash"], _
		 [1044, "Dark Prison"], _
		 [1045, "Palm Strike"], _
		 [1046, "Assassin of Lyssa"], _
		 [1047, "Mesmer of Lyssa"], _
		 [1048, "Revealed Enchantment"], _
		 [1049, "Revealed Hex"], _
		 [1050, "Disciple of Energy"], _
		 [1051, "Empathy (Koro)"], _
		 [1052, "Accumulated Pain"], _
		 [1053, "Psychic Distraction"], _
		 [1054, "Ancestors Visage"], _
		 [1055, "Recurring Insecurity"], _
		 [1056, "Kitahs Burden"], _
		 [1057, "Psychic Instability"], _
		 [1058, "Chaotic Power"], _
		 [1059, "Hex Eater Signet"], _
		 [1060, "Celestial Haste"], _
		 [1061, "Feedback"], _
		 [1062, "Arcane Larceny"], _
		 [1063, "Chaotic Ward"], _
		 [1064, "Favor of the Gods"], _
		 [1065, "Dark Aura (blessing)"], _
		 [1066, "Spoil Victor"], _
		 [1067, "Lifebane Strike"], _
		 [1068, "Bitter Chill"], _
		 [1069, "Taste of Pain"], _
		 [1070, "Defile Enchantments"], _
		 [1071, "Shivers of Dread"], _
		 [1072, "Star Servant"], _
		 [1073, "Necromancer of Grenth"], _
		 [1074, "Ritualist of Grenth"], _
		 [1075, "Vampiric Swarm"], _
		 [1076, "Blood Drinker"], _
		 [1077, "Vampiric Bite"], _
		 [1078, "Wallows Bite"], _
		 [1079, "Enfeebling Touch"], _
		 [1080, "Disciple of Ice"], _
		 [1081, "Teinais Wind"], _
		 [1082, "Shock Arrow"], _
		 [1083, "Unsteady Ground"], _
		 [1084, "Sliver Armor"], _
		 [1085, "Ash Blast"], _
		 [1086, "Dragons Stomp"], _
		 [1087, "Unnatural Resistance"], _
		 [1088, "Second Wind"], _
		 [1089, "Cloak of Faith"], _
		 [1090, "Smoldering Embers"], _
		 [1091, "Double Dragon"], _
		 [1092, "Disciple of the Air"], _
		 [1093, "Teinais Heat"], _
		 [1094, "Breath of Fire"], _
		 [1095, "Star Burst"], _
		 [1096, "Glyph of Essence"], _
		 [1097, "Teinais Prison"], _
		 [1098, "Mirror of Ice"], _
		 [1099, "Teinais Crystals"], _
		 [1100, "Celestial Storm"], _
		 [1101, "Monk of Dwayna"], _
		 [1102, "Aura of the Grove"], _
		 [1103, "Cathedral Collapse"], _
		 [1104, "Miasma"], _
		 [1105, "Acid Trap"], _
		 [1106, "Shield of Saint Viktor"], _
		 [1107, "Urn of Saint Viktor: Level 1"], _
		 [1108, "Urn of Saint Viktor: Level 2"], _
		 [1109, "Urn of Saint Viktor: Level 3"], _
		 [1110, "Urn of Saint Viktor: Level 4"], _
		 [1111, "Urn of Saint Viktor: Level 5"], _
		 [1112, "Aura of Light"], _
		 [1113, "Kirins Wrath"], _
		 [1114, "Spirit Bond"], _
		 [1115, "Air of Enchantment"], _
		 [1116, "Warriors Might"], _
		 [1117, "Heavens Delight"], _
		 [1118, "Healing Burst"], _
		 [1119, "Kareis Healing Circle"], _
		 [1120, "Jameis Gaze"], _
		 [1121, "Gift of Health"], _
		 [1122, "Battle Fervor"], _
		 [1123, "Life Sheath"], _
		 [1124, "Star Shine"], _
		 [1125, "Disciple of Fire"], _
		 [1126, "Empathic Removal"], _
		 [1127, "Warrior of Balthazar"], _
		 [1128, "Resurrection Chant"], _
		 [1129, "Word of Censure"], _
		 [1130, "Spear of Light"], _
		 [1131, "Stonesoul Strike"], _
		 [1132, "Shielding Branches"], _
		 [1133, "Drunken Blow"], _
		 [1134, "Leviathans Sweep"], _
		 [1135, "Jaizhenju Strike"], _
		 [1136, "Penetrating Chop"], _
		 [1137, "Yeti Smash"], _
		 [1138, "Disciple of the Earth"], _
		 [1139, "Ranger of Melandru"], _
		 [1140, "Storm of Swords"], _
		 [1141, "You Will Die"], _
		 [1142, "Auspicious Parry"], _
		 [1143, "Strength of the Oak"], _
		 [1144, "Silverwing Slash"], _
		 [1145, "Destroy Enchantment"], _
		 [1146, "Shove"], _
		 [1147, "Base Defense"], _
		 [1148, "Carrier Defense"], _
		 [1149, "The Chalice of Corruption"], _
		 [1151, "Song of the Mists"], _
		 [1152, "Demonic Agility"], _
		 [1153, "Blessing of the Kirin"], _
		 [1154, "Emperor Degen"], _
		 [1155, "Juggernaut Toss"], _
		 [1156, "Aura of the Juggernaut"], _
		 [1157, "Star Shards"], _
		 [1172, "Turtle Shell"], _
		 [1173, "Exposed Underbelly"], _
		 [1174, "Cathedral Collapse"], _
		 [1175, "Blood of zu Heltzer"], _
		 [1176, "Afflicted Soul Explosion"], _
		 [1177, "Invincibility"], _
		 [1178, "Last Stand"], _
		 [1179, "Dark Chain Lightning"], _
		 [1180, "Seadragon Health Trigger"], _
		 [1181, "Corrupted Breath"], _
		 [1182, "Renewing Corruption"], _
		 [1183, "Corrupted Dragon Spores"], _
		 [1184, "Corrupted Dragon Scales"], _
		 [1185, "Construct Possession"], _
		 [1186, "Siege Turtle Attack (The Eternal Grove)"], _
		 [1187, "Siege Turtle Attack (Fort Aspenwood)"], _
		 [1188, "Siege Turtle Attack (Gyala Hatchery)"], _
		 [1189, "Of Royal Blood"], _
		 [1190, "Passage to Tahnnakai"], _
		 [1191, "Sundering Attack"], _
		 [1192, "Zojuns Shot"], _
		 [1193, "Consume Spirit"], _
		 [1194, "Predatory Bond"], _
		 [1195, "Heal as One"], _
		 [1196, "Zojuns Haste"], _
		 [1197, "Needling Shot"], _
		 [1198, "Broad Head Arrow"], _
		 [1199, "Glass Arrows"], _
		 [1200, "Archers Signet"], _
		 [1201, "Savage Pounce"], _
		 [1202, "Enraged Lunge"], _
		 [1203, "Bestial Mauling"], _
		 [1204, "Energy Drain (effect)"], _
		 [1205, "Poisonous Bite"], _
		 [1206, "Pounce"], _
		 [1207, "Celestial Stance"], _
		 [1208, "Sheer Exhaustion"], _
		 [1209, "Bestial Fury"], _
		 [1210, "Life Drain"], _
		 [1211, "Vipers Nest"], _
		 [1212, "Equinox"], _
		 [1213, "Tranquility"], _
		 [1214, "Acute Weakness"], _
		 [1215, "Clamor of Souls"], _
		 [1217, "Ritual Lord"], _
		 [1218, "Cruel Was Daoshen"], _
		 [1219, "Protective Was Kaolai"], _
		 [1220, "Attuned Was Songkai"], _
		 [1221, "Resilient Was Xiko"], _
		 [1222, "Lively Was Naomei"], _
		 [1223, "Anguished Was Lingwah"], _
		 [1224, "Draw Spirit"], _
		 [1225, "Channeled Strike"], _
		 [1226, "Spirit Boon Strike"], _
		 [1227, "Essence Strike"], _
		 [1228, "Spirit Siphon"], _
		 [1229, "Explosive Growth"], _
		 [1230, "Boon of Creation"], _
		 [1231, "Spirit Channeling"], _
		 [1232, "Armor of Unfeeling"], _
		 [1233, "Soothing Memories"], _
		 [1234, "Mend Body and Soul"], _
		 [1235, "Dulled Weapon"], _
		 [1236, "Binding Chains"], _
		 [1237, "Painful Bond"], _
		 [1238, "Signet of Creation"], _
		 [1239, "Signet of Spirits"], _
		 [1240, "Soul Twisting"], _
		 [1241, "Celestial Summoning"], _
		 [1242, "Archemorus Strike (Celestial Summoning)"], _
		 [1243, "Shield of Saint Viktor (Celestial Summoning)"], _
		 [1244, "Ghostly Haste"], _
		 [1245, "Gaze from Beyond"], _
		 [1246, "Ancestors Rage"], _
		 [1247, "Pain"], _
		 [1248, "Pain (attack)"], _
		 [1249, "Displacement"], _
		 [1250, "Preservation"], _
		 [1251, "Life"], _
		 [1252, "Earthbind"], _
		 [1253, "Bloodsong"], _
		 [1254, "Bloodsong (attack)"], _
		 [1255, "Wanderlust"], _
		 [1256, "Wanderlust (attack)"], _
		 [1257, "Spirit Light Weapon"], _
		 [1258, "Brutal Weapon"], _
		 [1259, "Guided Weapon"], _
		 [1260, "Meekness"], _
		 [1261, "Frigid Armor"], _
		 [1262, "Healing Ring"], _
		 [1263, "Renew Life"], _
		 [1264, "Doom"], _
		 [1265, "Wielders Boon"], _
		 [1266, "Soothing"], _
		 [1267, "Vital Weapon"], _
		 [1268, "Weapon of Quickening"], _
		 [1269, "Signet of Rage"], _
		 [1270, "Fingers of Chaos"], _
		 [1271, "Echoing Banishment"], _
		 [1272, "Suicidal Impulse"], _
		 [1273, "Impossible Odds"], _
		 [1274, "Battle Scars"], _
		 [1275, "Riposting Shadows"], _
		 [1276, "Meditation of the Reaper"], _
		 [1277, "Battle Cry"], _
		 [1278, "Elemental Defense Zone"], _
		 [1279, "Melee Defense Zone"], _
		 [1280, "Blessed Water"], _
		 [1281, "Defiled Water"], _
		 [1282, "Stone Spores"], _
		 [1283, "Turret Arrow"], _
		 [1284, "Blood Flower (skill)"], _
		 [1285, "Fire Flower (skill)"], _
		 [1286, "Poison Arrow (flower)"], _
		 [1287, "Haiju Lagoon Water"], _
		 [1288, "Aspect of Exhaustion"], _
		 [1289, "Aspect of Exposure"], _
		 [1290, "Aspect of Surrender"], _
		 [1291, "Aspect of Death"], _
		 [1292, "Aspect of Soothing"], _
		 [1293, "Aspect of Pain"], _
		 [1294, "Aspect of Lethargy"], _
		 [1295, "Aspect of Depletion (energy loss)"], _
		 [1296, "Aspect of Failure"], _
		 [1297, "Aspect of Shadows"], _
		 [1298, "Scorpion Aspect"], _
		 [1299, "Aspect of Fear"], _
		 [1300, "Aspect of Depletion (energy depletion damage)"], _
		 [1301, "Aspect of Decay"], _
		 [1302, "Aspect of Torment"], _
		 [1303, "Nightmare Aspect"], _
		 [1304, "Spiked Coral"], _
		 [1305, "Shielding Urn (skill)"], _
		 [1306, "Extensive Plague Exposure"], _
		 [1307, "Forests Binding"], _
		 [1308, "Exploding Spores"], _
		 [1309, "Suicide Energy"], _
		 [1310, "Suicide Health"], _
		 [1311, "Nightmare Refuge"], _
		 [1312, "Oni Health Lock"], _
		 [1313, "Oni Shadow Health Lock"], _
		 [1314, "Signet of Attainment"], _
		 [1315, "Rage of the Sea"], _
		 [1316, "Meditation of the Reaper"], _
		 [1318, "Fireball (obelisk)"], _
		 [1319, "Final Thrust"], _
		 [1323, "Sugar Rush (medium)"], _
		 [1324, "Torment Slash"], _
		 [1325, "Spirit of the Festival"], _
		 [1326, "Trade Winds"], _
		 [1327, "Dragon Blast"], _
		 [1328, "Imperial Majesty"], _
		 [1329, "Monster doesnt get death penalty"], _
		 [1330, "Twisted Spikes"], _
		 [1331, "Marble Trap"], _
		 [1332, "Shadow Tripwire"], _
		 [1333, "Extend Conditions"], _
		 [1334, "Hypochondria"], _
		 [1335, "Wastrels Demise"], _
		 [1336, "Spiritual Pain"], _
		 [1337, "Drain Delusions"], _
		 [1338, "Persistence of Memory"], _
		 [1339, "Symbols of Inspiration"], _
		 [1340, "Symbolic Celerity"], _
		 [1341, "Frustration"], _
		 [1342, "Tease"], _
		 [1343, "Ether Phantom"], _
		 [1344, "Web of Disruption"], _
		 [1345, "Enchanters Conundrum"], _
		 [1346, "Signet of Illusions"], _
		 [1347, "Discharge Enchantment"], _
		 [1348, "Hex Eater Vortex"], _
		 [1349, "Mirror of Disenchantment"], _
		 [1350, "Simple Thievery"], _
		 [1351, "Animate Shambling Horror"], _
		 [1352, "Order of Undeath"], _
		 [1353, "Putrid Flesh"], _
		 [1354, "Feast for the Dead"], _
		 [1355, "Jagged Bones"], _
		 [1356, "Contagion"], _
		 [1357, "Bloodletting"], _
		 [1358, "Ulcerous Lungs"], _
		 [1359, "Pain of Disenchantment"], _
		 [1360, "Mark of Fury"], _
		 [1361, "Recurring Scourge"], _
		 [1362, "Corrupt Enchantment"], _
		 [1363, "Signet of Sorrow"], _
		 [1364, "Signet of Suffering"], _
		 [1365, "Signet of Lost Souls"], _
		 [1366, "Well of Darkness"], _
		 [1367, "Blinding Surge"], _
		 [1368, "Chilling Winds"], _
		 [1369, "Lightning Bolt"], _
		 [1370, "Storm Djinns Haste"], _
		 [1371, "Stone Striker"], _
		 [1372, "Sandstorm"], _
		 [1373, "Stone Sheath"], _
		 [1374, "Ebon Hawk"], _
		 [1375, "Stoneflesh Aura"], _
		 [1376, "Glyph of Restoration"], _
		 [1377, "Ether Prism"], _
		 [1378, "Master of Magic"], _
		 [1379, "Glowing Gaze"], _
		 [1380, "Savannah Heat"], _
		 [1381, "Flame Djinns Haste"], _
		 [1382, "Freezing Gust"], _
		 [1383, "Rocky Ground"], _
		 [1384, "Sulfurous Haze"], _
		 [1385, "Siege Attack"], _
		 [1386, "Sentry Trap (skill)"], _
		 [1387, "Caltrops (monster)"], _
		 [1388, "Sacred Branch"], _
		 [1389, "Light of Seborhin"], _
		 [1390, "Judges Intervention"], _
		 [1391, "Supportive Spirit"], _
		 [1392, "Watchful Healing"], _
		 [1393, "Healers Boon"], _
		 [1394, "Healers Covenant"], _
		 [1395, "Balthazars Pendulum"], _
		 [1396, "Words of Comfort"], _
		 [1397, "Light of Deliverance"], _
		 [1398, "Scourge Enchantment"], _
		 [1399, "Shield of Absorption"], _
		 [1400, "Reversal of Damage"], _
		 [1401, "Mending Touch"], _
		 [1402, "Critical Chop"], _
		 [1403, "Agonizing Chop"], _
		 [1404, "Flail"], _
		 [1405, "Charging Strike"], _
		 [1406, "Headbutt"], _
		 [1407, "Lions Comfort"], _
		 [1408, "Rage of the Ntouka"], _
		 [1409, "Mokele Smash"], _
		 [1410, "Overbearing Smash"], _
		 [1411, "Signet of Stamina"], _
		 [1412, "Youre All Alone"], _
		 [1413, "Burst of Aggression"], _
		 [1414, "Enraging Charge"], _
		 [1415, "Crippling Slash"], _
		 [1416, "Barbarous Slice"], _
		 [1417, "Vial of Purified Water"], _
		 [1418, "Disarm Trap"], _
		 [1419, "Feeding Frenzy (skill)"], _
		 [1420, "Quake Of Ahdashim"], _
		 [1421, "Shield of Madness"], _
		 [1422, "Create Light of Seborhin"], _
		 [1423, "Unlock Cell"], _
		 [1424, "Stop Pump"], _
		 [1426, "Shield of Madness"], _
		 [1427, "Shield of Ether"], _
		 [1428, "Shield of Iron"], _
		 [1429, "Shield of Strength"], _
		 [1430, "Wave of Torment"], _
		 [1433, "Corsairs Net"], _
		 [1434, "Corrupted Healing"], _
		 [1435, "Corrupted Roots"], _
		 [1436, "Corrupted Strength"], _
		 [1437, "Desert Wurm (disguise)"], _
		 [1438, "Junundu Feast"], _
		 [1439, "Junundu Strike"], _
		 [1440, "Junundu Smash"], _
		 [1441, "Junundu Siege"], _
		 [1442, "Junundu Tunnel"], _
		 [1443, "Leave Junundu"], _
		 [1444, "Summon Torment"], _
		 [1445, "Signal Flare"], _
		 [1446, "The Elixir of Strength"], _
		 [1447, "Ehzah from Above"], _
		 [1449, "Last Rites of Torment"], _
		 [1450, "Abaddons Conspiracy"], _
		 [1451, "Hungers Bite"], _
		 [1452, "From Hell"], _
		 [1453, "Pains Embrace"], _
		 [1454, "Call to the Torment"], _
		 [1455, "Command of Torment"], _
		 [1456, "Abaddons Favor"], _
		 [1457, "Abaddons Chosen"], _
		 [1458, "Enchantment Collapse"], _
		 [1459, "Call of Sacrifice"], _
		 [1460, "Enemies Must Die"], _
		 [1461, "Earth Vortex"], _
		 [1462, "Frost Vortex"], _
		 [1463, "Rough Current"], _
		 [1464, "Turbulent Flow"], _
		 [1465, "Prepared Shot"], _
		 [1466, "Burning Arrow"], _
		 [1467, "Arcing Shot"], _
		 [1468, "Strike as One"], _
		 [1469, "Crossfire"], _
		 [1470, "Barbed Arrows"], _
		 [1471, "Scavengers Focus"], _
		 [1472, "Toxicity"], _
		 [1473, "Quicksand"], _
		 [1474, "Storms Embrace"], _
		 [1475, "Trappers Speed"], _
		 [1476, "Tripwire"], _
		 [1477, "Kournan Guardsman"], _
		 [1478, "Renewing Surge"], _
		 [1479, "Offering of Spirit"], _
		 [1480, "Spirits Gift"], _
		 [1481, "Death Pact Signet"], _
		 [1482, "Reclaim Essence"], _
		 [1483, "Banishing Strike"], _
		 [1484, "Mystic Sweep"], _
		 [1485, "Eremites Attack"], _
		 [1486, "Reap Impurities"], _
		 [1487, "Twin Moon Sweep"], _
		 [1488, "Victorious Sweep"], _
		 [1489, "Irresistible Sweep"], _
		 [1490, "Pious Assault"], _
		 [1491, "Mystic Twister"], _
		 [1492, "REMOVE (Wind Prayers skill)"], _
		 [1493, "Grenths Fingers"], _
		 [1494, "REMOVE (Boon of the Gods)"], _
		 [1495, "Aura of Thorns"], _
		 [1496, "Balthazars Rage"], _
		 [1497, "Dust Cloak"], _
		 [1498, "Staggering Force"], _
		 [1499, "Pious Renewal"], _
		 [1500, "Mirage Cloak"], _
		 [1501, "REMOVE (Balthazars Rage)"], _
		 [1502, "Arcane Zeal"], _
		 [1503, "Mystic Vigor"], _
		 [1504, "Watchful Intervention"], _
		 [1505, "Vow of Piety"], _
		 [1506, "Vital Boon"], _
		 [1507, "Heart of Holy Flame"], _
		 [1508, "Extend Enchantments"], _
		 [1509, "Faithful Intervention"], _
		 [1510, "Sand Shards"], _
		 [1511, "Intimidating Aura (beta version)"], _
		 [1512, "Lyssas Haste"], _
		 [1513, "Guiding Hands"], _
		 [1514, "Fleeting Stability"], _
		 [1515, "Armor of Sanctity"], _
		 [1516, "Mystic Regeneration"], _
		 [1517, "Vow of Silence"], _
		 [1518, "Avatar of Balthazar"], _
		 [1519, "Avatar of Dwayna"], _
		 [1520, "Avatar of Grenth"], _
		 [1521, "Avatar of Lyssa"], _
		 [1522, "Avatar of Melandru"], _
		 [1523, "Meditation"], _
		 [1524, "Eremites Zeal"], _
		 [1525, "Natural Healing"], _
		 [1526, "Imbue Health"], _
		 [1527, "Mystic Healing"], _
		 [1528, "Dwaynas Touch"], _
		 [1529, "Pious Restoration"], _
		 [1530, "Signet of Pious Light"], _
		 [1531, "Intimidating Aura"], _
		 [1532, "Mystic Sandstorm"], _
		 [1533, "Winds of Disenchantment"], _
		 [1534, "Rending Touch"], _
		 [1535, "Crippling Sweep"], _
		 [1536, "Wounding Strike"], _
		 [1537, "Wearying Strike"], _
		 [1538, "Lyssas Assault"], _
		 [1539, "Chilling Victory"], _
		 [1540, "Conviction"], _
		 [1541, "Enchanted Haste"], _
		 [1542, "Pious Concentration"], _
		 [1543, "Pious Haste"], _
		 [1544, "Whirling Charge"], _
		 [1545, "Test of Faith"], _
		 [1546, "Blazing Spear"], _
		 [1547, "Mighty Throw"], _
		 [1548, "Cruel Spear"], _
		 [1549, "Harriers Toss"], _
		 [1550, "Unblockable Throw"], _
		 [1551, "Spear of Lightning"], _
		 [1552, "Wearying Spear"], _
		 [1553, "Anthem of Fury"], _
		 [1554, "Crippling Anthem"], _
		 [1555, "Defensive Anthem"], _
		 [1556, "Godspeed"], _
		 [1557, "Anthem of Flame"], _
		 [1558, "Go for the Eyes"], _
		 [1559, "Anthem of Envy"], _
		 [1560, "Song of Power"], _
		 [1561, "Zealous Anthem"], _
		 [1562, "Aria of Zeal"], _
		 [1563, "Lyric of Zeal"], _
		 [1564, "Ballad of Restoration"], _
		 [1565, "Chorus of Restoration"], _
		 [1566, "Aria of Restoration"], _
		 [1567, "Song of Concentration"], _
		 [1568, "Anthem of Guidance"], _
		 [1569, "Energizing Chorus"], _
		 [1570, "Song of Purification"], _
		 [1571, "Hexbreaker Aria"], _
		 [1572, "Brace Yourself"], _
		 [1573, "Awe"], _
		 [1574, "Enduring Harmony"], _
		 [1575, "Blazing Finale"], _
		 [1576, "Burning Refrain"], _
		 [1577, "Finale of Restoration"], _
		 [1578, "Mending Refrain"], _
		 [1579, "Purifying Finale"], _
		 [1580, "Bladeturn Refrain"], _
		 [1581, "Glowing Signet"], _
		 [1582, "REMOVE (Leadership skill)"], _
		 [1583, "Leaders Zeal"], _
		 [1584, "Leaders Comfort"], _
		 [1585, "Signet of Synergy"], _
		 [1586, "Angelic Protection"], _
		 [1587, "Angelic Bond"], _
		 [1588, "Cautery Signet"], _
		 [1589, "Stand Your Ground"], _
		 [1590, "Lead the Way"], _
		 [1591, "Make Haste"], _
		 [1592, "We Shall Return"], _
		 [1593, "Never Give Up"], _
		 [1594, "Help Me"], _
		 [1595, "Fall Back"], _
		 [1596, "Incoming"], _
		 [1597, "Theyre on Fire"], _
		 [1598, "Never Surrender"], _
		 [1599, "Its Just a Flesh Wound."], _
		 [1600, "Barbed Spear"], _
		 [1601, "Vicious Attack"], _
		 [1602, "Stunning Strike"], _
		 [1603, "Merciless Spear"], _
		 [1604, "Disrupting Throw"], _
		 [1605, "Wild Throw"], _
		 [1606, "Curse of the Staff of the Mists"], _
		 [1607, "Aura of the Staff of the Mists"], _
		 [1608, "Power of the Staff of the Mists"], _
		 [1609, "Scepter of Ether"], _
		 [1610, "Summoning of the Scepter"], _
		 [1611, "Rise From Your Grave"], _
		 [1612, "Sugar Rush (long)"], _
		 [1613, "Corsair (disguise)"], _
		 [1614, "REMOVE (Queen Wail)"], _
		 [1614, "REMOVE (Queen Armor)"], _
		 [1616, "Queen Heal"], _
		 [1617, "Queen Wail"], _
		 [1618, "Queen Armor"], _
		 [1619, "Queen Bite"], _
		 [1620, "Queen Thump"], _
		 [1621, "Queen Siege"], _
		 [1622, "Junundu Tunnel (monster skill)"], _
		 [1623, "Skin of Stone"], _
		 [1624, "Dervish of the Mystic"], _
		 [1625, "Dervish of the Wind"], _
		 [1626, "Paragon of Leadership"], _
		 [1627, "Paragon of Motivation"], _
		 [1628, "Dervish of the Blade"], _
		 [1629, "Paragon of Command"], _
		 [1630, "Paragon of the Spear"], _
		 [1631, "Dervish of the Earth"], _
		 [1632, "Master of DPS"], _
		 [1633, "Malicious Strike"], _
		 [1634, "Shattering Assault"], _
		 [1635, "Golden Skull Strike"], _
		 [1636, "Black Spider Strike"], _
		 [1637, "Golden Fox Strike"], _
		 [1638, "Deadly Haste"], _
		 [1639, "Assassins Remedy"], _
		 [1640, "Foxs Promise"], _
		 [1641, "Feigned Neutrality"], _
		 [1642, "Hidden Caltrops"], _
		 [1643, "Assault Enchantments"], _
		 [1644, "Wastrels Collapse"], _
		 [1645, "Lift Enchantment"], _
		 [1646, "Augury of Death"], _
		 [1647, "Signet of Toxic Shock"], _
		 [1648, "Signet of Twilight"], _
		 [1649, "Way of the Assassin"], _
		 [1650, "Shadow Walk"], _
		 [1651, "Deaths Retreat"], _
		 [1652, "Shadow Prison"], _
		 [1653, "Swap"], _
		 [1654, "Shadow Meld"], _
		 [1655, "Price of Pride"], _
		 [1656, "Air of Disenchantment"], _
		 [1657, "Signet of Clumsiness"], _
		 [1658, "Symbolic Posture"], _
		 [1659, "Toxic Chill"], _
		 [1660, "Well of Silence"], _
		 [1661, "Glowstone"], _
		 [1662, "Mind Blast"], _
		 [1663, "Elemental Flame"], _
		 [1664, "Invoke Lightning"], _
		 [1665, "Battle Cry"], _
		 [1666, "Mending Shrine Bonus"], _
		 [1667, "Energy Shrine Bonus"], _
		 [1668, "Northern Health Shrine Bonus"], _
		 [1669, "Southern Health Shrine Bonus"], _
		 [1670, "Siege Attack (Bombardment)"], _
		 [1671, "Curse of Silence"], _
		 [1672, "To the Pain (Hero Battles)"], _
		 [1673, "Edge of Reason"], _
		 [1674, "Depths of Madness (environment effect)"], _
		 [1675, "Cower in Fear"], _
		 [1676, "Dreadful Pain"], _
		 [1677, "Veiled Nightmare"], _
		 [1678, "Base Protection"], _
		 [1679, "Kournan Siege Flame"], _
		 [1680, "Drake Skin"], _
		 [1681, "Skale Vigor"], _
		 [1682, "Pahnai Salad (item effect)"], _
		 [1683, "Pensive Guardian"], _
		 [1684, "Scribes Insight"], _
		 [1685, "Holy Haste"], _
		 [1686, "Glimmer of Light"], _
		 [1687, "Zealous Benediction"], _
		 [1688, "Defenders Zeal"], _
		 [1689, "Signet of Mystic Wrath"], _
		 [1690, "Signet of Removal"], _
		 [1691, "Dismiss Condition"], _
		 [1692, "Divert Hexes"], _
		 [1693, "Counterattack"], _
		 [1694, "Magehunter Strike"], _
		 [1695, "Soldiers Strike"], _
		 [1696, "Decapitate"], _
		 [1697, "Magehunters Smash"], _
		 [1698, "Soldiers Stance"], _
		 [1699, "Soldiers Defense"], _
		 [1700, "Frenzied Defense"], _
		 [1701, "Steady Stance"], _
		 [1702, "Steelfang Slash"], _
		 [1703, "Sunspear Battle Call"], _
		 [1704, "Untouchable"], _
		 [1705, "Earth Shattering Blow"], _
		 [1706, "Corrupt Power"], _
		 [1707, "Words of Madness (Qwytzylkak)"], _
		 [1708, "Gaze of MoavuKaal"], _
		 [1709, "Presence of the Skale Lord"], _
		 [1710, "Madness Dart"], _
		 [1711, "The Apocrypha is changing to another form"], _
		 [1715, "Reform Carvings"], _
		 [1717, "Sunspear Siege"], _
		 [1718, "Soul Torture"], _
		 [1719, "Screaming Shot"], _
		 [1720, "Keen Arrow"], _
		 [1721, "Rampage as One"], _
		 [1722, "Forked Arrow"], _
		 [1723, "Disrupting Accuracy"], _
		 [1724, "Experts Dexterity"], _
		 [1725, "Roaring Winds"], _
		 [1726, "Magebane Shot"], _
		 [1727, "Natural Stride"], _
		 [1728, "Hekets Rampage"], _
		 [1729, "Smoke Trap"], _
		 [1730, "Infuriating Heat"], _
		 [1731, "Vocal Was Sogolon"], _
		 [1732, "Destructive Was Glaive"], _
		 [1733, "Wielders Strike"], _
		 [1734, "Gaze of Fury"], _
		 [1735, "Gaze of Fury (attack)"], _
		 [1736, "Spirits Strength"], _
		 [1737, "Wielders Zeal"], _
		 [1738, "Sight Beyond Sight"], _
		 [1739, "Renewing Memories"], _
		 [1740, "Wielders Remedy"], _
		 [1741, "Ghostmirror Light"], _
		 [1742, "Signet of Ghostly Might"], _
		 [1743, "Signet of Binding"], _
		 [1744, "Caretakers Charge"], _
		 [1745, "Anguish"], _
		 [1746, "Anguish (attack)"], _
		 [1747, "Empowerment"], _
		 [1748, "Recovery"], _
		 [1749, "Weapon of Fury"], _
		 [1750, "Xinraes Weapon"], _
		 [1751, "Warmongers Weapon"], _
		 [1752, "Weapon of Remedy"], _
		 [1753, "Rending Sweep"], _
		 [1754, "Onslaught"], _
		 [1755, "Mystic Corruption"], _
		 [1756, "Grenths Grasp"], _
		 [1757, "Veil of Thorns"], _
		 [1758, "Harriers Grasp"], _
		 [1759, "Vow of Strength"], _
		 [1760, "Ebon Dust Aura"], _
		 [1761, "Zealous Vow"], _
		 [1762, "Heart of Fury"], _
		 [1763, "Zealous Renewal"], _
		 [1764, "Attackers Insight"], _
		 [1765, "Rending Aura"], _
		 [1766, "Featherfoot Grace"], _
		 [1767, "Reapers Sweep"], _
		 [1768, "Harriers Haste"], _
		 [1769, "Focused Anger"], _
		 [1770, "Natural Temper"], _
		 [1771, "Song of Restoration"], _
		 [1772, "Lyric of Purification"], _
		 [1773, "Soldiers Fury"], _
		 [1774, "Aggressive Refrain"], _
		 [1775, "Energizing Finale"], _
		 [1776, "Signet of Aggression"], _
		 [1777, "Remedy Signet"], _
		 [1778, "Signet of Return"], _
		 [1779, "Make Your Time"], _
		 [1780, "Cant Touch This"], _
		 [1781, "Find Their Weakness"], _
		 [1782, "The Power Is Yours"], _
		 [1783, "Slayers Spear"], _
		 [1784, "Swift Javelin"], _
		 [1785, "Natures Speed"], _
		 [1786, "Weapon of Mastery"], _
		 [1787, "Accelerated Growth"], _
		 [1788, "Forge the Way"], _
		 [1789, "Anthem of Aggression"], _
		 [1790, "Skale Hunt"], _
		 [1791, "Mandragor Hunt"], _
		 [1792, "Skree Battle"], _
		 [1793, "Insect Hunt"], _
		 [1794, "Corsair Bounty"], _
		 [1795, "Plant Hunt"], _
		 [1796, "Undead Hunt"], _
		 [1797, "Eternal Suffering"], _
		 [1798, "Eternal Suffering"], _
		 [1799, "Eternal Suffering"], _
		 [1800, "Eternal Languor"], _
		 [1801, "Eternal Languor"], _
		 [1802, "Eternal Languor"], _
		 [1803, "Eternal Lethargy"], _
		 [1804, "Eternal Lethargy"], _
		 [1805, "Eternal Lethargy"], _
		 [1808, "Thirst of the Drought"], _
		 [1809, "Thirst of the Drought"], _
		 [1810, "Thirst of the Drought"], _
		 [1811, "Thirst of the Drought"], _
		 [1812, "Thirst of the Drought"], _
		 [1813, "Lightbringer"], _
		 [1814, "Lightbringers Gaze"], _
		 [1815, "Lightbringer Signet"], _
		 [1816, "Sunspear Rebirth Signet"], _
		 [1817, "Wisdom"], _
		 [1818, "Maddened Strike"], _
		 [1819, "Maddened Stance"], _
		 [1820, "Spirit Form (Remains of Sahlahja)"], _
		 [1821, "Gods Blessing"], _
		 [1822, "Monster Hunt"], _
		 [1823, "Monster Hunt"], _
		 [1824, "Monster Hunt"], _
		 [1825, "Monster Hunt"], _
		 [1826, "Elemental Hunt"], _
		 [1827, "Elemental Hunt"], _
		 [1828, "Skree Battle"], _
		 [1829, "Insect Hunt"], _
		 [1830, "Insect Hunt"], _
		 [1831, "Demon Hunt"], _
		 [1832, "Minotaur Hunt"], _
		 [1833, "Plant Hunt"], _
		 [1834, "Plant Hunt"], _
		 [1835, "Skale Hunt"], _
		 [1836, "Skale Hunt"], _
		 [1837, "Heket Hunt"], _
		 [1838, "Heket Hunt"], _
		 [1839, "Kournan Bounty"], _
		 [1840, "Mandragor Hunt"], _
		 [1841, "Mandragor Hunt"], _
		 [1842, "Corsair Bounty"], _
		 [1843, "Kournan Bounty"], _
		 [1844, "Dhuum Battle"], _
		 [1845, "Menzies Battle"], _
		 [1846, "Elemental Hunt"], _
		 [1847, "Monolith Hunt"], _
		 [1848, "Monolith Hunt"], _
		 [1849, "Margonite Battle"], _
		 [1850, "Monster Hunt"], _
		 [1851, "Titan Hunt"], _
		 [1852, "Mandragor Hunt"], _
		 [1853, "Giant Hunt"], _
		 [1854, "Undead Hunt"], _
		 [1855, "Kournan Siege"], _
		 [1856, "Lose your Head"], _
		 [1857, "Wandering Mind"], _
		 [1859, "Altar Buff"], _
		 [1860, "Sugar Rush (short)"], _
		 [1861, "Choking Breath"], _
		 [1862, "Junundu Bite"], _
		 [1863, "Blinding Breath"], _
		 [1864, "Burning Breath"], _
		 [1865, "Junundu Wail"], _
		 [1866, "Capture Point"], _
		 [1867, "Approaching the Vortex"], _
		 [1871, "Avatar of Sweetness"], _
		 [1873, "Corrupted Lands"], _
		 [1875, "Words of Madness"], _
		 [1876, "Unknown Junundu Ability"], _
		 [1880, "Torment Slash (Smothering Tendrils)"], _
		 [1881, "Bonds of Torment"], _
		 [1882, "Shadow Smash"], _
		 [1883, "Bonds of Torment (effect)"], _
		 [1884, "Consume Torment"], _
		 [1885, "Banish Enchantment"], _
		 [1886, "Summoning Shadows"], _
		 [1887, "Lightbringers Insight"], _
		 [1889, "Repressive Energy"], _
		 [1890, "Enduring Torment"], _
		 [1891, "Shroud of Darkness"], _
		 [1892, "Demonic Miasma"], _
		 [1893, "Enraged"], _
		 [1894, "Touch of Aaaaarrrrrrggghhh"], _
		 [1895, "Wild Smash"], _
		 [1896, "Unyielding Anguish"], _
		 [1897, "Jadoths Storm of Judgment"], _
		 [1898, "Anguish Hunt"], _
		 [1899, "Avatar of Holiday Cheer"], _
		 [1900, "Side Step"], _
		 [1901, "Jack Frost"], _
		 [1902, "Avatar of Grenth (snow fighting skill)"], _
		 [1903, "Avatar of Dwayna (snow fighting skill)"], _
		 [1904, "Steady Aim"], _
		 [1905, "Rudis Red Nose"], _
		 [1910, "Charm Animal (White Mantle)"], _
		 [1911, "Volatile Charr Crystal"], _
		 [1912, "Hard mode"], _
		 [1913, "Claim Resource (Heroes Ascent)"], _
		 [1914, "Hard mode"], _
		 [1915, "Hard Mode NPC Buff"], _
		 [1916, "Sugar Jolt (short)"], _
		 [1917, "Rollerbeetle Racer"], _
		 [1918, "Ram"], _
		 [1919, "Harden Shell"], _
		 [1920, "Rollerbeetle Dash"], _
		 [1921, "Super Rollerbeetle"], _
		 [1922, "Rollerbeetle Echo"], _
		 [1923, "Distracting Lunge"], _
		 [1924, "Rollerbeetle Blast"], _
		 [1925, "Spit Rocks"], _
		 [1926, "Lunar Blessing"], _
		 [1927, "Lucky Aura"], _
		 [1928, "Spiritual Possession"], _
		 [1929, "Water"], _
		 [1930, "Pig Form"], _
		 [1931, "Beetle Metamorphosis"], _
		 [1933, "Sugar Jolt (long)"], _
		 [1934, "Golden Egg (skill)"], _
		 [1935, "Torturous Embers"], _
		 [1936, "Test Buff"], _
		 [1937, "Infernal Rage"], _
		 [1938, "Putrid Flames"], _
		 [1939, "Shroud of Ash"], _
		 [1940, "Flame Call"], _
		 [1941, "Torturers Inferno"], _
		 [1942, "Whirling Fires"], _
		 [1943, "Charr Siege Attack (What Must Be Done)"], _
		 [1944, "Charr Siege Attack (Against the Charr)"], _
		 [1945, "Birthday Cupcake (skill)"], _
		 [1947, "Blessing of the Luxons"], _
		 [1948, "Shadow Sanctuary"], _
		 [1949, "Ether Nightmare"], _
		 [1950, "Signet of Corruption"], _
		 [1951, "Elemental Lord"], _
		 [1952, "Selfless Spirit"], _
		 [1953, "Triple Shot"], _
		 [1954, "Save Yourselves"], _
		 [1955, "Aura of Holy Might"], _
		 [1957, "Spear of Fury"], _
		 [1958, "Attribute Balance"], _
		 [1959, "Monster Hunt"], _
		 [1960, "Monster Hunt"], _
		 [1961, "Mandragor Hunt"], _
		 [1962, "Mandragor Hunt"], _
		 [1963, "Giant Hunt"], _
		 [1964, "Giant Hunt"], _
		 [1965, "Skree Battle"], _
		 [1966, "Skree Battle"], _
		 [1967, "Insect Hunt"], _
		 [1968, "Insect Hunt"], _
		 [1969, "Minotaur Hunt"], _
		 [1970, "Minotaur Hunt"], _
		 [1971, "Corsair Bounty"], _
		 [1972, "Corsair Bounty"], _
		 [1973, "Plant Hunt"], _
		 [1974, "Plant Hunt"], _
		 [1975, "Skale Hunt"], _
		 [1976, "Skale Hunt"], _
		 [1977, "Heket Hunt"], _
		 [1978, "Heket Hunt"], _
		 [1979, "Kournan Bounty"], _
		 [1980, "Kournan Bounty"], _
		 [1981, "Undead Hunt"], _
		 [1982, "Undead Hunt"], _
		 [1983, "Fire Dart"], _
		 [1984, "Ice Dart"], _
		 [1985, "Poison Dart"], _
		 [1986, "Vampiric Assault"], _
		 [1987, "Lotus Strike"], _
		 [1988, "Golden Fang Strike"], _
		 [1989, "Way of the Mantis"], _
		 [1990, "Falling Lotus Strike"], _
		 [1991, "Sadists Signet"], _
		 [1992, "Signet of Distraction"], _
		 [1993, "Signet of Recall"], _
		 [1994, "Power Lock"], _
		 [1995, "Waste Not, Want Not"], _
		 [1996, "Sum of All Fears"], _
		 [1997, "Withering Aura"], _
		 [1998, "Cacophony"], _
		 [1999, "Winters Embrace"], _
		 [2000, "Earthen Shackles"], _
		 [2001, "Ward of Weakness"], _
		 [2002, "Glyph of Swiftness"], _
		 [2003, "Cure Hex"], _
		 [2004, "Smite Condition"], _
		 [2005, "Smiters Boon"], _
		 [2006, "Castigation Signet"], _
		 [2007, "Purifying Veil"], _
		 [2008, "Pulverizing Smash"], _
		 [2009, "Keen Chop"], _
		 [2010, "Knee Cutter"], _
		 [2011, "Grapple"], _
		 [2012, "Radiant Scythe"], _
		 [2013, "Grenths Aura"], _
		 [2014, "Signet of Pious Restraint"], _
		 [2015, "Farmers Scythe"], _
		 [2016, "Energetic Was Lee Sa"], _
		 [2017, "Anthem of Weariness"], _
		 [2018, "Anthem of Disruption"], _
		 [2019, "Burning Ground"], _
		 [2020, "Freezing Ground"], _
		 [2021, "Poison Ground"], _
		 [2022, "Fire Jet"], _
		 [2023, "Ice Jet"], _
		 [2024, "Poison Jet"], _
		 [2025, "Lava Pool"], _
		 [2026, "Water Pool"], _
		 [2027, "Fire Spout"], _
		 [2028, "Ice Spout"], _
		 [2029, "Poison Spout"], _
		 [2030, "Dhuum Battle"], _
		 [2031, "Dhuum Battle"], _
		 [2032, "Elemental Hunt"], _
		 [2033, "Elemental Hunt"], _
		 [2034, "Monolith Hunt"], _
		 [2035, "Monolith Hunt"], _
		 [2036, "Margonite Battle"], _
		 [2037, "Margonite Battle"], _
		 [2038, "Menzies Battle"], _
		 [2039, "Menzies Battle"], _
		 [2040, "Anguish Hunt"], _
		 [2041, "Titan Hunt"], _
		 [2042, "Titan Hunt"], _
		 [2043, "Monster Hunt"], _
		 [2044, "Monster Hunt"], _
		 [2045, "Sarcophagus Spores"], _
		 [2046, "Exploding Barrel"], _
		 [2047, "Greater Hard Mode NPC Buff"], _
		 [2048, "Fire Boulder"], _
		 [2049, "Dire Snowball"], _
		 [2050, "Boulder"], _
		 [2051, "Summon Spirits"], _
		 [2052, "Shadow Fang"], _
		 [2053, "Calculated Risk"], _
		 [2054, "Shrinking Armor"], _
		 [2055, "Aneurysm"], _
		 [2056, "Wandering Eye"], _
		 [2057, "Foul Feast"], _
		 [2058, "Putrid Bile"], _
		 [2059, "Shell Shock"], _
		 [2060, "Glyph of Immolation"], _
		 [2061, "Patient Spirit"], _
		 [2062, "Healing Ribbon"], _
		 [2063, "Aura of Stability"], _
		 [2064, "Spotless Mind"], _
		 [2065, "Spotless Soul"], _
		 [2066, "Disarm"], _
		 [2067, "I Meant to Do That"], _
		 [2068, "Rapid Fire"], _
		 [2069, "Sloth Hunters Shot"], _
		 [2070, "Aura Slicer"], _
		 [2071, "Zealous Sweep"], _
		 [2072, "Pure Was Li Ming"], _
		 [2073, "Weapon of Aggression"], _
		 [2074, "Chest Thumper"], _
		 [2075, "Hasty Refrain"], _
		 [2076, "Drain Minion"], _
		 [2077, "Cracked Armor"], _
		 [2078, "Berserk"], _
		 [2079, "Fleshreavers Escape"], _
		 [2080, "Chomp"], _
		 [2081, "Twisting Jaws"], _
		 [2082, "Burning Immunity"], _
		 [2083, "Mandragors Charge"], _
		 [2084, "Rock Slide"], _
		 [2085, "Avalanche (effect)"], _
		 [2086, "Snaring Web"], _
		 [2087, "Ceiling Collapse"], _
		 [2088, "Trample"], _
		 [2089, "Wurm Bile"], _
		 [2090, "Ground Cover"], _
		 [2091, "Shadow Sanctuary"], _
		 [2092, "Ether Nightmare"], _
		 [2093, "Signet of Corruption"], _
		 [2094, "Elemental Lord"], _
		 [2095, "Selfless Spirit"], _
		 [2096, "Triple Shot"], _
		 [2097, "Save Yourselves"], _
		 [2098, "Aura of Holy Might"], _
		 [2099, "Spear of Fury"], _
		 [2100, "Summon Spirits"], _
		 [2101, "Critical Agility"], _
		 [2102, "Cry of Pain"], _
		 [2103, "Necrosis"], _
		 [2104, "Intensity"], _
		 [2105, "Seed of Life"], _
		 [2106, "Call of the Eye"], _
		 [2107, "Whirlwind Attack"], _
		 [2108, "Never Rampage Alone"], _
		 [2109, "Eternal Aura"], _
		 [2110, "Vampirism"], _
		 [2111, "Vampirism (attack)"], _
		 [2112, "Theres Nothing to Fear"], _
		 [2113, "Ursan Rage (Blood Washes Blood)"], _
		 [2114, "Ursan Strike (Blood Washes Blood)"], _
		 [2116, "Sneak Attack"], _
		 [2117, "Firebomb Explosion"], _
		 [2118, "Firebomb"], _
		 [2119, "Shield of Fire"], _
		 [2120, "Respawn"], _
		 [2121, "Marked For Death"], _
		 [2122, "Spirit World Retreat"], _
		 [2123, "Long Claws"], _
		 [2124, "Shattered Spirit"], _
		 [2125, "Spirit Roar"], _
		 [2126, "Spirit Senses"], _
		 [2127, "Unseen Aggression"], _
		 [2128, "Volfen Pounce (Curse of the Nornbear)"], _
		 [2129, "Volfen Claw (Curse of the Nornbear)"], _
		 [2131, "Volfen Bloodlust (Curse of the Nornbear)"], _
		 [2132, "Volfen Agility (Curse of the Nornbear)"], _
		 [2133, "Volfen Blessing (Curse of the Nornbear)"], _
		 [2134, "Charging Spirit"], _
		 [2135, "Trampling Ox"], _
		 [2136, "Smoke Powder Defense"], _
		 [2137, "Confusing Images"], _
		 [2138, "Hexers Vigor"], _
		 [2139, "Masochism"], _
		 [2140, "Piercing Trap"], _
		 [2141, "Companionship"], _
		 [2142, "Feral Aggression"], _
		 [2143, "Disrupting Shot"], _
		 [2144, "Volley"], _
		 [2145, "Expert Focus"], _
		 [2146, "Pious Fury"], _
		 [2147, "Crippling Victory"], _
		 [2148, "Sundering Weapon"], _
		 [2149, "Weapon of Renewal"], _
		 [2150, "Maiming Spear"], _
		 [2151, "Temporal Sheen"], _
		 [2152, "Flux Overload"], _
		 [2153, "A pool of water."], _
		 [2154, "Phase Shield (effect)"], _
		 [2155, "Phase Shield (monster skill)"], _
		 [2156, "Vitality Transfer"], _
		 [2157, "Golem Strike"], _
		 [2158, "Bloodstone Slash"], _
		 [2159, "Energy Blast (golem)"], _
		 [2160, "Chaotic Energy"], _
		 [2161, "Golem Fire Shield"], _
		 [2162, "The Way of Duty"], _
		 [2163, "The Way of Kinship"], _
		 [2164, "Diamondshard Mist (environment effect)"], _
		 [2165, "Diamondshard Grave"], _
		 [2166, "The Way of Strength"], _
		 [2167, "Diamondshard Mist"], _
		 [2168, "Raven Blessing (A Gate Too Far)"], _
		 [2170, "Raven Flight (A Gate Too Far)"], _
		 [2171, "Raven Shriek (A Gate Too Far)"], _
		 [2172, "Raven Swoop (A Gate Too Far)"], _
		 [2173, "Raven Talons (A Gate Too Far)"], _
		 [2174, "Aspect of Oak"], _
		 [2175, "Long Claws"], _
		 [2176, "Tremor"], _
		 [2177, "Rage of the Jotun"], _
		 [2178, "Thundering Roar"], _
		 [2179, "Sundering Soulcrush"], _
		 [2180, "Pyroclastic Shot"], _
		 [2181, "Explosive Force"], _
		 [2184, "Rolling Shift"], _
		 [2185, "Powder Keg Explosion"], _
		 [2186, "Signet of Deadly Corruption"], _
		 [2187, "Way of the Master"], _
		 [2188, "Defile Defenses"], _
		 [2189, "Angorodons Gaze"], _
		 [2190, "Magnetic Surge"], _
		 [2191, "Slippery Ground"], _
		 [2192, "Glowing Ice"], _
		 [2193, "Energy Blast"], _
		 [2194, "Distracting Strike"], _
		 [2195, "Symbolic Strike"], _
		 [2196, "Soldiers Speed"], _
		 [2197, "Body Blow"], _
		 [2198, "Body Shot"], _
		 [2199, "Poison Tip Signet"], _
		 [2200, "Signet of Mystic Speed"], _
		 [2201, "Shield of Force"], _
		 [2202, "Mending Grip"], _
		 [2203, "Spiritleech Aura"], _
		 [2204, "Rejuvenation"], _
		 [2205, "Agony"], _
		 [2206, "Ghostly Weapon"], _
		 [2207, "Inspirational Speech"], _
		 [2208, "Burning Shield"], _
		 [2209, "Holy Spear"], _
		 [2210, "Spear Swipe"], _
		 [2211, "Alkars Alchemical Acid"], _
		 [2212, "Light of Deldrimor"], _
		 [2213, "Ear Bite"], _
		 [2214, "Low Blow"], _
		 [2215, "Brawling Headbutt"], _
		 [2216, "Dont Trip"], _
		 [2217, "By Urals Hammer"], _
		 [2218, "Drunken Master"], _
		 [2219, "Great Dwarf Weapon"], _
		 [2220, "Great Dwarf Armor"], _
		 [2221, "Breath of the Great Dwarf"], _
		 [2222, "Snow Storm"], _
		 [2223, "Black Powder Mine"], _
		 [2224, "Summon Mursaat"], _
		 [2225, "Summon Ruby Djinn"], _
		 [2226, "Summon Ice Imp"], _
		 [2227, "Summon Naga Shaman"], _
		 [2228, "Deft Strike"], _
		 [2229, "Signet of Infection"], _
		 [2230, "Tryptophan Signet"], _
		 [2231, "Ebon Battle Standard of Courage"], _
		 [2232, "Ebon Battle Standard of Wisdom"], _
		 [2233, "Ebon Battle Standard of Honor"], _
		 [2234, "Ebon Vanguard Sniper Support"], _
		 [2235, "Ebon Vanguard Assassin Support"], _
		 [2236, "Well of Ruin"], _
		 [2237, "Atrophy"], _
		 [2238, "Spear of Redemption"], _
		 [2240, "Gelatinous Material Explosion"], _
		 [2241, "Gelatinous Corpse Consumption"], _
		 [2242, "Gelatinous Mutation"], _
		 [2243, "Gelatinous Absorption"], _
		 [2244, "Unstable Ooze Explosion"], _
		 [2245, "Golem Shrapnel"], _
		 [2246, "Unstable Aura"], _
		 [2247, "Unstable Pulse"], _
		 [2248, "Polymock Power Drain"], _
		 [2249, "Polymock Block"], _
		 [2250, "Polymock Glyph of Concentration"], _
		 [2251, "Polymock Ether Signet"], _
		 [2252, "Polymock Glyph of Power"], _
		 [2253, "Polymock Overload"], _
		 [2254, "Polymock Glyph Destabilization"], _
		 [2255, "Polymock Mind Wreck"], _
		 [2256, "Order of Unholy Vigor"], _
		 [2257, "Order of the Lich"], _
		 [2258, "Master of Necromancy"], _
		 [2259, "Animate Undead"], _
		 [2260, "Polymock Deathly Chill"], _
		 [2261, "Polymock Rising Bile"], _
		 [2262, "Polymock Rotting Flesh"], _
		 [2263, "Polymock Lightning Strike"], _
		 [2264, "Polymock Lightning Orb"], _
		 [2265, "Polymock Lightning Djinns Haste"], _
		 [2266, "Polymock Flare"], _
		 [2267, "Polymock Immolate"], _
		 [2268, "Polymock Meteor"], _
		 [2269, "Polymock Ice Spear"], _
		 [2270, "Polymock Icy Prison"], _
		 [2271, "Polymock Mind Freeze"], _
		 [2272, "Polymock Ice Shard Storm"], _
		 [2273, "Polymock Frozen Trident"], _
		 [2274, "Polymock Smite"], _
		 [2275, "Polymock Smite Hex"], _
		 [2276, "Polymock Bane Signet"], _
		 [2277, "Polymock Stone Daggers"], _
		 [2278, "Polymock Obsidian Flame"], _
		 [2279, "Polymock Earthquake"], _
		 [2280, "Polymock Frozen Armor"], _
		 [2281, "Polymock Glyph Freeze"], _
		 [2282, "Polymock Fireball"], _
		 [2283, "Polymock Rodgorts Invocation"], _
		 [2284, "Polymock Calculated Risk"], _
		 [2285, "Polymock Recurring Insecurity"], _
		 [2286, "Polymock Backfire"], _
		 [2287, "Polymock Guilt"], _
		 [2288, "Polymock Lamentation"], _
		 [2289, "Polymock Spirit Rift"], _
		 [2290, "Polymock Painful Bond"], _
		 [2291, "Polymock Signet of Clumsiness"], _
		 [2292, "Polymock Migraine"], _
		 [2293, "Polymock Glowing Gaze"], _
		 [2294, "Polymock Searing Flames"], _
		 [2295, "Polymock Signet of Revenge"], _
		 [2296, "Polymock Signet of Smiting"], _
		 [2297, "Polymock Stoning"], _
		 [2298, "Polymock Eruption"], _
		 [2299, "Polymock Shock Arrow"], _
		 [2300, "Polymock Mind Shock"], _
		 [2301, "Polymock Piercing Light Spear"], _
		 [2302, "Polymock Mind Blast"], _
		 [2303, "Polymock Savannah Heat"], _
		 [2304, "Polymock Diversion"], _
		 [2305, "Polymock Lightning Blast"], _
		 [2306, "Polymock Poisoned Ground"], _
		 [2307, "Polymock Icy Bonds"], _
		 [2308, "Polymock Sandstorm"], _
		 [2309, "Polymock Banish"], _
		 [2310, "Mergoyle Form"], _
		 [2311, "Skale Form"], _
		 [2312, "Gargoyle Form"], _
		 [2313, "Ice Imp Form"], _
		 [2314, "Fire Imp Form"], _
		 [2315, "Kappa Form"], _
		 [2316, "Aloe Seed Form"], _
		 [2317, "Earth Elemental Form"], _
		 [2318, "Fire Elemental Form"], _
		 [2319, "Ice Elemental Form"], _
		 [2320, "Mirage Iboga Form"], _
		 [2321, "Wind Rider Form"], _
		 [2322, "Naga Shaman Form"], _
		 [2323, "Mantis Dreamweaver Form"], _
		 [2324, "Ruby Djinn Form"], _
		 [2325, "Gaki Form"], _
		 [2326, "Stone Rain Form"], _
		 [2327, "Mursaat Elementalist Form"], _
		 [2328, "Crystal Shield"], _
		 [2329, "Crystal Snare"], _
		 [2330, "Paranoid Indignation"], _
		 [2331, "Searing Breath"], _
		 [2332, "Kraks Charge"], _
		 [2333, "Brawling"], _
		 [2334, "Brawling Block"], _
		 [2335, "Brawling Jab"], _
		 [2336, "Brawling Jab"], _
		 [2337, "Brawling Straight Right"], _
		 [2338, "Brawling Hook"], _
		 [2339, "Brawling Hook"], _
		 [2340, "Brawling Uppercut"], _
		 [2341, "Brawling Combo Punch"], _
		 [2342, "Brawling Headbutt (Brawling skill)"], _
		 [2343, "STAND UP"], _
		 [2344, "Call of Destruction"], _
		 [2345, "Flame Jet"], _
		 [2346, "Lava Ground"], _
		 [2347, "Lava Wave"], _
		 [2349, "Spirit Shield"], _
		 [2350, "Summoning Lord"], _
		 [2351, "Charm Animal (Ashlyn Spiderfriend)"], _
		 [2352, "Charr Siege Attack (Assault on the Stronghold)"], _
		 [2353, "Finish Him"], _
		 [2354, "Dodge This"], _
		 [2355, "I Am the Strongest"], _
		 [2356, "I Am Unstoppable"], _
		 [2357, "A Touch of Guile"], _
		 [2358, "You Move Like a Dwarf"], _
		 [2359, "You Are All Weaklings"], _
		 [2360, "Feel No Pain"], _
		 [2361, "Club of a Thousand Bears"], _
		 [2363, "Talon Strike"], _
		 [2364, "Lava Blast"], _
		 [2365, "Thunderfist Strike"], _
		 [2367, "Alkars Concoction"], _
		 [2368, "Murakais Consumption"], _
		 [2369, "Murakais Censure"], _
		 [2370, "Murakais Calamity"], _
		 [2371, "Murakais Storm of Souls"], _
		 [2372, "Edification"], _
		 [2373, "Heart of the Norn"], _
		 [2374, "Ursan Blessing"], _
		 [2375, "Ursan Strike"], _
		 [2376, "Ursan Rage"], _
		 [2377, "Ursan Roar"], _
		 [2378, "Ursan Force"], _
		 [2379, "Volfen Blessing"], _
		 [2380, "Volfen Claw"], _
		 [2381, "Volfen Pounce"], _
		 [2382, "Volfen Bloodlust"], _
		 [2383, "Volfen Agility"], _
		 [2384, "Raven Blessing"], _
		 [2385, "Raven Talons"], _
		 [2386, "Raven Swoop"], _
		 [2387, "Raven Shriek"], _
		 [2388, "Raven Flight"], _
		 [2389, "Totem of Man"], _
		 [2390, "Filthy Explosion"], _
		 [2391, "Murakais Call"], _
		 [2392, "Spawn Pods"], _
		 [2393, "Enraged Blast"], _
		 [2394, "Spawn Hatchling"], _
		 [2395, "Ursan Roar (Blood Washes Blood)"], _
		 [2396, "Ursan Force (Blood Washes Blood)"], _
		 [2397, "Ursan Aura"], _
		 [2398, "Consume Flames"], _
		 [2399, "Aura of the Great Destroyer"], _
		 [2400, "Destroy the Humans"], _
		 [2401, "Charr Flame Keeper Form"], _
		 [2402, "Titan Form"], _
		 [2403, "Skeletal Mage Form"], _
		 [2404, "Smoke Wraith Form"], _
		 [2405, "Bone Dragon Form"], _
		 [2407, "Dwarven Arcanist Form"], _
		 [2408, "Dolyak Rider Form"], _
		 [2409, "Extract Inscription"], _
		 [2410, "Charr Shaman Form"], _
		 [2411, "Mindbender"], _
		 [2412, "Smooth Criminal"], _
		 [2413, "Technobabble"], _
		 [2414, "Radiation Field"], _
		 [2415, "Asuran Scan"], _
		 [2416, "Air of Superiority"], _
		 [2417, "Mental Block"], _
		 [2418, "Pain Inverter"], _
		 [2419, "Healing Salve"], _
		 [2420, "Ebon Escape"], _
		 [2421, "Weakness Trap"], _
		 [2422, "Winds"], _
		 [2423, "Dwarven Stability"], _
		 [2424, "Stout-Hearted"], _
		 [2425, "Inscribed Ettin Aura"], _
		 [2426, "Decipher Inscriptions"], _
		 [2427, "Rebel Yell"], _
		 [2429, "Asuran Flame Staff"], _
		 [2430, "Aura of the Bloodstone"], _
		 [2431, "Aura of the Bloodstone"], _
		 [2432, "Aura of the Bloodstone"], _
		 [2433, "Haunted Ground"], _
		 [2434, "Asuran Bodyguard"], _
		 [2435, "Asuran Bodyguard"], _
		 [2436, "Asuran Bodyguard"], _
		 [2437, "Energy Channel"], _
		 [2438, "Hunt Rampage"], _
		 [2440, "Boss Bounty"], _
		 [2441, "Hunt Point Bonus"], _
		 [2442, "Hunt Point Bonus"], _
		 [2443, "Hunt Point Bonus"], _
		 [2444, "Time Attack"], _
		 [2445, "Dwarven Raider"], _
		 [2446, "Dwarven Raider"], _
		 [2447, "Dwarven Raider"], _
		 [2448, "Dwarven Raider"], _
		 [2449, "Great Dwarfs Blessing"], _
		 [2450, "Hunt Rampage"], _
		 [2452, "Boss Bounty"], _
		 [2453, "Hunt Point Bonus"], _
		 [2454, "Hunt Point Bonus"], _
		 [2456, "Time Attack"], _
		 [2457, "Vanguard Patrol"], _
		 [2458, "Vanguard Patrol"], _
		 [2459, "Vanguard Patrol"], _
		 [2460, "Vanguard Patrol"], _
		 [2461, "Vanguard Commendation"], _
		 [2462, "Hunt Rampage"], _
		 [2464, "Boss Bounty"], _
		 [2469, "Norn Hunting Party"], _
		 [2470, "Norn Hunting Party"], _
		 [2471, "Norn Hunting Party"], _
		 [2472, "Norn Hunting Party"], _
		 [2473, "Strength of the Norn"], _
		 [2474, "Hunt Rampage"], _
		 [2481, "Asuran Bodyguard"], _
		 [2482, "Desperate Howl"], _
		 [2483, "Gloat"], _
		 [2484, "Metamorphosis"], _
		 [2485, "Inner Fire"], _
		 [2486, "Elemental Shift"], _
		 [2487, "Dryders Feast"], _
		 [2488, "Fungal Explosion"], _
		 [2489, "Blood Rage"], _
		 [2490, "Parasitic Bite"], _
		 [2491, "False Death"], _
		 [2492, "Ooze Combination"], _
		 [2493, "Ooze Division"], _
		 [2494, "Bear Form"], _
		 [2495, "Sweeping Strikes"], _
		 [2496, "Spore Explosion"], _
		 [2497, "Dormant Husk"], _
		 [2498, "Monkey See, Monkey Do"], _
		 [2499, "Feeding Frenzy"], _
		 [2500, "Tengus Mimicry"], _
		 [2501, "Tongue Lash"], _
		 [2502, "Soulrending Shriek"], _
		 [2503, "Unreliable"], _
		 [2504, "Siege Devourer"], _
		 [2505, "Siege Devourer Feast"], _
		 [2506, "Devourer Bite"], _
		 [2507, "Siege Devourer Swipe"], _
		 [2508, "Devourer Siege"], _
		 [2509, "HYAHHHHH"], _
		 [2510, "HYAHHHHH"], _
		 [2511, "HYAHHHHH"], _
		 [2512, "HYAHHHHH"], _
		 [2513, "Dismount Siege Devourer"], _
		 [2514, "The Masters Mark"], _
		 [2515, "The Snipers Spear"], _
		 [2516, "Mount"], _
		 [2517, "Reverse Polarity Fire Shield"], _
		 [2518, "Tengus Gaze"], _
		 [2519, "Fix Monster Attributes"], _
		 [2520, "Armor of Salvation (item effect)"], _
		 [2521, "Grail of Might (item effect)"], _
		 [2522, "Essence of Celerity (item effect)"], _
		 [2523, "Stone Dwarf Transformation"], _
		 [2524, "Forgewights Blessing"], _
		 [2525, "Selvetarms Blessing"], _
		 [2526, "Thommiss Blessing"], _
		 [2527, "Duncans Defense"], _
		 [2529, "Rands Attack"], _
		 [2530, "Selvetarms Attack"], _
		 [2531, "Thommiss Attack"], _
		 [2532, "Create Spore"], _
		 [2536, "Invigorating Mist"], _
		 [2537, "Courageous Was Saidra"], _
		 [2538, "Animate Undead (Palawa Joko)"], _
		 [2539, "Order of Unholy Vigor (Palawa Joko)"], _
		 [2540, "Order of the Lich (Palawa Joko)"], _
		 [2541, "Golem Boosters"], _
		 [2542, "Charm Animal (monster)"], _
		 [2543, "Wurm Siege (Eye of the North)"], _
		 [2544, "Tongue Whip"], _
		 [2545, "Lit Torch"], _
		 [2546, "Dishonorable"], _
		 [2547, "Hard Mode Dungeon Boss"], _
		 [2548, "Veteran Asuran Bodyguard"], _
		 [2549, "Veteran Dwarven Raider"], _
		 [2550, "Veteran Vanguard Patrol"], _
		 [2551, "Veteran Norn Hunting Party"], _
		 [2565, "Dwarven Raider"], _
		 [2566, "Dwarven Raider"], _
		 [2567, "Dwarven Raider"], _
		 [2568, "Dwarven Raider"], _
		 [2570, "Great Dwarfs Blessing"], _
		 [2571, "Boss Bounty"], _
		 [2574, "Hunt Point Bonus"], _
		 [2575, "Hunt Point Bonus"], _
		 [2576, "Hunt Rampage"], _
		 [2577, "Time Attack"], _
		 [2578, "Vanguard Patrol"], _
		 [2583, "Boss Bounty"], _
		 [2585, "Hunt Point Bonus"], _
		 [2589, "Vanguard Commendation"], _
		 [2591, "Norn Hunting Party"], _
		 [2592, "Norn Hunting Party"], _
		 [2593, "Norn Hunting Party"], _
		 [2594, "Norn Hunting Party"], _
		 [2596, "Boss Bounty"], _
		 [2598, "Strength of the Norn"], _
		 [2599, "Hunt Point Bonus"], _
		 [2601, "Hunt Point Bonus"], _
		 [2602, "Hunt Rampage"], _
		 [2603, "Time Attack"], _
		 [2604, "Candy Corn (skill)"], _
		 [2605, "Candy Apple (skill)"], _
		 [2606, "Anton (Costume Brawl disguise)"], _
		 [2607, "Erys Vasburg (Costume Brawl disguise)"], _
		 [2608, "Olias (Costume Brawl disguise)"], _
		 [2609, "Argo (Costume Brawl disguise)"], _
		 [2610, "Mhenlo (Costume Brawl disguise)"], _
		 [2611, "Lukas (Costume Brawl disguise)"], _
		 [2612, "Aidan (Costume Brawl disguise)"], _
		 [2613, "Kahmu (Costume Brawl disguise)"], _
		 [2614, "Razah (Costume Brawl disguise)"], _
		 [2615, "Morgahn (Costume Brawl disguise)"], _
		 [2616, "Nika (Costume Brawl disguise)"], _
		 [2617, "Seaguard Hala (Costume Brawl disguise)"], _
		 [2618, "Livia (Costume Brawl disguise)"], _
		 [2619, "Cynn (Costume Brawl disguise)"], _
		 [2620, "Tahlkora (Costume Brawl disguise)"], _
		 [2621, "Devona (Costume Brawl disguise)"], _
		 [2622, "Zho (Costume Brawl disguise)"], _
		 [2623, "Melonni (Costume Brawl disguise)"], _
		 [2624, "Xandra (Costume Brawl disguise)"], _
		 [2625, "Hayda (Costume Brawl disguise)"], _
		 [2626, "Complicate"], _
		 [2627, "Reapers Mark"], _
		 [2628, "Enfeeble"], _
		 [2630, "Signet of Lost Souls"], _
		 [2632, "Searing Flames"], _
		 [2633, "Glowing Gaze"], _
		 [2634, "Steam"], _
		 [2635, "Flame Djinns Haste"], _
		 [2636, "Liquid Flame"], _
		 [2639, "Smite Condition"], _
		 [2640, "Crippling Slash"], _
		 [2641, "Sun and Moon Slash"], _
		 [2642, "Enraging Charge"], _
		 [2643, "Tiger Stance"], _
		 [2644, "Burning Arrow"], _
		 [2645, "Natural Stride"], _
		 [2646, "Falling Lotus Strike"], _
		 [2647, "Anthem of Weariness"], _
		 [2648, "Pious Fury"], _
		 [2649, "Pie Induced Ecstasy"], _
		 [2650, "Charm Animal (Charr Demolisher)"], _
		 [2651, "Togo (disguise)"], _
		 [2652, "Turai Ossa (disguise)"], _
		 [2653, "Gwen (disguise)"], _
		 [2654, "Saul DAlessio (disguise)"], _
		 [2655, "Dragon Empire Rage"], _
		 [2656, "Call to the Spirit Realm"], _
		 [2657, "Call of Haste (PvP)"], _
		 [2658, "Hide"], _
		 [2659, "Feign Death"], _
		 [2660, "Flee"], _
		 [2661, "Throw Rock"], _
		 [2662, "Nightmarish Aura"], _
		 [2663, "Siege Strike"], _
		 [2664, "Spike Trap (spell)"], _
		 [2665, "Barbed Bomb"], _
		 [2666, "Fire and Brimstone"], _
		 [2667, "Balm Bomb"], _
		 [2668, "Explosives"], _
		 [2669, "Rations"], _
		 [2670, "Form Up and Advance"], _
		 [2671, "Advance"], _
		 [2672, "Spectral Agony (Saul DAlessio)"], _
		 [2673, "Stun Bomb"], _
		 [2674, "Banner of the Unseen"], _
		 [2675, "Signet of the Unseen"], _
		 [2676, "For Elona"], _
		 [2677, "Giant Stomp (Turai Ossa)"], _
		 [2678, "Whirlwind Attack (Turai Ossa)"], _
		 [2679, "Junundu Siege"], _
		 [2680, "Distortion (Gwen)"], _
		 [2681, "Shared Burden (Gwen)"], _
		 [2682, "Sum of All Fears (Gwen)"], _
		 [2683, "Castigation Signet (Saul DAlessio)"], _
		 [2684, "Unnatural Signet (Saul DAlessio)"], _
		 [2685, "Dragon Slash (Turai Ossa)"], _
		 [2686, "Essence Strike (Togo)"], _
		 [2687, "Spirit Burn (Togo)"], _
		 [2688, "Spirit Rift (Togo)"], _
		 [2689, "Mend Body and Soul (Togo)"], _
		 [2690, "Offering of Spirit (Togo)"], _
		 [2691, "Disenchantment (Togo)"], _
		 [2692, "Fire Dart"], _
		 [2698, "Corrupted Haiju Lagoon Water"], _
		 [2699, "Journey to the North"], _
		 [2701, "Rat Form"], _
		 [2702, "Ox Form"], _
		 [2703, "Tiger Form"], _
		 [2704, "Rabbit Form"], _
		 [2705, "Dragon Form"], _
		 [2706, "Snake Form"], _
		 [2707, "Horse Form"], _
		 [2708, "Sheep Form"], _
		 [2709, "Monkey Form"], _
		 [2710, "Rooster Form"], _
		 [2711, "Dog Form"], _
		 [2712, "Party Time"], _
		 [2713, "Victory is Ours"], _
		 [2714, "Dark Soul Explosion"], _
		 [2715, "Chaotic Soul Explosion"], _
		 [2716, "Fiery Soul Explosion"], _
		 [2717, "Rejuvenating Soul Explosion"], _
		 [2718, "Plague Spring"], _
		 [2719, "Unbalancing Soul Explosion"], _
		 [2720, "Shadowy Soul Explosion"], _
		 [2721, "Ethereal Soul Explosion"], _
		 [2722, "Redemption of Purity"], _
		 [2723, "Purify Energy"], _
		 [2724, "Purifying Flame"], _
		 [2725, "Purifying Prayer"], _
		 [2726, "Strength of Purity"], _
		 [2727, "Spring of Purity"], _
		 [2728, "Way of the Pure"], _
		 [2729, "Purify Soul"], _
		 [2730, "Aura of Purity"], _
		 [2731, "Anthem of Purity"], _
		 [2732, "Falkens Fire Fist"], _
		 [2733, "Falken Quick"], _
		 [2734, "Mind Wrack (PvP)"], _
		 [2735, "Quickening Terrain"], _
		 [2736, "Massive Damage"], _
		 [2737, "Minion Apocalypse"], _
		 [2739, "Combat Costume (Assassin)"], _
		 [2740, "Combat Costume (Mesmer)"], _
		 [2741, "Combat Costume (Necromancer)"], _
		 [2742, "Combat Costume (Elementalist)"], _
		 [2743, "Combat Costume (Monk)"], _
		 [2744, "Combat Costume (Warrior)"], _
		 [2745, "Combat Costume (Ranger)"], _
		 [2746, "Combat Costume (Dervish)"], _
		 [2747, "Combat Costume (Ritualist)"], _
		 [2748, "Combat Costume (Paragon)"], _
		 [2755, "Jade Brotherhood Bomb"], _
		 [2756, "Mad Kings Fan"], _
		 [2758, "Candy Corn Strike"], _
		 [2759, "Rocket-Propelled Gobstopper"], _
		 [2760, "Rain of Terror (spell)"], _
		 [2761, "Cry of Madness"], _
		 [2762, "Sugar Infusion"], _
		 [2763, "Feast of Vengeance"], _
		 [2764, "Animate Candy Minions"], _
		 [2765, "Taste of Undeath"], _
		 [2766, "Scourge of Candy"], _
		 [2767, "Motivating Insults"], _
		 [2768, "Mad King Pony Support"], _
		 [2769, "Its Good to Be King"], _
		 [2770, "Maddening Laughter"], _
		 [2771, "Mad Kings Influence"], _
		 [2792, "Hidden Talent"], _
		 [2793, "Couriers Haste"], _
		 [2794, "Xinraes Revenge"], _
		 [2810, "Meek Shall Inherit"], _
		 [2813, "Inverse Ninja Law"], _
		 [2839, "Abyssal Form"], _
		 [2840, "Asura Form"], _
		 [2841, "Awakened Head Form"], _
		 [2842, "Spider Form"], _
		 [2843, "Charr Form"], _
		 [2844, "Golem Form"], _
		 [2845, "Hellhound Form"], _
		 [2846, "Norn Form"], _
		 [2847, "Ooze Form"], _
		 [2848, "Rift Warden Form"], _
		 [2850, "Yeti Form"], _
		 [2851, "Snowman Form"], _
		 [2852, "Energy Drain (PvP)"], _
		 [2853, "Energy Tap (PvP)"], _
		 [2854, "PvP (effect)"], _
		 [2855, "Ward Against Melee (PvP)"], _
		 [2856, "Lightning Orb (PvP)"], _
		 [2857, "Aegis (PvP)"], _
		 [2858, "Watch Yourself (PvP)"], _
		 [2859, "Enfeeble (PvP)"], _
		 [2860, "Ether Renewal (PvP)"], _
		 [2861, "Penetrating Attack (PvP)"], _
		 [2862, "Shadow Form (PvP)"], _
		 [2863, "Discord (PvP)"], _
		 [2864, "Sundering Attack (PvP)"], _
		 [2865, "Ritual Lord (PvP)"], _
		 [2866, "Flesh of My Flesh (PvP)"], _
		 [2867, "Ancestors Rage (PvP)"], _
		 [2868, "Splinter Weapon (PvP)"], _
		 [2869, "Assassins Remedy (PvP)"], _
		 [2870, "Blinding Surge (PvP)"], _
		 [2871, "Light of Deliverance (PvP)"], _
		 [2872, "Death Pact Signet (PvP)"], _
		 [2873, "Mystic Sweep (PvP)"], _
		 [2874, "Eremites Attack (PvP)"], _
		 [2875, "Harriers Toss (PvP)"], _
		 [2876, "Defensive Anthem (PvP)"], _
		 [2877, "Ballad of Restoration (PvP)"], _
		 [2878, "Song of Restoration (PvP)"], _
		 [2879, "Incoming (PvP)"], _
		 [2880, "Never Surrender (PvP)"], _
		 [2882, "Mantra of Inscriptions (PvP)"], _
		 [2883, "For Great Justice (PvP)"], _
		 [2884, "Mystic Regeneration (PvP)"], _
		 [2885, "Enfeebling Blood (PvP)"], _
		 [2886, "Summoning Sickness"], _
		 [2887, "Signet of Judgment (PvP)"], _
		 [2888, "Chilling Victory (PvP)"], _
		 [2891, "Unyielding Aura (PvP)"], _
		 [2892, "Spirit Bond (PvP)"], _
		 [2893, "Weapon of Warding (PvP)"], _
		 [2894, "Bamph-Lite"], _
		 [2895, "Smiters Boon (PvP)"], _
		 [2896, "Battle Fervor (Deactivating R.O.X.)"], _
		 [2897, "Cloak of Faith (Deactivating R.O.X.)"], _
		 [2898, "Dark Aura (Deactivating R.O.X.)"], _
		 [2899, "Chaotic Power (Deactivating R.O.X.)"], _
		 [2900, "Strength of the Oak (Deactivating R.O.X.)"], _
		 [2901, "Sinister Golem Form"], _
		 [2902, "Reactor Blast"], _
		 [2903, "Reactor Blast Timer"], _
		 [2904, "Jade Brotherhood Disguise"], _
		 [2905, "Internal Power Engaged"], _
		 [2906, "Target Acquisition"], _
		 [2907, "N.O.X. Beam"], _
		 [2908, "N.O.X. Field Dash"], _
		 [2909, "N.O.X.ion Buster"], _
		 [2910, "Countdown"], _
		 [2911, "Bit Golem Breaker"], _
		 [2912, "Bit Golem Rectifier"], _
		 [2913, "Bit Golem Crash"], _
		 [2914, "Bit Golem Force"], _
		 [2916, "N.O.X. Phantom"], _
		 [2917, "N.O.X. Thunder"], _
		 [2918, "N.O.X. Lock On"], _
		 [2919, "N.O.X. Driver"], _
		 [2920, "N.O.X. Fire"], _
		 [2921, "N.O.X. Knuckle"], _
		 [2922, "N.O.X. Divider Drive"], _
		 [2923, "Yo Ho Ho and a Bottle of Grog"], _
		 [2924, "Oath of Protection"], _
		 [2925, "Sloth Hunters Shot (PvP)"], _
		 [2926, "Bamph Lifesteal"], _
		 [2927, "Shrine Backlash"], _
		 [2928, "Amulet of Protection"], _
		 [2957, "Western Health Shrine Bonus"], _
		 [2958, "Eastern Health Shrine Bonus"], _
		 [2959, "Experts Dexterity (PvP)"], _
		 [2961, "Delayed Blast BAMPH"], _
		 [2962, "Grentch Form"], _
		 [2964, "Snowball"], _
		 [2965, "Signet of Spirits (PvP)"], _
		 [2966, "Signet of Ghostly Might (PvP)"], _
		 [2967, "Avatar of Grenth (PvP)"], _
		 [2968, "Oversized Tonic Warning"], _
		 [2969, "Read the Wind (PvP)"], _
		 [2970, "Mursaat Form"], _
		 [2971, "Blue Rock Candy Rush"], _
		 [2972, "Green Rock Candy Rush"], _
		 [2973, "Red Rock Candy Rush"], _
		 [2974, "Archer Form"], _
		 [2975, "Avatar of Balthazar Form"], _
		 [2976, "Champion of Balthazar Form"], _
		 [2977, "Priest of Balthazar Form"], _
		 [2978, "The Black Beast of Arrgh Form"], _
		 [2979, "Crystal Guardian Form"], _
		 [2980, "Crystal Spider Form"], _
		 [2981, "Bone Dragon Form"], _
		 [2982, "Saltspray Dragon Form"], _
		 [2983, "Eye of Janthir Form"], _
		 [2984, "Footman Form"], _
		 [2985, "Ghostly Hero Form"], _
		 [2986, "Guild Lord Form"], _
		 [2987, "Gwen Doll Form"], _
		 [2988, "Black Moa Form"], _
		 [2989, "Black Moa Chick Form"], _
		 [2990, "Moa Bird Form"], _
		 [2991, "White Moa Form"], _
		 [2992, "Rainbow Phoenix Form"], _
		 [2993, "Brown Rabbit Form"], _
		 [2994, "White Rabbit Form"], _
		 [2995, "Seer Form"], _
		 [2996, "Swarm of Bees Form"], _
		 [2997, "Seed of Resurrection"], _
		 [2998, "Fragility (PvP)"], _
		 [2999, "Strength of Honor (PvP)"], _
		 [3000, "Gunthers Gaze"], _
		 [3002, "Warriors Endurance (PvP)"], _
		 [3003, "Armor of Unfeeling (PvP)"], _
		 [3004, "Signet of Creation (PvP)"], _
		 [3005, "Union (PvP)"], _
		 [3006, "Shadowsong (PvP)"], _
		 [3007, "Pain (PvP)"], _
		 [3008, "Destruction (PvP)"], _
		 [3009, "Soothing (PvP)"], _
		 [3010, "Displacement (PvP)"], _
		 [3011, "Preservation (PvP)"], _
		 [3012, "Life (PvP)"], _
		 [3013, "Recuperation (PvP)"], _
		 [3014, "Dissonance (PvP)"], _
		 [3015, "Earthbind (PvP)"], _
		 [3016, "Shelter (PvP)"], _
		 [3017, "Disenchantment (PvP)"], _
		 [3018, "Restoration (PvP)"], _
		 [3019, "Bloodsong (PvP)"], _
		 [3020, "Wanderlust (PvP)"], _
		 [3021, "Savannah Heat (PvP)"], _
		 [3022, "Gaze of Fury (PvP)"], _
		 [3023, "Anguish (PvP)"], _
		 [3024, "Empowerment (PvP)"], _
		 [3025, "Recovery (PvP)"], _
		 [3026, "Go for the Eyes (PvP)"], _
		 [3027, "Brace Yourself (PvP)"], _
		 [3028, "Blazing Finale (PvP)"], _
		 [3029, "Bladeturn Refrain (PvP)"], _
		 [3030, "Signet of Return (PvP)"], _
		 [3031, "Cant Touch This (PvP)"], _
		 [3032, "Stand Your Ground (PvP)"], _
		 [3033, "We Shall Return (PvP)"], _
		 [3034, "Find Their Weakness (PvP)"], _
		 [3035, "Never Give Up (PvP)"], _
		 [3036, "Help Me (PvP)"], _
		 [3037, "Fall Back (PvP)"], _
		 [3038, "Agony (PvP)"], _
		 [3039, "Rejuvenation (PvP)"], _
		 [3040, "Anthem of Disruption (PvP)"], _
		 [3041, "Shadowsong (Master Riyo)"], _
		 [3042, "Pain"], _
		 [3043, "Wanderlust"], _
		 [3044, "Spirit Siphon (Master Riyo)"], _
		 [3045, "Comfort Animal (PvP)"], _
		 [3047, "Melandrus Assault (PvP)"], _
		 [3048, "Shroud of Distress (PvP)"], _
		 [3049, "Unseen Fury (PvP)"], _
		 [3050, "Predatory Bond (PvP)"], _
		 [3051, "Enraged Lunge (PvP)"], _
		 [3052, "Conviction (PvP)"], _
		 [3053, "Signet of Deadly Corruption (PvP)"], _
		 [3054, "Masochism (PvP)"], _
		 [3055, "Pain (attack) (Togo)"], _
		 [3056, "Pain (attack) (Togo)"], _
		 [3057, "Pain (attack) (Togo)"], _
		 [3058, "Unholy Feast (PvP)"], _
		 [3059, "Signet of Agony (PvP)"], _
		 [3060, "Escape (PvP)"], _
		 [3061, "Death Blossom (PvP)"], _
		 [3062, "Finale of Restoration (PvP)"], _
		 [3063, "Mantra of Resolve (PvP)"], _
		 [3064, "Lesser Hard Mode NPC Buff"], _
		 [3065, "Charm Animal"], _
		 [3066, "Charm Animal"], _
		 [3067, "Henchman"], _
		 [3068, "Charm Animal (Codex)"], _
		 [3069, "Agent of the Mad King"], _
		 [3070, "Sugar Rush (Agent of the Mad King)"], _
		 [3071, "Sticky Ground"], _
		 [3072, "Sugar Shock"], _
		 [3073, "The Mad Kings Influence"], _
		 [3074, "Bone Spike"], _
		 [3075, "Flurry of Splinters"], _
		 [3076, "Everlasting Mobstopper (skill)"], _
		 [3077, "Weakened by Dhuum"], _
		 [3078, "Curse of Dhuum"], _
		 [3079, "Dhuums Rest (Reaper skill)"], _
		 [3080, "Dhuum (skill)"], _
		 [3081, "Summon Champion"], _
		 [3082, "Summon Minions"], _
		 [3083, "Touch of Dhuum"], _
		 [3084, "Reaping of Dhuum"], _
		 [3085, "Judgment of Dhuum"], _
		 [3086, "Weight of Dhuum (hex)"], _
		 [3087, "Dhuums Rest"], _
		 [3088, "Spiritual Healing"], _
		 [3089, "Encase Skeletal"], _
		 [3090, "Reversal of Death"], _
		 [3091, "Ghostly Fury"], _
		 [3092, "Henchman Form Pudash"], _
		 [3093, "Henchman Form Dahlia"], _
		 [3094, "Henchman Form Disenmaedel"], _
		 [3095, "Henchman Form Errol Hyl"], _
		 [3096, "Henchman Form Lulu Xan"], _
		 [3097, "Henchman Form Tannaros"], _
		 [3098, "Henchman Form Cassie Santi"], _
		 [3099, "Henchman Form Redemptor Frohs"], _
		 [3100, "Henchman Form Julyia"], _
		 [3101, "Henchman Form Bellicus"], _
		 [3102, "Henchman Form Dirk Shadowrise"], _
		 [3103, "Henchman Form Vincent Evan"], _
		 [3104, "Henchman Form Luzy Fiera"], _
		 [3105, "Henchman Form Motoko Kai"], _
		 [3106, "Henchman Form Hinata"], _
		 [3107, "Henchman Form Kah Xan"], _
		 [3108, "Henchman Form Narcissia"], _
		 [3109, "Henchman Form Zen Siert"], _
		 [3110, "Henchman Form Blenkeh"], _
		 [3111, "Henchman Form Aurora Allesandra"], _
		 [3112, "Henchman Form Teena the Raptor"], _
		 [3113, "Henchman Form Lora Lanaya"], _
		 [3114, "Henchman Form Adepte"], _
		 [3115, "Henchman Form Haldibarn Earendul"], _
		 [3116, "Henchman Form Daky"], _
		 [3117, "Henchman Form Syn Spellstrike"], _
		 [3118, "Henchman Form Divinus Tutela"], _
		 [3119, "Henchman Form Blahks"], _
		 [3120, "Henchman Form Erick"], _
		 [3121, "Henchman Form Ghavin"], _
		 [3122, "Henchman Form Hobba Inaste"], _
		 [3123, "Henchman Form Bacchi Coi"], _
		 [3124, "Henchman Form Suzu"], _
		 [3125, "Henchman Form Rollo Lowlo"], _
		 [3126, "Henchman Form Fuu Rin"], _
		 [3127, "Henchman Form Nuno"], _
		 [3128, "Henchman Form Alsacien"], _
		 [3129, "Henchman Form Uto Wrotki"], _
		 [3130, "Henchman Form Khai Kemnebi"], _
		 [3131, "Henchman Form Cole"], _
		 [3133, "Weight of Dhuum"], _
		 [3134, "Spirit Form (disguise)"], _
		 [3135, "Spiritual Healing (Reaper skill)"], _
		 [3136, "Ghostly Fury (Reaper skill)"], _
		 [3137, "Reindeer Form"], _
		 [3138, "Reindeer Form"], _
		 [3139, "Reindeer Form"], _
		 [3140, "Staggering Blow (PvP)"], _
		 [3141, "Lightning Reflexes (PvP)"], _
		 [3142, "Fierce Blow (PvP)"], _
		 [3143, "Renewing Smash (PvP)"], _
		 [3144, "Heal as One (PvP)"], _
		 [3145, "Glass Arrows (PvP)"], _
		 [3146, "Protective Was Kaolai (PvP)"], _
		 [3147, "Keen Arrow (PvP)"], _
		 [3148, "Anthem of Envy (PvP)"], _
		 [3149, "Mending Refrain (PvP)"], _
		 [3150, "Lesser Flame Sentinel Resistance"], _
		 [3151, "Empathy (PvP)"], _
		 [3152, "Crippling Anguish (PvP)"], _
		 [3153, "Pain (attack) (Signet of Spirits)"], _
		 [3154, "Pain (attack) (Signet of Spirits)"], _
		 [3155, "Pain (attack) (Signet of Spirits)"], _
		 [3156, "Soldiers Stance (PvP)"], _
		 [3157, "Destructive Was Glaive (PvP)"], _
		 [3159, "Charm Drake"], _
		 [3162, "Theres not enough time"], _
		 [3163, "Keirans Sniper Shot"], _
		 [3164, "Falken Punch"], _
		 [3165, "Golem Pilebunker"], _
		 [3166, "Drunken Stumbling"], _
		 [3170, "Koros Gaze"], _
		 [3171, "Ebon Vanguard Assassin Support (NPC)"], _
		 [3172, "Ebon Vanguard Battle Standard of Power"], _
		 [3173, "Loose Magic"], _
		 [3174, "Well-Supplied"], _
		 [3175, "Guild Monument Protected"], _
		 [3176, "Strong Natural Resistance"], _
		 [3177, "Elite Regeneration"], _
		 [3178, "Elite Regeneration"], _
		 [3179, "Mantra of Signets (PvP)"], _
		 [3180, "Shatter Delusions (PvP)"], _
		 [3181, "Illusionary Weaponry (PvP)"], _
		 [3182, "Panic (PvP)"], _
		 [3183, "Migraine (PvP)"], _
		 [3184, "Accumulated Pain (PvP)"], _
		 [3185, "Psychic Instability (PvP)"], _
		 [3186, "Shared Burden (PvP)"], _
		 [3187, "Stolen Speed (PvP)"], _
		 [3188, "Unnatural Signet (PvP)"], _
		 [3189, "Spiritual Pain (PvP)"], _
		 [3190, "Frustration (PvP)"], _
		 [3191, "Mistrust (PvP)"], _
		 [3192, "Enchanters Conundrum (PvP)"], _
		 [3193, "Signet of Clumsiness (PvP)"], _
		 [3194, "Mirror of Disenchantment (PvP)"], _
		 [3195, "Wandering Eye (PvP)"], _
		 [3196, "Calculated Risk (PvP)"], _
		 [3197, "Adoration"], _
		 [3198, "Impending Dhuum"], _
		 [3199, "Sacrifice Pawn"], _
		 [3200, "Isaiahs Balance"], _
		 [3201, "Toriimos Burning Fury"], _
		 [3202, "Oath of Protection"], _
		 [3204, "Defy Pain (PvP)"], _
		 [3205, "Entourage"], _
		 [3206, "Spectral Infusion"], _
		 [3207, "Entourage (Buffer)"], _
		 [3208, "Wastrels Demise (PvP)"], _
		 [3210, "Shiro Tagachi (Costume Brawl disguise)"], _
		 [3211, "Dunham (Costume Brawl disguise)"], _
		 [3212, "Palawa Joko (Costume Brawl disguise)"], _
		 [3213, "Lawrence Crafton (Costume Brawl disguise)"], _
		 [3214, "Saul DAlessio (Costume Brawl disguise)"], _
		 [3215, "Turai Ossa (Costume Brawl disguise)"], _
		 [3216, "Lieutenant Thackeray (Costume Brawl disguise)"], _
		 [3217, "Gehraz (Costume Brawl disguise)"], _
		 [3218, "Master Togo (Costume Brawl disguise)"], _
		 [3219, "Egil Fireteller (Costume Brawl disguise)"], _
		 [3220, "Mysterious Assassin (Costume Brawl disguise)"], _
		 [3221, "Gwen (Costume Brawl disguise)"], _
		 [3222, "Eve (Costume Brawl disguise)"], _
		 [3223, "Elementalist Aziure (Costume Brawl disguise)"], _
		 [3224, "Jamei (Costume Brawl disguise)"], _
		 [3225, "Jora (Costume Brawl disguise)"], _
		 [3226, "Margrid the Sly (Costume Brawl disguise)"], _
		 [3227, "Varesh Ossa (Costume Brawl disguise)"], _
		 [3228, "Headmaster Quin (Costume Brawl disguise)"], _
		 [3229, "Kormir (Costume Brawl disguise)"], _
		 [3231, "Barbed Signet (PvP)"], _
		 [3232, "Heal Party (PvP)"], _
		 [3233, "Spoil Victor (PvP)"], _
		 [3234, "Visions of Regret (PvP)"], _
		 [3235, "Keirans Sniper Shot (Hearts of the North)"], _
		 [3236, "Gravestone Marker"], _
		 [3237, "Terminal Velocity"], _
		 [3238, "Relentless Assault"], _
		 [3239, "Natures Blessing"], _
		 [3240, "Find Their Weakness (Thackeray)"], _
		 [3241, "Theres Nothing to Fear (Thackeray)"], _
		 [3242, "Coming of Spring"], _
		 [3243, "Promise of Death"], _
		 [3244, "Withering Blade"], _
		 [3245, "Deaths Embrace"], _
		 [3246, "Venom Fang"], _
		 [3247, "Survivors Will"], _
		 [3248, "Keiran Thackeray (disguise)"], _
		 [3249, "Rain of Arrows"], _
		 [3251, "Fox Fangs (PvP)"], _
		 [3252, "Wild Strike (PvP)"], _
		 [3253, "Ultra Snowball"], _
		 [3254, "Blizzard"], _
		 [3259, "Ultra Snowball"], _
		 [3260, "Ultra Snowball"], _
		 [3261, "Ultra Snowball"], _
		 [3262, "Ultra Snowball"], _
		 [3263, "Banishing Strike (PvP)"], _
		 [3264, "Twin Moon Sweep (PvP)"], _
		 [3265, "Irresistible Sweep (PvP)"], _
		 [3266, "Pious Assault (PvP)"], _
		 [3267, "Ebon Dust Aura (PvP)"], _
		 [3268, "Heart of Holy Flame (PvP)"], _
		 [3269, "Guiding Hands (PvP)"], _
		 [3270, "Avatar of Dwayna (PvP)"], _
		 [3271, "Avatar of Melandru (PvP)"], _
		 [3272, "Mystic Healing (PvP)"], _
		 [3273, "Signet of Pious Restraint (PvP)"], _
		 [3274, "Vanguard Initiate"], _
		 [3282, "Victorious Renewal"], _
		 [3283, "A Dying Curse"], _
		 [3288, "Rage of the Djinn"], _
		 [3289, "Fevered Dreams (PvP)"], _
		 [3290, "Stun Grenade"], _
		 [3291, "Fragmentation Grenade"], _
		 [3292, "Tear Gas"], _
		 [3293, "Land Mine"], _
		 [3294, "Riot Shield"], _
		 [3295, "Club Strike"], _
		 [3296, "Bludgeon"], _
		 [3297, "Tango Down"], _
		 [3298, "Ill Be Back"], _
		 [3299, "Phased Plasma Burst"], _
		 [3300, "Plasma Shot"], _
		 [3301, "Annihilator Bash"], _
		 [3302, "Sky Net"], _
		 [3303, "Damage Assessment"], _
		 [3304, "Going Commando"], _
		 [3306, "Koss Form"], _
		 [3307, "Dunkoro Form"], _
		 [3308, "Melonni Form"], _
		 [3309, "Acolyte Jin Form"], _
		 [3310, "Acolyte Sousuke Form"], _
		 [3311, "Tahlkora Form"], _
		 [3312, "Zhed Shadowhoof Form"], _
		 [3313, "Margrid the Sly Form"], _
		 [3314, "Master of Whispers Form"], _
		 [3315, "Goren Form"], _
		 [3316, "Norgu Form"], _
		 [3317, "Morgahn Form"], _
		 [3318, "Razah Form"], _
		 [3319, "Olias Form"], _
		 [3320, "Zenmai Form"], _
		 [3321, "Ogden Form"], _
		 [3322, "Vekk Form"], _
		 [3323, "Gwen Form"], _
		 [3324, "Xandra Form"], _
		 [3325, "Kahmu Form"], _
		 [3326, "Jora Form"], _
		 [3327, "Pyre Fierceshot Form"], _
		 [3328, "Anton Form"], _
		 [3329, "Hayda Form"], _
		 [3330, "Livia Form"], _
		 [3331, "Keiran Thackeray Form"], _
		 [3332, "Miku Form"], _
		 [3333, "M.O.X. Form"], _
		 [3334, "Shiro Tagachi Form"], _
		 [3336, "Prince Rurik Form"], _
		 [3337, "Margonite Form"], _
		 [3338, "Destroyer Form"], _
		 [3339, "Queen Salma Form"], _
		 [3340, "Slightly Mad King Thorn Form"], _
		 [3341, "Kuunavang Form"], _
		 [3342, "Lone Wolf"], _
		 [3343, "Stand Together"], _
		 [3344, "Unyielding Spirit"], _
		 [3345, "Reckless Advance"], _
		 [3346, "Aura of Thorns (PvP)"], _
		 [3347, "Dust Cloak (PvP)"], _
		 [3348, "Lyssas Haste (PvP)"], _
		 [3349, "Knight Form"], _
		 [3350, "Lord Archer Form"], _
		 [3351, "Bodyguard Form"], _
		 [3352, "Guild Thief Form"], _
		 [3353, "Ghostly Priest Form"], _
		 [3354, "Flame Sentinel Form"], _
		 [3356, "Solidarity"], _
		 [3357, "There Can Be Only One"], _
		 [3358, "Fight Against Despair"], _
		 [3359, "Deaths Succor"], _
		 [3360, "Battle of Attrition"], _
		 [3361, "Fight or Flight"], _
		 [3362, "Renewing Escape"], _
		 [3363, "Battle Frenzy"], _
		 [3364, "The Way of One"], _
		 [3365, "Onslaught (PvP)"], _
		 [3366, "Heart of Fury (PvP)"], _
		 [3367, "Wounding Strike (PvP)"], _
		 [3368, "Pious Fury (PvP)"], _
		 [3369, "Party Mode"], _
		 [3370, "Smash of the Titans"], _
		 [3371, "Mirror Shatter"], _
		 [3373, "Illusion of Haste (PvP)"], _
		 [3374, "Illusion of Pain (PvP)"], _
		 [3375, "Aura of Restoration (PvP)"], _
		 [3376, "Shapeshift"], _
		 [3377, "G.O.L.E.M. (disguise)"], _
		 [3378, "Phase Shield"], _
		 [3379, "Reactor Burst"], _
		 [3380, "Ill Be Back"], _
		 [3381, "Annihilator Strike"], _
		 [3382, "Annihilator Beam"], _
		 [3383, "Annihilator Knuckle"], _
		 [3384, "Annihilator Toss"], _
		 [3386, "Web of Disruption (PvP)"], _
		 [3387, "Chain Combo"], _
		 [3390, "All In"], _
		 [3391, "Jack of All Trades"], _
		 [3392, ""], _
		 [3393, "Odrans Razor"], _
		 [3394, "Like a Boss"], _
		 [3395, "The Boss"], _
		 [3396, "Lightning Hammer (PvP)"], _
		 [3397, "Elemental Flame (PvP)"], _
		 [3398, "Slippery Ground (PvP)"], _
		 [3399, "Everlastung tonic Disguised"], _
		 [3400, "Non-everlasting Disguised"], _
		 [3401, "Disguised"], _
		 [3402, "Tonic Tipsiness"], _
		 [3403, "Parting Gift"], _
		 [3404, "Gift of Battle"], _
		 [3405, "Rolling Start"], _
		 [3406, "Everlasting Legionnaire Tonic"]]


#EndRegion All Skill IDs, Global Variables


#region Map_IDs
Global $MAP_ID[880]
$MAP_ID[0] = 859
$MAP_ID[4] = "Guild Hall - Warrior's Isle"
$MAP_ID[5] = "Guild Hall - Hunter's Isle"
$MAP_ID[6] = "Guild Hall - Wizard's Isle"
$MAP_ID[7] = "Warrior's Isle Explorable"
$MAP_ID[8] = "Hunter's Isle Explorable"
$MAP_ID[9] = "Wizard's Isle Explorable"
$MAP_ID[10] = "Bloodstone Fen outpost"
$MAP_ID[11] = "The Wilds outpost"
$MAP_ID[12] = "Aurora Glade outpost"
$MAP_ID[13] = "Diesa Lowlands"
$MAP_ID[14] = "Gates of Kryta outpost"
$MAP_ID[15] = "D'Alessio Seaboard outpost"
$MAP_ID[16] = "Divinity Coast outpost"
$MAP_ID[17] = "Talmark Wilderness"
$MAP_ID[18] = "The Black Curtain"
$MAP_ID[19] = "Sanctum Cay outpost"
$MAP_ID[20] = "Droknar's Forge"
$MAP_ID[21] = "The Frost Gate outpost"
$MAP_ID[22] = "Ice Caves of Sorrow outpost"
$MAP_ID[23] = "Thunderhead Keep outpost"
$MAP_ID[24] = "Iron Mines of Moladune outpost"
$MAP_ID[25] = "Borlis Pass outpost"
$MAP_ID[26] = "Talus Chute"
$MAP_ID[27] = "Griffon's Mouth"
$MAP_ID[28] = "The Great Northern Wall outpost"
$MAP_ID[29] = "Fort Ranik outpost"
$MAP_ID[30] = "Ruins of Surmia outpost"
$MAP_ID[31] = "Xaquang Skyway"
$MAP_ID[32] = "Nolani Academy outpost"
$MAP_ID[33] = "Old Ascalon"
$MAP_ID[34] = "The Fissure of Woe"
$MAP_ID[35] = "Ember Light Camp"
$MAP_ID[36] = "Grendich Courthouse"
$MAP_ID[37] = "Glint' Challenge"
$MAP_ID[38] = "Augury Rock outpost"
$MAP_ID[39] = "Sardelac Sanitarium"
$MAP_ID[40] = "Piken Square"
$MAP_ID[41] = "Sage Lands"
$MAP_ID[42] = "Mamnoon Lagoon"
$MAP_ID[43] = "Silverwood"
$MAP_ID[44] = "Ettin's Back"
$MAP_ID[45] = "Reed Bog"
$MAP_ID[46] = "The Falls"
$MAP_ID[47] = "Dry Top"
$MAP_ID[48] = "Tangle Root"
$MAP_ID[49] = "Henge of Denravi"
$MAP_ID[51] = "Senjis Corner"
$MAP_ID[52] = "Guild Hall - Burning Isle"
$MAP_ID[53] = "Tears of the Fallen"
$MAP_ID[54] = "Scoundrel's Rise"
$MAP_ID[55] = "Lions Arch"
$MAP_ID[56] = "Cursed Lands"
$MAP_ID[57] = "Bergen Hot Springs"
$MAP_ID[58] = "North Kryta Province"
$MAP_ID[59] = "Nebo Terrace"
$MAP_ID[60] = "Majesty's Rest"
$MAP_ID[61] = "Twin Serpent Lakes"
$MAP_ID[62] = "Watchtower Coast"
$MAP_ID[63] = "Stingray Strand"
$MAP_ID[64] = "Kessex Peak"
$MAP_ID[65] = "D'Alessio Arena"
$MAP_ID[67] = "Burning Isle Explorable"
$MAP_ID[68] = "Frozen Isle Explorable"
$MAP_ID[69] = "Nomad's Isle Explorable"
$MAP_ID[70] = "Druid's Isle Explorable"
$MAP_ID[71] = "Isle of the Dead Explorable"
$MAP_ID[72] = "The Underworld"
$MAP_ID[73] = "Riverside Province outpost"
$MAP_ID[75] = "The Hall of Heroes Arena"
$MAP_ID[76] = "Broken Tower Arena"
$MAP_ID[77] = "House zu Heltzer"
$MAP_ID[78] = "The Courtyard Arena"
$MAP_ID[79] = "Unholy Temples Area"
$MAP_ID[80] = "Burial Mounds Arena"
$MAP_ID[81] = "Ascalon City"
$MAP_ID[82] = "Tomb of the Primeval Kings"
$MAP_ID[83] = "The Vault Arena"
$MAP_ID[84] = "The Underworld Arena"
$MAP_ID[85] = "Ascalon Arena outpost"
$MAP_ID[86] = "Sacred Temples Arena"
$MAP_ID[87] = "Icedome"
$MAP_ID[88] = "Iron Horse Mine"
$MAP_ID[89] = "Anvil Rock"
$MAP_ID[90] = "Lornar's Pass"
$MAP_ID[91] = "Snake Dance"
$MAP_ID[92] = "Tasca's Demise"
$MAP_ID[93] = "Spearhead Peak"
$MAP_ID[94] = "Ice Floe"
$MAP_ID[95] = "Witman's Folly"
$MAP_ID[96] = "Mineral Springs"
$MAP_ID[97] = "Dreadnought's Drift"
$MAP_ID[98] = "Frozen Forest"
$MAP_ID[99] = "Traveler's Vale"
$MAP_ID[100] = "Deldrimor Bowl"
$MAP_ID[101] = "Regent Valley"
$MAP_ID[102] = "The Breach"
$MAP_ID[103] = "Ascalon Foothills"
$MAP_ID[104] = "Pockmark Flats"
$MAP_ID[105] = "Dragon's Gullet"
$MAP_ID[106] = "Flame Temple Corridor"
$MAP_ID[107] = "Eastern Frontier"
$MAP_ID[108] = "The Scar"
$MAP_ID[109] = "The Amnoon Oasis"
$MAP_ID[110] = "Diviner's Ascent"
$MAP_ID[111] = "Vulture Drifts"
$MAP_ID[112] = "The Arid Sea"
$MAP_ID[113] = "Prophet's Path"
$MAP_ID[114] = "Salt Flats"
$MAP_ID[115] = "Skyward Reach"
$MAP_ID[116] = "Dunes of Despair outpost"
$MAP_ID[117] = "Thirsty River outpost"
$MAP_ID[118] = "Elona Reach outpost"
$MAP_ID[119] = "Augury Rock outpost"
$MAP_ID[120] = "The Dragon's Lair outpost"
$MAP_ID[121] = "Perdition Rock"
$MAP_ID[122] = "Ring of Fire outpost"
$MAP_ID[123] = "Abaddon's Mouth outpost"
$MAP_ID[124] = "Hell's Precipice outpost"
$MAP_ID[126] = "Golden Gates"
$MAP_ID[127] = "Scarred Earth"
$MAP_ID[128] = "The Eternal Grove Explorable"
$MAP_ID[129] = "Lutgardis Conservatory"
$MAP_ID[130] = "Vasburg Armory"
$MAP_ID[131] = "Serenity Temple"
$MAP_ID[132] = "Ice Tooth Cave"
$MAP_ID[133] = "Beacons Perch"
$MAP_ID[134] = "Yaks Bend"
$MAP_ID[135] = "Frontier Gate"
$MAP_ID[136] = "Beetletun"
$MAP_ID[137] = "Fishermens Haven"
$MAP_ID[138] = "Temple of the Ages"
$MAP_ID[139] = "Ventaris Refuge"
$MAP_ID[140] = "Druids Overlook"
$MAP_ID[141] = "Maguuma Stade"
$MAP_ID[142] = "Quarrel Falls"
$MAP_ID[144] = "Gyala Hatchery Explorable"
$MAP_ID[145] = "The Catacombs"
$MAP_ID[146] = "Lakeside County"
$MAP_ID[147] = "The Northlands"
$MAP_ID[148] = "Ascalon City outpost"
$MAP_ID[149] = "Ascalon Academy"
$MAP_ID[150] = " Ascalon Academy PvP battle"
$MAP_ID[151] = "Ascalon Academy"
$MAP_ID[152] = "Heroes Audience"
$MAP_ID[153] = "Seekers Passage"
$MAP_ID[154] = "Destinys Gorge"
$MAP_ID[155] = "Camp Rankor"
$MAP_ID[156] = "The Granite Citadel"
$MAP_ID[157] = "Marhans Grotto"
$MAP_ID[158] = "Port Sledge"
$MAP_ID[159] = "Copperhammer Mines"
$MAP_ID[160] = "green Hills County"
$MAP_ID[161] = "Wizard's Folly"
$MAP_ID[162] = "Pre-Searing: Regent valley"
$MAP_ID[163] = "Pre-Searing: The Barradin Estate"
$MAP_ID[164] = "Pre-Searing: Ashford Abbey"
$MAP_ID[165] = "Pre-Searing: Foibles Fair"
$MAP_ID[166] = "Pre-Searing: Fort Ranik"
$MAP_ID[167] = "Burning Isle"
$MAP_ID[168] = "Druid's Isle"
$MAP_ID[170] = "Frozen Isle"
$MAP_ID[171] = "Warrior's Isle"
$MAP_ID[172] = "Hunter's Isle"
$MAP_ID[173] = "Wizard's Isle"
$MAP_ID[174] = "Nomad's Isle"
$MAP_ID[175] = "Isle of the Dead"
$MAP_ID[176] = "Guild Hall - Frozen Isle"
$MAP_ID[177] = "Guild Hall - Nomad's Isle"
$MAP_ID[178] = "Guild Hall - Druid's Isle"
$MAP_ID[179] = "Guild Hall - Isle of the Dead"
$MAP_ID[180] = "Fort Koga"
$MAP_ID[181] = "Shiverpeak Arena outpost"
$MAP_ID[182] = "Amnoon Arena"
$MAP_ID[183] = "Deldrimor Arena"
$MAP_ID[184] = "The Crag"
$MAP_ID[188] = "Random Arenas outpost"
$MAP_ID[189] = "Team Arenas outpost"
$MAP_ID[190] = "Sorrow's Furnace"
$MAP_ID[191] = "Grenth's Footprint"
$MAP_ID[193] = "Cavalon"
$MAP_ID[194] = "Kaineng Center"
$MAP_ID[195] = "Drazach Thicket"
$MAP_ID[196] = "Jaya Bluff"
$MAP_ID[197] = "Shenzun Tunnels"
$MAP_ID[198] = "Archipelagos"
$MAP_ID[199] = "Maishang Hills"
$MAP_ID[200] = "Mount Qinkai"
$MAP_ID[201] = "Melandru's Hope"
$MAP_ID[202] = "Rhea's Crater"
$MAP_ID[203] = "Silent Surf"
$MAP_ID[204] = "Unwaking Waters - Kurzick"
$MAP_ID[205] = "Morostav Trail"
$MAP_ID[206] = "Deldrimor War Camp"
$MAP_ID[208] = "Heroes' Crypt"
$MAP_ID[209] = "Mourning Veil Falls"
$MAP_ID[210] = "Ferndale"
$MAP_ID[211] = "Pongmei Valley"
$MAP_ID[212] = "Monastery Overlook"
$MAP_ID[213] = "Zen Daijun outpost"
$MAP_ID[214] = "Minister Chos Estate outpost"
$MAP_ID[215] = "Vizunah Square"
$MAP_ID[216] = "Nahpui Quarter outpost"
$MAP_ID[217] = "Tahnnakai Temple outpost"
$MAP_ID[218] = "Arborstone outpost"
$MAP_ID[219] = "Boreas Seabed outpost"
$MAP_ID[220] = "Sunjiang District outpost"
$MAP_ID[221] = "Fort Aspenwood"
$MAP_ID[222] = "The Eternal Grove outpost"
$MAP_ID[223] = "The Jade Quarry"
$MAP_ID[224] = "Gyala Hatchery outpost"
$MAP_ID[225] = "Raisu Palace outpost"
$MAP_ID[226] = "Imperial Sanctum outpost"
$MAP_ID[227] = "Unwaking Waters Luxon"
$MAP_ID[228] = "Grenz Frontier"
$MAP_ID[230] = "Amatz Basin Explorable"
$MAP_ID[230] = "Amatz Basin outpost"
$MAP_ID[233] = "Raisu Palace outpost"
$MAP_ID[234] = "The Aurios Mines outpost"
$MAP_ID[235] = "Panjiang Peninsula"
$MAP_ID[236] = "Kinya Province"
$MAP_ID[237] = "Haiju Lagoon"
$MAP_ID[238] = "Sunqua Vale"
$MAP_ID[239] = "Waijun Bazaar"
$MAP_ID[240] = "Bukdek Byway"
$MAP_ID[241] = "The Undercity"
$MAP_ID[242] = "Shing Jea Monastery"
$MAP_ID[243] = "Shing Jea Arena outpost"
$MAP_ID[244] = "Arborstone Explorable"
$MAP_ID[245] = "Minister Cho's Estate Explorable"
$MAP_ID[246] = "Zen Daijun Explorable"
$MAP_ID[247] = "Boreas Seabed Explorable"
$MAP_ID[248] = "Great Temple of Balthazar"
$MAP_ID[249] = "Tsumei Village"
$MAP_ID[250] = "Seitung Harbor"
$MAP_ID[251] = "Ran Musu Gardens"
$MAP_ID[252] = "Linnok Courtyard"
$MAP_ID[253] = "Dwayna Vs Grenth outpost"
$MAP_ID[256] = "Sunjiang District Explorable"
$MAP_ID[265] = "Nahpui Quarter Explorable"
$MAP_ID[266] = "Urgoz's Warren outpost"
$MAP_ID[272] = "Altrumm Ruins outpost"
$MAP_ID[273] = "Zos Shivros Channel outpost"
$MAP_ID[274] = "Dragons Throat outpost"
;~ Factions
$MAP_ID[275] = "Guild Hall - Isle of Weeping Stone"
$MAP_ID[276] = "Guild Hall - Isle of Jade"
$MAP_ID[277] = "Harvest Temple"
$MAP_ID[278] = "Breaker Hollow"
$MAP_ID[279] = "Leviathan Pits"
$MAP_ID[280] = "Isle of the Nameless"
$MAP_ID[281] = "Zaishen Challenge outpost"
$MAP_ID[282] = "Zaishen Elite outpost"
$MAP_ID[283] = "Maatu Keep"
$MAP_ID[284] = "Zin Ku Corridor"
$MAP_ID[285] = "Monastery Overlook"
$MAP_ID[286] = "Brauer Academy"
$MAP_ID[287] = "Durheim Archives"
$MAP_ID[288] = "Bai Paasu Reach"
$MAP_ID[289] = "Seafarer's Rest"
$MAP_ID[290] = "Bejunkan Pier"
$MAP_ID[291] = "Vizunah Square Local Quarter"
$MAP_ID[292] = "Vizunah Square Foreign Quarter"
$MAP_ID[293] = "Fort Aspenwood - Luxon"
$MAP_ID[294] = "Fort Aspenwood - Kurzick"
$MAP_ID[295] = "The Jade Quarry - Luxon"
$MAP_ID[296] = "The Jade Quarry - Kurzick"
$MAP_ID[297] = "Unwaking Waters Luxon"
$MAP_ID[298] = "Unwaking Waters Kurzick"
$MAP_ID[300] = "Etnaran Keys"
$MAP_ID[301] = "Raisu Pavillion"
$MAP_ID[302] = "Kaineng Docks"
$MAP_ID[303] = "The Marketplace"
$MAP_ID[307] = "The Deep outpost"
$MAP_ID[308] = "Ascalon Arena"
$MAP_ID[309] = "Annihilation"
$MAP_ID[310] = "Kill Count Training"
$MAP_ID[311] = "Annihilation"
$MAP_ID[312] = "Obelisk Annihilation Training"
$MAP_ID[313] = "Saoshang Trail"
$MAP_ID[314] = "Shiverpeak Arena"
$MAP_ID[318] = "D'Alessio Arena"
$MAP_ID[319] = "Amnoon Arena"
$MAP_ID[320] = "Fort Koga"
$MAP_ID[321] = "Heroes' Crypt"
$MAP_ID[322] = "Shiverpeak Arena"
$MAP_ID[328] = "Saltspray Beach - Luxon"
$MAP_ID[329] = "Saltspray Beach - Kurzick"
$MAP_ID[330] = "Heroes Ascent outpost"
$MAP_ID[331] = "Grenz Frontier - Luxon"
$MAP_ID[332] = "Grenz Frontier - Kurzick"
$MAP_ID[333] = "The Ancestral Lands - Luxon"
$MAP_ID[334] = "The Ancestral Lands - Kurzick"
$MAP_ID[335] = "Etnaran Keys - Luxon"
$MAP_ID[336] = "Etnaran Keys - Kurzick"
$MAP_ID[337] = "Kaanai Canyon - Luxon"
$MAP_ID[338] = "Kaanai Canyon - Kurzick"
$MAP_ID[339] = "D'Alessio Arena"
$MAP_ID[340] = "Amnoon Arena"
$MAP_ID[341] = "Fort Koga"
$MAP_ID[342] = "Heroes' Crypt"
$MAP_ID[343] = "Shiverpeak Arena"
$MAP_ID[344] = "The Hall of Heroes"
$MAP_ID[345] = "The Courtyard"
$MAP_ID[346] = "Scarred Earth"
$MAP_ID[347] = "The Underworld Explorable"
$MAP_ID[348] = "Tanglewood Copse"
$MAP_ID[349] = "Saint Anjeka's Shrine"
$MAP_ID[350] = "Eredon Terrace"
$MAP_ID[351] = "Divine Path"
$MAP_ID[352] = "Brawler's Pit"
$MAP_ID[353] = "Petrified Arena"
$MAP_ID[354] = "Seabed Arena"
$MAP_ID[355] = "Isle of Weeping Stone"
$MAP_ID[356] = "Isle of Jade"
$MAP_ID[357] = "Imperial Isle"
$MAP_ID[358] = "Isle of Meditation"
$MAP_ID[359] = "Guild Hall - Imperial Isle"
$MAP_ID[360] = "Guild Hall - Isle of Meditation"
$MAP_ID[361] = "Isle of Weeping Stone"
$MAP_ID[362] = "Isle of Jade"
$MAP_ID[363] = "Imperial Isle"
$MAP_ID[364] = "Isle of Meditation"
$MAP_ID[368] = "Dragon Arena outpost"
$MAP_ID[369] = "Jahai Bluffs"
$MAP_ID[371] = "Marga Coast"
$MAP_ID[373] = "Sunward Marches"
$MAP_ID[375] = "Barbarous Shore"
$MAP_ID[376] = "Camp Hojanu"
$MAP_ID[377] = "Bahdok Caverns"
$MAP_ID[378] = "Wehhan Terraces"
$MAP_ID[379] = "Dejarin Estate"
$MAP_ID[380] = "Arkjok Ward"
$MAP_ID[381] = "Yohlon Haven"
$MAP_ID[382] = "Gandara, the Moon Fortress"
$MAP_ID[384] = "The Floodplain of Mahnkelon"
$MAP_ID[385] = "Lion's Arch during Sunspears in Kryta"
$MAP_ID[386] = "Turai's Procession"
$MAP_ID[387] = "Sunspear Sanctuary"
$MAP_ID[388] = "Aspenwood Gate - Kurzick"
$MAP_ID[389] = "Aspenwood Gate - Luxon"
$MAP_ID[390] = "Jade Flats Kurzick"
$MAP_ID[391] = "Jade Flats Luxon"
$MAP_ID[392] = "Yatendi Canyons"
$MAP_ID[393] = "Chantry of Secrets"
$MAP_ID[394] = "Garden of Seborhin"
$MAP_ID[396] = "Mihanu Township"
$MAP_ID[397] = "Vehjin Mines"
$MAP_ID[398] = "Basalt Grotto"
$MAP_ID[399] = "Forum Highlands"
$MAP_ID[400] = "Kaineng Center during Sunspears in Cantha"
$MAP_ID[402] = "Resplendent Makuun"
$MAP_ID[403] = "Honur Hill"
$MAP_ID[404] = "Wilderness of Bahdza"
$MAP_ID[406] = "Vehtendi Valley"
$MAP_ID[407] = "Yahnur Market"
$MAP_ID[413] = "The Hidden City of Ahdashim"
$MAP_ID[414] = "The Kodash Bazaar"
$MAP_ID[415] = "Lion's gate"
$MAP_ID[419] = "The Mirror of Lyss"
$MAP_ID[420] = "Secure the Refuge"
$MAP_ID[421] = "Venta Cemetery outpost"
$MAP_ID[422] = "Bad Tide Rising, Kamadan Explorable"
$MAP_ID[424] = "Kodonur Crossroads outpost"
$MAP_ID[425] = "Rilohn Refuge outpost"
$MAP_ID[426] = "Pogahn Passage outpost"
$MAP_ID[427] = "Moddok Crevice outpost"
$MAP_ID[428] = "Tihark Orchard outpost"
$MAP_ID[429] = "Consulate"
$MAP_ID[430] = "Plains of Jarin"
$MAP_ID[431] = "Sunspear Great Hall"
$MAP_ID[432] = "Cliffs of Dohjok"
$MAP_ID[433] = "Dzagonur Bastion outpost"
$MAP_ID[434] = "Dasha Vestibule outpost"
$MAP_ID[435] = "Grand Court of Sebelkeh outpost"
$MAP_ID[436] = "Command Post"
$MAP_ID[437] = "Joko's Domain"
$MAP_ID[438] = "Bone Palace"
$MAP_ID[439] = "The Ruptured Heart"
$MAP_ID[440] = "The Mouth of Torment"
$MAP_ID[441] = "The Shattered Ravines"
$MAP_ID[442] = "Lair of the Forgotten"
$MAP_ID[443] = "Poisoned Outcrops"
$MAP_ID[444] = "The Sulfurous Wastes"
$MAP_ID[445] = "The Ebony Citadel of Mallyx"
$MAP_ID[446] = "The Alkali Pan"
$MAP_ID[447] = "A Land of Heroes"
$MAP_ID[448] = "Crystal Overlook"
$MAP_ID[449] = "Kamadan Jewel of Istan"
$MAP_ID[450] = "Gate of Torment"
$MAP_ID[455] = "Nightfallen Garden"
$MAP_ID[456] = "Chuurhir Fields"
$MAP_ID[457] = "Beknur Harbor"
$MAP_ID[461] = "The Underworld"
$MAP_ID[462] = "Heart of Abaddon"
$MAP_ID[463] = "The Underworld"
$MAP_ID[465] = "Nightfallen Jahai"
$MAP_ID[466] = "Depths of Madness"
$MAP_ID[467] = "Rollerbeetle Racing outpost"
$MAP_ID[468] = "Domain of Fear"
$MAP_ID[469] = "Gate of Fear"
$MAP_ID[470] = "Domain of Pain"
$MAP_ID[471] = "Bloodstone Fen Explorable"
$MAP_ID[472] = "Domain of Secrets"
$MAP_ID[473] = "Gate of Secrets"
$MAP_ID[474] = "Domain of Anguish"
$MAP_ID[476] = "Jennurs Horde outpost"
$MAP_ID[477] = "Nundu Bay outpost"
$MAP_ID[478] = "Gate of Desolation outpost"
$MAP_ID[479] = "Champions Dawn"
$MAP_ID[480] = "Ruins of Morah outpost"
$MAP_ID[481] = "Fahranur, The First City"
$MAP_ID[482] = "Bjora Marches"
$MAP_ID[483] = "Zehlon Reach"
$MAP_ID[484] = "Lahteda Bog"
$MAP_ID[485] = "Arbor Bay"
$MAP_ID[486] = "Issnur Isles"
$MAP_ID[487] = "Beknur Harbor"
$MAP_ID[488] = "Mehtani Keys"
$MAP_ID[489] = "Kodlonu Hamlet"
$MAP_ID[490] = "Island of Shehkah"
$MAP_ID[491] = "Jokanur Diggings outpost"
$MAP_ID[492] = "Blacktide Den outpost"
$MAP_ID[493] = "Consulate Docks outpost"
$MAP_ID[494] = "Gate of Pain outpost"
$MAP_ID[495] = "Gate of Madness outpost"
$MAP_ID[496] = "Abaddons Gate outpost"
$MAP_ID[497] = "Sunspear Arena outpost"
$MAP_ID[499] = "Ice Cliff Chasms"
$MAP_ID[500] = "Bokka Amphitheatre"
$MAP_ID[501] = "Riven Earth"
$MAP_ID[502] = "The Astralarium"
$MAP_ID[503] = "Throne of Secrets"
$MAP_ID[504] = "Churranu Island Arena"
$MAP_ID[505] = "Shing Jea Monastery mission"
$MAP_ID[506] = "Haiju Lagoon mission"
$MAP_ID[507] = "Jaya Bluffs mission"
$MAP_ID[508] = "Seitung Harbor mission"
$MAP_ID[509] = "Tsumei Village mission"
$MAP_ID[510] = "Seitung Harbor mission 2"
$MAP_ID[511] = "Tsumei Village mission 2"
$MAP_ID[513] = "Drakkar Lake"
$MAP_ID[529] = "Guild Hall - Uncharted Isle"
$MAP_ID[530] = "Guild Hall - Isle of Wurms"
$MAP_ID[531] = "Uncharted Isle"
$MAP_ID[532] = "Isle of Wurms"
$MAP_ID[533] = "Uncharted Isle"
$MAP_ID[534] = "Isle of Wurms"
$MAP_ID[536] = "Sunspear Arena"
$MAP_ID[537] = "Guild Hall - Corrupted Isle"
$MAP_ID[538] = "Guild Hall - Isle of Solitude"
$MAP_ID[539] = "Corrupted Isle"
$MAP_ID[540] = "Isle of Solitude"
$MAP_ID[541] = "Corrupted Isle"
$MAP_ID[542] = "Isle of Solitude"
$MAP_ID[543] = "Sun Docks"
$MAP_ID[544] = "Chahbek Village outpost"
$MAP_ID[545] = "Remains of Sahlahja outpost"
$MAP_ID[546] = "Jaga Moraine"
$MAP_ID[547] = "Bombardment"
$MAP_ID[548] = "Norrhart Moains"
$MAP_ID[549] = "Hero Battles outpost"
$MAP_ID[550] = "The Beachhead"
$MAP_ID[551] = "The Crossing"
$MAP_ID[552] = "Desert Sands"
$MAP_ID[553] = "Varajar Fells"
$MAP_ID[554] = "Dajkah Inlet outpost"
$MAP_ID[555] = "The Shadow Nexus outpost"
$MAP_ID[558] = "Sparkfly Swamp"
$MAP_ID[559] = "Gate of the Nightfallen Lands"
$MAP_ID[560] = "Cathedral of Flames"
$MAP_ID[561] = "The Troubled Keeper"
$MAP_ID[566] = "Verdant Cascades"
$MAP_ID[567] = "Cathedral of Flames"
$MAP_ID[568] = "Cathedral of Flames"
$MAP_ID[569] = "Magus Stones"
$MAP_ID[570] = "Catacombs of Kathandrax"
$MAP_ID[571] = "Catacombs of Kathandrax"
$MAP_ID[572] = "Alcazia Tangle"
$MAP_ID[573] = "Rragar's Menagerie"
$MAP_ID[574] = "Rragar's Menagerie"
$MAP_ID[575] = "Rragar's Menagerie"
$MAP_ID[576] = "Ooza Pit"
$MAP_ID[577] = "Slaver's Exile"
$MAP_ID[578] = "Oola's Lab"
$MAP_ID[579] = "Oola's Lab"
$MAP_ID[580] = "Oola's Lab"
$MAP_ID[581] = "Shards of Oor"
$MAP_ID[582] = "Shards of Oor"
$MAP_ID[583] = "Shards of Oor"
$MAP_ID[584] = "Arachni's Haunt"
$MAP_ID[585] = "Arachni's Haunt"
$MAP_ID[593] = "Fetid River"
$MAP_ID[596] = "Forgotten Shrines"
$MAP_ID[598] = "Antechamber"
$MAP_ID[604] = "Vloxen Excavations"
$MAP_ID[605] = "Vloxen Excavations"
$MAP_ID[606] = "Vloxen Excavations"
$MAP_ID[607] = "Heart of the Shiverpeaks"
$MAP_ID[608] = "Heart of the Shiverpeaks"
$MAP_ID[609] = "Heart of the Shiverpeaks"
$MAP_ID[612] = "Bloodstone Caves"
$MAP_ID[613] = "Bloodstone Caves"
$MAP_ID[614] = "Bloodstone Caves"
$MAP_ID[615] = "Bogroot Growths Level 1"
$MAP_ID[616] = "Bogroot Growths Level 2"
$MAP_ID[617] = "Raven's Point"
$MAP_ID[618] = "Raven's Point"
$MAP_ID[619] = "Raven's Point"
$MAP_ID[620] = "Slaver's Exile"
$MAP_ID[621] = "Slaver's Exile"
$MAP_ID[622] = "Slaver's Exile"
$MAP_ID[623] = "Slaver's Exile"
$MAP_ID[624] = "Vlox's Falls"
$MAP_ID[625] = "Battledepths"
$MAP_ID[628] = "Sepulchre of Dragrimmar"
$MAP_ID[629] = "Sepulchre of Dragrimmar"
$MAP_ID[630] = "Frostmaw's Burrows"
$MAP_ID[631] = "Frostmaw's Burrows"
$MAP_ID[632] = "Frostmaw's Burrows"
$MAP_ID[633] = "Frostmaw's Burrows"
$MAP_ID[634] = "Frostmaw's Burrows"
$MAP_ID[635] = "Darkrime Delves"
$MAP_ID[636] = "Darkrime Delves"
$MAP_ID[637] = "Darkrime Delves"
$MAP_ID[638] = "Gadd's Encampment"
$MAP_ID[639] = "Umbral Grotto"
$MAP_ID[640] = "Rata Sum"
$MAP_ID[641] = "Tarnished Haven"
$MAP_ID[642] = "Eye of the North outpost"
$MAP_ID[643] = "Sifhalla"
$MAP_ID[644] = "Gunnar's Hold"
$MAP_ID[645] = "Olafstead"
$MAP_ID[646] = "Hall of Monuments"
$MAP_ID[647] = "Dalada Uplands"
$MAP_ID[648] = "Doomlore Shrine"
$MAP_ID[649] = "Grothmar Wardowns"
$MAP_ID[650] = "Longeye's Ledge"
$MAP_ID[651] = "Sacnoth Valley"
$MAP_ID[652] = "Central Transfer Chamber"
$MAP_ID[653] = "Curse of the Nornbear"
$MAP_ID[654] = "Blood Washes Blood"
$MAP_ID[655] = "A Gate Too Far"
$MAP_ID[656] = "A Gate Too Far"
$MAP_ID[657] = "A Gate Too Far"
$MAP_ID[658] = "The Elusive Golemancer"
$MAP_ID[659] = "The Elusive Golemancer"
$MAP_ID[660] = "The Elusive Golemancer"
$MAP_ID[661] = "Finding the Bloodstone"
$MAP_ID[662] = "Finding the Bloodstone"
$MAP_ID[663] = "Finding the Bloodstone"
$MAP_ID[664] = "Genius Operated Living Enchanted Manifestation"
$MAP_ID[665] = "Against the Charr"
$MAP_ID[666] = "Warband of Brothers"
$MAP_ID[667] = "Warband of Brothers"
$MAP_ID[668] = "Warband of Brothers"
$MAP_ID[669] = "Assault the Stronghold"
$MAP_ID[670] = "Destruction's Depths"
$MAP_ID[671] = "Destruction's Depths"
$MAP_ID[672] = "Destruction's Depths"
$MAP_ID[673] = "A Time for Heroes"
$MAP_ID[674] = "Warband Training"
$MAP_ID[675] = "Boreal Station"
$MAP_ID[676] = "Catacombs of Kathandrax"
$MAP_ID[678] = "Attack of the Nornbear"
$MAP_ID[686] = "Polymock Coliseum"
$MAP_ID[687] = "Polymock Glacier"
$MAP_ID[688] = "Polymock Crossing"
$MAP_ID[690] = "Cold As Ice"
$MAP_ID[691] = "Beneath Lion's Arch"
$MAP_ID[692] = "Tunnels Below Cantha"
$MAP_ID[693] = "Caverns Below Kamadan"
$MAP_ID[695] = "Service: In Defense of the Eye"
$MAP_ID[696] = "Mano a Norn-o"
$MAP_ID[697] = "Service: Practice, Dummy"
$MAP_ID[698] = "Hero Tutorial"
$MAP_ID[700] = "The Norn Fighting Tournament"
$MAP_ID[701] = "Secret Lair of the Snowmen"
$MAP_ID[702] = "Norn Brawling Championship"
$MAP_ID[703] = "Kilroy's Punchout Training"
$MAP_ID[704] = "Fronis Irontoe's Lair"
$MAP_ID[705] = "The Justiciar's End"
$MAP_ID[707] = "The Great Norn Alemoot"
$MAP_ID[708] = "Varajar Fells"
$MAP_ID[710] = "Epilogue"
$MAP_ID[711] = "Insidious Remnants"
$MAP_ID[717] = "Attack on Jalis's Camp"
$MAP_ID[721] = "Costume Brawl outpost"
$MAP_ID[722] = "Whitefury Rapids"
$MAP_ID[723] = "Kysten Shore"
$MAP_ID[724] = "Deepway Ruins"
$MAP_ID[725] = "Plikkup Works"
$MAP_ID[726] = "Kilroy's Punchout Tournamet"
$MAP_ID[727] = "Special Ops: Flame Temple Corridor"
$MAP_ID[728] = "Special Ops: Dragon Gullet"
$MAP_ID[729] = "Special Ops: Gendich Courthouse"
$MAP_ID[770] = "The Tengu Accords"
$MAP_ID[771] = "The battle of Jahai"
$MAP_ID[772] = "The Flight North"
$MAP_ID[773] = "The Rise of the White Mantle"
$MAP_ID[781] = "Secret Lair of the Snowmen"
$MAP_ID[782] = "Secret Lair of the Snowmen"
$MAP_ID[783] = "Droknar's Forge Explorable"
$MAP_ID[784] = "Isle of the Nameless"
$MAP_ID[788] = "Deactivating R.O.X"
$MAP_ID[789] = "Deactivating P.O.X"
$MAP_ID[790] = "Deactivating N.O.X"
$MAP_ID[791] = "Secret Underground Lair"
$MAP_ID[792] = "Golem Tutorial Simulation"
$MAP_ID[793] = "Snowball Dominance"
$MAP_ID[794] = "Zaishen Menagerie Grounds"
$MAP_ID[795] = "Zaishen Menagerie outpost"
$MAP_ID[796] = "Codex Arena outpost"
$MAP_ID[806] = "The Underworld: Something Wicked This Way Comes"
$MAP_ID[807] = "The Underworld: Don't Fear the Reapers"
$MAP_ID[808] = "Lions Arch - Halloween"
$MAP_ID[809] = "Lions Arch - Wintersday"
$MAP_ID[810] = "Lions Arch - Canthan New Year"
$MAP_ID[811] = "Ascalon City - Wintersday"
$MAP_ID[812] = "Droknars Forge - Halloween"
$MAP_ID[813] = "Droknars Forge - Wintersday"
$MAP_ID[814] = "Tomb of the Primeval Kings - Halloween"
$MAP_ID[815] = "Shing Jea Monastery - Dragon Festival"
$MAP_ID[816] = "Shing Jea Monastery - Canthan New Year"
$MAP_ID[817] = "Kaineng Center"
$MAP_ID[818] = "Kamadan Jewel of Istan - Halloween"
$MAP_ID[819] = "Kamadan Jewel of Istan - Wintersday"
$MAP_ID[820] = "Kamadan Jewel of Istan - Canthan New Year"
$MAP_ID[821] = "Eye of the North outpost - Wintersday"
$MAP_ID[837] = "War in Kryta: Talmark Wilderness"
$MAP_ID[838] = "Trial of Zinn"
$MAP_ID[839] = "Divinity Coast Explorable"
$MAP_ID[840] = "Lion's Arch Keep"
$MAP_ID[841] = "D'Alessio Seaboard Explorable"
$MAP_ID[842] = "The Battle for Lion's Arch Explorable"
$MAP_ID[843] = "Riverside Province Explorable"
$MAP_ID[844] = "War in Kryta: Lion's Arch"
$MAP_ID[845] = "The Masoleum"
$MAP_ID[846] = "Rise"
$MAP_ID[847] = "Shadows in the Jungle"
$MAP_ID[848] = "A Vengeance of Blades"
$MAP_ID[849] = "Auspicious Beginnings"
$MAP_ID[854] = "Olfstead Explorable"
$MAP_ID[855] = "The Great Snowball Fight of the Gods Operation: Crush Spirits"
$MAP_ID[856] = "The Great Snowball Fight of the Gods Fighting in a Winter Wonderland"
$MAP_ID[857] = "Embark Beach"
$MAP_ID[860] = "What Waits in Shadow - Dragon's Throat Explorable"
$MAP_ID[861] = "A Chance Encounter: Kaineng Center"
$MAP_ID[862] = "Tracking the Corruption: Marketplace Explorable"
$MAP_ID[863] = "Cantha Courier: Bukdek Byway"
$MAP_ID[864] = "A Treaty's a Treaty: Tsumei Village"
$MAP_ID[865] = "Deadly Cargo: Seitung Harbor Explorable"
$MAP_ID[866] = "The Rescue Attempt: Tahnnakai Temple"
$MAP_ID[867] = "Viloence in the Streets: Wajjun Bazaar"
$MAP_ID[868] = "Sacred Psyche"
$MAP_ID[869] = "Calling All Thugs: Shadow's Passage"
$MAP_ID[870] = "Finding Jinnai: Altrumn Ruins"
$MAP_ID[871] = "Raid on Shing Jea Monastery: Shing Jea Monastery"
$MAP_ID[872] = "Raid on Kaineng Center: Kaineng Center"
$MAP_ID[873] = "Ministry of Oppression: Wajjun Bazaar"
$MAP_ID[874] = "The Final Confrontation"
$MAP_ID[875] = "Lakeside County: 1070 AE"
$MAP_ID[876] = "Ashford Catacombs: 1070 AE"
#endregion Map_IDs
