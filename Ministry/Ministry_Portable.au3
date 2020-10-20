#AutoIt3Wrapper_Run_AU3Check=n
AUTOITSETOPTION("TrayIconDebug", 1)

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GuiEdit.au3>
#include <GuiRichEdit.au3>
#include <ScrollBarsConstants.au3>
#include <Array.au3>
#include <Date.au3>
#include "GWA2.au3"
#include "Constants.au3"

#CS Note: your bar and profession don't matter, as long as you use Ebon Vanguard Battle of Honor and at least the following warrior skills:
Adrenaline gain skills: To the Limit, For Greater Justice
Hundred blades
Whirwind Attack

To improve your survivability, recommend:
1 self heal (e.g. healing spring, healing signet)
1 degen counter (e.g. HB, troll unguent, etc.)

High armor professions with self heals should be preferred (war, ranger, dervish).

Recomended bar (R/W): OgEUQ1aeV8RXF9F8E7gMH+G5iBAA (the skill order doesn't matter)
Seems to work best due to elemental resistance, good energy management and natural counters to trap damage.

Recommended hero bars are shown below but, again, the skill order doesn't matter.
They just need enough party heals to help you survive the initial attack, and later at least the following skills:
2-3 Party wide heals (Heal Party, Divine Healing, Protective was Kaolai, etc.)
1-2 Party wide condition removal (Martyr, Extinguish)

The heroes stay in range while you survive the trap damage and move out of ranger just before spike.
Cupcake or other speed boost is not recommended as it make you loose 20% of the ministry aggro, reducing your drops by an equal amount.

#CE

Global Const $ValuesToBeSaved = [ _
		[7, ""], _
		["HardMode", True], _
		["Consets", True], _
		["Scrolls", True], _
		["Stones", False], _
		["OpenChests", True], _
		["StoreRareSkins", True], _
		["AutoSell", True]]

Global $UseBags = 4
Global $Coords[0][2]
Global $iCoords[2]
Global $iBlocked
Global $RareSkinsCount 			= 0
Global $totalskills 			= 7
Global $bAsuraBlessing 			= false
Global $bDwarvenBlessing 		= false
Global $aPlayerAgent 			= GetAgentByID(-2)
Global $nBestRunTime			= 5000000
Global $nCurrentRunTime
Global $OpenedChestAgentIDs[1]
Global $array_weaponmods_ini [132][15]

#Region Main Script Functions
Initialize(CharacterSelector(), True, True, False)

GUI_Create()

Global Const $quest 				= 0x560
Global Const $dialog				= 2
Global Const $questreward			= 1


Global $intSkillEnergy[8] 			= [5, 5, 5, 5, 5, 0, 10, 0]
Global $intSkillCastTime[8] 		= [0, 0, 0, 0, 0, 1000, 1000, 2000]
Global $intSkillAdrenaline[8] 		= [0, 0, 0, 0, 0, 6, 6, 0]
Local $BotRunning 					= False
Global $TotalSeconds 				= 0
Global $CumulatedTime				= 0
Local $TimeTotal 					= TimerInit()
Local $TimeRun 						= 0
Local $TimeUpdater					= 0
Global $bCanContinue 				= True
GUI_SetOnStartFunc("onStart")
GUI_SetOnStopFunc("onStop")
GUI_SetOnResumeFunc("onResume")

While 1
	Sleep(250)
	While $BotRunning
		Sleep(4000)
		If GUI_IsSellChecked() and CountFreeSlots($UseBags) <10 then ClearInventory()
		Setup()
		Ministry()
	WEnd
WEnd

Func Setup()
	If $Map_ID[GetMapID()] <> "Kaineng Center" Then
		Out("Travelling to " & $Map_ID[$Kaineng_Center])
		TravelTo($Kaineng_Center)
		WaitMapLoading($Kaineng_Center)
	EndIf
	Sleep(1000)
	KickAllHeroes()
	AddHero($HERO_ID_Livia)		; BiP Healer			OAhjQgGaIP3hq6QbYKNncCvxJA
	AddHero($HERO_ID_Dunkoro)	; Martyr Healer			OwUUMym+SIOqk76KZTXR+I9gMAA
	AddHero($HERO_ID_Zhed)		; Renewal Prot			OgNCw8zTtgWEQ0i1j76K51B
	AddHero($HERO_ID_Master)	; PoD Healer 		 	OAhjYgHb4OP1qqdwSUGGmSzJHA
	AddHero($HERO_ID_Gwen) 		; Panic					OQhkAgBqAHKENw0TOgpTeGC4QwFD
	AddHero($HERO_ID_Norgu)		; Ineptitude			OQhkAgBsgGK0LQOAJACYempTRwFD
	AddHero($HERO_ID_Xandra)	; ST Rit				OACiAyk8gNtehzHH00a6MvYA
;	AddHero($HERO_ID_Razah)		; e-Surge				OQBDApwTOngcw0z0NEwpZgRI
	If GUI_IsHMChecked() = True then SwitchMode(2)
	Out("Moving out")
	MoveTo(1474, -1197, 0)
	TolSleep(500)
	GoToNPC(GetNearestNPCToCoords(2309, -1299))
	Sleep(1000)
	Dialog(0x00000084)
	Do
		Sleep(500)
	Until WaitMapLoading($Kaineng_Center_Quest)
	Out("Starting Run Num: " & $GUI_RunCounter + 1)
	GUI_SetRunCounter()
	Global $nCurrentRunTime = TimerInit()
	AdlibRegister("CurrentRunTime", 1000)
EndFunc

Func Ministry()
	If GUI_IsScrollsChecked() Then UseScroll()
	BraceForDamage()
	KillEnnemies()
	RunToStairs()
	SurviveAndKill()
	If $GUI_RunCounter > 0 Then
		GUI_SetAvgRunTime(AvgRunTime())
		GUI_SetBestRunTime(BestRunTime())
		AdlibUnregister("CurrentRunTime")
	EndIf
	TravelTo($Kaineng_Center)
	WaitMapLoading($Kaineng_Center)
EndFunc

Func BraceForDamage()
	CommandAll(-5536, -4765)
	CommandHero(1, -5399, -4965)
	CommandHero(2, -5877, -4479)
	CommandHero(3, -5669, -4640)
	MoveTo(-6550, -5382, 0)
	Sleep(22000)
	For $aHero = Ubound(Getparty()) - 1 to 0 Step -1
		For $aSkill = 1 to 8
			$aSkillStruct = GetSkillByID(GetSkillbarSkillID($aSkill, $aHero))
			If $aHero= 0 And IsSelfPrehealSkill(GetSkillbarSkillID($aSkill)) Then
				UseSkillEX($aSkill, 0)
				Sleep(DllStructGetData($aSkillStruct, 'Aftercast') * 1000)
				Continueloop
			Endif
			If DllStructGetData($aSkillStruct, 'Type') = $Ward Or DllStructGetData($aSkillStruct, 'Type') = $Ritual Then UseHeroSkill($aHero, $aSkill, 0)
		Next
	Next
EndFunc

Func KillEnnemies()
	Local $lMiku, $nearestenemy
	Local $lDeadLock, $lDeadLock2
	Do
		Sleep(200)
	Until GetNumberOfFoesInRangeOfAgent(-2, 2000) <> 0
	CancelAll()
	CancelHero(1)
	CancelHero(2)
	CancelHero(3)
	$lDeadLock = TimerInit()
	Do
		Out("Miku health at " & Floor(DllStructGetData($lMiku, 'HP') * 100) & " %")
		$target = GetBestTarget()
		CallTarget($target)
		Attack(GetNearestEnemyToAgent(-2))
		For $aSkill = 1 to 8
			If GetSkillbarSkillID($aSkill) = $Ebon_Battle_Standard_of_Honor Or GetSkillbarSkillID($aSkill) = $For_Great_Justice _
			Or GetSkillbarSkillID($aSkill) = $Hundred_Blades Then UseSkillEx($aSkill)
			If GetSkillbarSkillID($aSkill) = $To_The_Limit Then UseSkillEx($aSkill, GetNearestEnemyToAgent(-2))
		Next
		$lMiku = GetAgentbyID(58)
		HelpMiku($lMiku)
		For $aSkill = 1 to 8
			If GetSkillbarSkillID($aSkill) = $Whirlwind_Attack Then UseSkillEx($aSkill, GetNearestEnemyToAgent(-2))
		Next
	Until GetNumberOfFoesInRangeOfAgent(-2, 1250) = 0 Or DllStructGetData($lMiku, 'HP') = 0
	If DllStructGetData($lMiku, 'HP') = 0 Then Setup()
	CommandAll(-5884, -4746)
EndFunc

Func HelpMiku($aMiku)
	If DllStructGetData($aMiku, 'HP') < 0.4 Then
		Out("Miku in danger")
		For $aHero = 0 To Ubound(Getparty()) - 1
			For $aSkill = 1 to 8
				If GetIsDead($aMiku) Then Return
				If IsTargetedHealSkill(GetSkillbarSkillID($aSkill)) Then
					Out("Using hero skill " & SkillName(GetSkillbarSkillID($aSkill)) & "on Miku")
					UseHeroSkill($aHero, $aSkill, $aMiku)
					Sleep(200)
				Endif
				If DllStructGetData($aMiku, 'HP') > 0.8 Then
					Return True
				Endif
			Next
		Next
	EndIf
	Return True
EndFunc

Func RunToStairs()
	Local $aWaypoints[13][4] = [ _
	[-5961, -5082, 50, "Stairs"], _
	[-4790, -3441, 50, "Stairs"], _
	[-4608, -2120, 50, "Stairs"], _
	[-4222, -1545, 50, "Stairs"], _
	[-4664, -672, 50, "Stairs"], _
	[-3825, 134, 50, "Stairs"], _
	[-3067, 633, 50, "Stairs"], _
	[-2663, 644, 50, "Stairs"], _
	[-2214, -334, 50, "Stairs"], _
	[-878, -1877, 50, "Stairs"], _
	[-770, -3052, 50, "Stairs"], _
	[-699, -3773, 50, "Stairs"], _
	[-1012, -4130, 0, "Stairs"]]
	MoveandAggro($aWaypoints)
EndFunc

Func MoveandAggro($aWaypoints)
	$Me = GetAgentByID()
	Out($MAP_ID[GetMapID()])
	For $i = GetNearestWaypointIndex($aWaypoints) to UBound($aWaypoints) - 1 step 1
		$NearestWaypoint = GetNearestWaypointIndex($aWaypoints)
		If Getmaploading() == 2 Then Disconnected()
		If Wipe() = 1 Then
			GUI_SetWipes(GUI_GetWipes() + 1)
			$LastWaypoint = $i
			Out("We wiped at " & $aWaypoints[$LastWaypoint][3] & ", waiting for rezz")
			CancelAll()
			$timer = TimerInit()
			Do
				Sleep(500)
			Until GetPartyHealth() > 0.4 or TimerDiff($timer) > 15000
			$NearestWaypoint = GetNearestWaypointIndex($aWaypoints)
			$i = WipeManagement($aWaypoints, $NearestWaypoint, $LastWaypoint)
			Out("Restarting at : " & $aWaypoints[$i][3])
			ChangeWeaponSet(2)
		Endif
		Out("Nearest waypoint - " & $aWaypoints[$NearestWaypoint][3])
		Out("Moving to - " &  $aWaypoints[$i][3])

		Switch ($aWaypoints[$i][3])
			Case "Flag Heroes"
				CommandAll($aWaypoints[$i][0], $aWaypoints[$i][1])
				Out("Waiting until Heroes walk out of Range")
			Case "Flag Hero"
				CommandHero($aWaypoints[$i][2], $aWaypoints[$i][0], $aWaypoints[$i][1])
			Case "Unflag Heroes"
				CommandAll($aWaypoints[$i][0], $aWaypoints[$i][1])
				CancelAll()
				AggroMoveToEx($aWaypoints[$i][0], $aWaypoints[$i][1], $aWaypoints[$i][2])
			Case "Wait"
				Out("Waiting " & $aWaypoints[$i][2] / 1000 & "seconds")
				Sleep($aWaypoints[$i][2])
			Case "Stairs"
				MoveTo($aWaypoints[$i][0], $aWaypoints[$i][1], $aWaypoints[$i][2])
			Case Else
				AggroMoveToEx($aWaypoints[$i][0], $aWaypoints[$i][1], $aWaypoints[$i][2])
		Endswitch
	 Next
EndFunc

Func WipeManagement($aWaypoints, $NearestWaypoint, $LastWaypoint)
	Out("Last waypoint - " &$aWaypoints[$LastWaypoint][3])
	Switch GetMapID()
		Case $Kaineng_Center_Quest
			Return Ubound($aWaypoints) -1
	EndSwitch
	Return $NearestWaypoint
EndFunc

Func SurviveAndKill()
	Out("Survive and Kill")
	CommandAll(-5287, -4539)
	$lDeadLock = TimerInit()
	Do
		Survive()
		Out(GetNumberOfFoesInRangeOfAgent(-2, 300) & "enemies balled together")
		$MyHP = DllStructGetData(GetAgentByID(-2), 'HP')
	Until GetisDead(-2) Or GetNumberOfFoesInRangeOfAgent(-2, $adjacent) = 60 Or $MyHP < 0.4 or TimerDiff($lDeadLock) > 60000
	CommandAll(-6122, -4776)

	Kill()

	For $aSkill = 1 to 8
		If GetSkillbarSkillID($aSkill) = $Healing_Signet Then UseSkillEx($aSkill)
	Next
	PickUpLootEX()
	Sleep(1000)
	PickUpLootEX()
	Sleep(1000)
	If GetIsDead(-2) Then Return Out("Fail at the end")
	Sleep(1000)
EndFunc

Func Survive()
	$lMe = GetAgentByID(-2)
	$lDeadLock = TimerInit()
	Do
		Sleep(250)
	Until GetNumberOfFoesInRangeOfAgent() <> 0 Or TimerDiff($lDeadLock) > 32000
	For $aHero = Ubound(Getparty()) - 1 to 0 Step -1
		For $aSkill = 1 to 8
			If DllStructGetData($lMe, "HP") < 0.85 And IsPartyHealSkill(GetSkillbarSkillID($aSkill, $aHero)) Then UseHeroSkill($aHero, $aSkill, 0)
			If IsDllStruct(GetEffect(480)) And GetSkillbarSkillID($aSkill, $aHero) = $Extinguish Then UseHeroSkill($aHero, $aSkill, 0)
			If IsDllStruct(GetEffect(478)) And IsDllStruct(GetEffect(484)) And GetSkillbarSkillID($aSkill, $aHero) = $Martyr Then UseHeroSkill($aHero, $aSkill, 0)
			If $aHero = 0 Then
				If GetSkillbarSkillID($aSkill) = $Healing_Spring Or GetSkillbarSkillID($aSkill) = $Troll_Unguent Then UseSkillEx($aSkill)
				If GetSkillbarSkillID($aSkill) = $Healing_Signet Then UseSkillEx($aSkill)
			Endif
		Next
	Next
EndFunc

Func Kill()
	Out("Spiking")
	Do
		Sleep(250)
	Until GetEnergy(-2) > 15 Or GetIsDead(-2)
	For $aSkill = 1 to 8
		If GetSkillbarSkillID($aSkill) = $Ebon_Battle_Standard_of_Honor Or GetSkillbarSkillID($aSkill) = $For_Great_Justice Then UseSkillEx($aSkill)
	Next
	Do
		Sleep(250)
	Until GetEnergy(-2) > 5 Or GetIsDead(-2)
	For $aSkill = 1 to 8
		If GetSkillbarSkillID($aSkill) = $To_The_Limit Or GetSkillbarSkillID($aSkill) = $Hundred_Blades Then UseSkillEx($aSkill)
	Next
	$timer = TimerInit()
	Do
		Sleep (10)
	Until GetNumberOfHeroesInRangeOfAgent(-2, 5000) = 0 Or TimerDiff($timer) > 5000
	Out("Time to move heroes and spike - " & TimerDiff($timer) & "ms")
	For $aSkill = 1 to 8
		If GetSkillbarSkillID($aSkill) = $Whirlwind_Attack Then UseSkillEx($aSkill, GetNearestEnemyToAgent(-2))
	Next

 EndFunc
AdlibUnRegister("TimeUpdater")
AdlibRegister("UpdateStats")
#EndRegion Main Script Functions

#Region Movement & Aggro
Func CheckArea($aX, $aY)
	$ret = False
	$pX = DllStructGetData(GetAgentByID(-2), "X")
	$pY = DllStructGetData(GetAgentByID(-2), "Y")
	If ($pX < $aX + 500) And ($pX > $aX - 500) And ($pY < $aY + 500) And ($pY > $aY - 500) Then
		$ret = True
	EndIf
	Return $ret
EndFunc

Func GetNearestWaypointIndex($aWaypoints)
	Local $lNearestWaypoint, $lNearestDistance = 100000000
	Local $lDistance
	Local $iFinish = UBound($aWaypoints) - 1
	$Me = GetAgentByID()
	For $index = 0 To $iFinish
		Local $nWaypointX = $aWaypoints[$index][0]
		Local $nWaypointY = $aWaypoints[$index][1]
		$lDistance = (DllStructGetData($Me, 'X') - $nWaypointX) ^ 2 + (DllStructGetData($Me, 'Y') - $nWaypointY) ^ 2
		If $lDistance < $lNearestDistance Then
			$lNearestWaypoint = $Index
			$lNearestDistance = $lDistance
		EndIf
	Next
	Return $lNearestWaypoint
EndFunc

Func AggroMoveToEx($lX, $lY, $aRange = 1350, $lS = "", $flagheroes = false, $precastspirits = false, $bowpull = false)
	Local $lDeadlock
	Local $random = 100
	Local $lMe, $lBlocked, $OldPartyHP
	Move($lX, $lY, $random)
	$lDeadlock = TimerInit()
	$lMe = GetAgentByID(-2)
	$coordsX =DllStructGetData($lMe, "X")
	$coordsY = DllStructGetData($lMe, "Y")
	If GUI_IsChestChecked() Then CheckForChest()
	Do
		RndSleep(250)
		$aOldWaypointX = $coordsX
		$aOldWaypointY = $coordsY
		$nearestenemy = getbesttarget()
		$lDistance = GetDistance($nearestenemy, -2)
		If $lDistance < $aRange And DllStructGetData($nearestenemy, 'ID') <> 0 And Wipe() = 0 Then Fight($aRange, $flagheroes, $precastspirits, $bowpull)
		Do
			$OldPartyHP = GetPartyHealth()
			Sleep(200)
			If GetPartyHealth() <= 0.85 And GetPartyHealth() <> $OldPartyHP then Out("Waiting For Party Heal")
		Until GetPartyHealth() >= 0.85 or GetPartyHealth() = $OldPartyHP or Wipe() = 1
		RndSleep(250)
		$lMe = GetAgentByID(-2)
		$coordsX =DllStructGetData($lMe, "X")
		$coordsY = DllStructGetData($lMe, "Y")
		If $aOldWaypointX = $coordsX and $aOldWaypointY = $coordsY and Wipe() = 0 Then
			$iBlocked += 1
			If Wipe() = 0 then Move($coordsX, $coordsY, 500)
			Sleep(350)
			If Wipe() = 0 then Move($lX, $lY, $Random)
			If GetMapLoading() == 2 Then Disconnected()
		 EndIf
	Until ComputeDistance($coordsX, $coordsY, $lX, $lY) < 250  Or $lBlocked > 20 Or Wipe() = 1 Or TimerDiff($lDeadlock) > 60000
	If GUI_IsChestChecked() Then CheckForChest()
	Return True
EndFunc

 Func SkillSleep($nSkillID)
	$aSkill = GetSkillByID($nSkillID)
	$nActivationTime = DllStructGetData($aSkill, 'Activation') * 1000
	Sleep($nActivationTime + 100)
 EndFunc

Func GetNumberOfFoesInRangeOfAgent($aAgent = -2, $aRange = 1250)
	Local $lAgent, $lDistance
	Local $lCount = 0
	If Not IsDllStruct($aAgent) Then $aAgent = GetAgentByID($aAgent)
	For $i = 1 To GetMaxAgents()
		$lAgent = GetAgentByID($i)
		If BitAND(DllStructGetData($lAgent, 'typemap'), 262144) Then ContinueLoop
		If DllStructGetData($lAgent, 'Type') <> 0xDB Then ContinueLoop
		If DllStructGetData($lAgent, 'Allegiance') <> 3 Then ContinueLoop
		     If DllStructGetData($lAgent, 'HP') <= 0 Then ContinueLoop
		If BitAND(DllStructGetData($lAgent, 'Effects'), 0x0010) > 0 Then ContinueLoop
		$lDistance = GetDistance($lAgent)
		If $lDistance > $aRange Then ContinueLoop
		$lCount += 1
	Next
	Return $lCount
EndFunc

Func GetNumberOfHeroesInRangeOfAgent($aAgent = -2, $aRange = 1250)
	Local $lAgent, $lDistance
	Local $lCount = 0
	If Not IsDllStruct($aAgent) Then $aAgent = GetAgentByID($aAgent)
	For $i = 1 To GetMaxAgents()
		$lAgent = GetAgentByID($i)
		If BitAND(DllStructGetData($lAgent, 'typemap'), 262144) Then ContinueLoop
		If DllStructGetData($lAgent, 'Type') <> 0xDB Then ContinueLoop
		If DllStructGetData($lAgent, 'Allegiance') <> 1 Then ContinueLoop
		If DllStructGetData($lAgent, 'HP') <= 0 Then ContinueLoop
		If BitAND(DllStructGetData($lAgent, 'Effects'), 0x0010) > 0 Then ContinueLoop
		$lDistance = GetDistance($lAgent)
		If $lDistance > $aRange Then ContinueLoop
		$lCount += 1
	Next
	Return $lCount -1
EndFunc
#EndRegion

#Region Loot
Func CheckForChest()
   Local $AgentArray, $lAgent, $lExtraType
   Local $ChestFound = False
   If GetIsDead(-2) Then Return
   $AgentArray = GetAgentArraySorted(0x200)
   Out ("Looking for chests")
	For $i = 0 To UBound($AgentArray) - 1
	    $lAgent = GetAgentByID($AgentArray[$i][0])
		$lExtraType = DllStructGetData($lAgent, 'ExtraType')
		If $lExtraType <> 4582 And $lExtraType <> 8141 And $lExtraType <> 8934 And $lExtraType <> 70 And $lExtraType <> 2 Then ContinueLoop
		If _ArraySearch($OpenedChestAgentIDs, $AgentArray[$i][0]) == -1 Then
			If @error <> 6 Then ContinueLoop
			If $OpenedChestAgentIDs[0] = "" Then
				$OpenedChestAgentIDs[0] = $AgentArray[$i][0]
			Else
				_ArrayAdd($OpenedChestAgentIDs, $AgentArray[$i][0])
			EndIf
			$ChestFound = True
			Out ("Chest Found")
			ExitLoop
		EndIf
	Next
	If Not $ChestFound Then Return
	Out("opening chest")
	GoSignpost($lAgent)
	OpenChest()
	GUI_SetChestsOpened(GUI_GetChestsOpened() + 1)
	GUI_SetLockpicks(GetPicksCount())
	Sleep(GetPing() + 500)
	$AgentArray = GetAgentArraySorted(0x400)
	ChangeTarget($AgentArray[0][0])
	PickUpLootEX(3500)
EndFunc

Func PickupLootEx($iMaxDist = 2000, $PickupTorch = False)
	$lMe = GetAgentByID(-2)
	For $i = 1 To GetMaxAgents()
		$aAgent = GetAgentByID($i)
		If Not GetIsMovable($aAgent) Then ContinueLoop
		$aItem = GetItemByAgentID($i)
		$aItemX = DllStructGetData($aAgent, "x")
		$aItemY = DllStructGetData($aAgent, "y")
		If CanPickUpEx($aItem, $PickupTorch) And ComputeDistance(DllStructGetData($lMe, 'X'), DllStructGetData($lMe, 'Y'), $aItemX, $aItemY) < $iMaxDist Then
			MoveTo($aItemX, $aItemY)
			TolSleep(300)
			Do
				PickUpItem($aItem)
			Until Not GetAgentExists($aAgent) or GetIsDead(-2)
			$lDeadlock = TimerInit()
			While GetAgentExists($aAgent)
				Sleep(50)
				If GetIsDead(-2) Then Return False
				If TimerDiff($lDeadlock) > 25000 Then ExitLoop
			Wend
		EndIf
	Next
EndFunc
Func GetDungeonKey()
	local $aItem
	For $i = 1 To GetMaxAgents()
		$aAgent = GetAgentByID($i)
		If Not GetIsMovable($aAgent) Then ContinueLoop
		$aItem = GetItemByAgentID($i)
		If DllStructGetData($aItem, 'modelid') = 25410 Or DllStructGetData($aItem, 'modelid') = 25416 Then Exitloop
	Next
	If $i = GetMaxAgents() + 1 then Return 0
	Return $aItem
EndFunc
Func CanPickUpEx($aItem, $PickupTorch = false)
	$aPlayerID = DllStructGetData($aItem, 'playernumber')
	$aModelID = DllStructGetData($aItem, 'modelid')
	$aExtraID = DllStructGetData($aItem,'extraid')
	$aRarity = GetRarity($aItem)
	$aType = DllStructGetData($aItem,'Type')
	$aItemID = DllStructGetData($aItem, "id")
	$aReq = GetItemReq($aItem)
	Switch $aRarity
	  Case 2624
			GUI_SetGolds(GUI_GetGolds() + 1)
			Return True
	  Case 2627
			If $Map_ID[GetMapID()] <> "Bergen Hot Springs" Then
				$RareSkinsCount += 1
				GUI_SetRareSkins ($RareSkinsCount)
				Return True
			EndIf
	EndSwitch
	Switch $aModelID
		Case 25410, 25416
			Out("Grab Dungeon Key")
			Return True
		Case 22342
			If $PickupTorch then
				Out("Grab unlit torch")
				Return True
			Endif
		Case 36985
			Return True
		Case $Aegis_of_Aaaaarrrrrrggghhh, $Aegis_of_Terror, $Alsin_Walking_Stick, $Asterius_Scythe, $Beacon_of_the_Unseen, $Bogroot_Focus, $Bogroot_Staff, $Bortak_Bone_Cesta _
			,$Chaelse_Staff, $Claws_of_the_Kinslayer, $Cyndr_Heart, $Deeproot_Sorrow, $Divine_Ghostly_Staff, $Drago_Flatbow, $Drikard_Rod, $Dunshek_Purifier, $Dunshek_Purifier _
			,$Bow_of_the_Kinslayer, $Eldritch_Staff, $Firebrand, $Frozy_Staff, $Galigord_Stone_Staff, $Hanaku_Focus, $Harmony, $Iceblood_Warstaff _
			,$Heleyne_Insight, $Icy_Dragon_Sword, $Jacodo_Staff, $Kayin_Focus, $Keht_Aegis, $Kemil_Scepter, $Kepkhet_Refuge, $Kurg_Focus, $Law_and_Order, $Menzes_Ambition, $Peace _
			,$Quansong_Focus, $Rago_Flame_Staff, $Rajazan_Fervor, $Righteous_Fury, $Shen_Censure, $Spear_of_the_Hierophant, $Staff_of_Ruin, $Tanzit_Defender, $The_Mindsquall _
			,$The_Peacekeeper, $The_People_Resolve, $The_Rapture, $The_Soul_Reaper, $The_Thundermaw, $Vanahk_Staff, $Villar_Glove, $Vokur_Cane, $Willcrusher _
			,$Wingstorm, $Xun_Rao_Quill
			Out("Grabbing green item")
			$RareSkinsCount += 1
			GUI_SetRareSkins ($RareSkinsCount)
			Return True
		Case $BDS_Domination, $BDS_Fast_Casting, $BDS_Illusion, $BDS_Inspiration, $BDS_Soul_Reaping, $BDS_Blood, $BDS_Curses, $BDS_Death, $BDS_Air, $BDS_Earth, $BDS_Energy_Storage _
			,$BDS_Fire, $BDS_Water, $BDS_Divine, $BDS_Healing, $BDS_Protection, $BDS_Smiting, $BDS_Communing, $BDS_Spawning, $BDS_Restoration, $BDS_Channeling _
			,$Froggy_Domination, $Froggy_Fast_Casting, $Froggy_Illusion, $Froggy_Inspiration, $Froggy_Soul_Reaping, $Froggy_Blood, $Froggy_Curses, $Froggy_Death, $Froggy_Air, $Froggy_Earth, $Froggy_Energy_Storage _
			,$Froggy_Fire, $Froggy_Water, $Froggy_Divine, $Froggy_Healing, $Froggy_Protection, $Froggy_Smiting, $Froggy_Communing, $Froggy_Spawning, $Froggy_Restoration, $Froggy_Channeling _; All Froggies's
			,$Crystalline_Sword
			$RareSkinsCount += 1
			GUI_SetRareSkins ($RareSkinsCount)
			Return True
		Case 935, 936
			Return True
		Case 146
			If $aExtraID = 10 then; Black dye
				GUI_SetBlackDyes(GUI_GetBlackDyes() + 1)
				Return True
			Endif
	  Case 22751
		 GUI_SetDroppedLockpicks(GUI_GetDroppedLockpicks() + 1)
		 GUI_SetLockpicks(GetPicksCount())
		 Return True
	  Case 3256, 3746, 5594, 5595, 5611, 21233, 22279, 22280
		 Return True
	  Case 21786, 21787, 21788, 21789, 21790, 21791, 21792, 21793, 21794, 21795, 21796, 21797, 21798, 21799, 21800, 21801, 21802, 21803, 21804, 21805
		 GUI_SetTomes(GUI_GetTomes() + 1)
		 Return True
	  Case 910, 2513, 5585, 6049, 6366, 6367, 6375, 15477, 19171, 19172, 19173, 22190, 24593, 28435, 30648, 30855, 31020, 31145, 31146, 35124, 36682 _
			, 15528, 15479, 19170, 21492, 21812, 218013, 22644, 30208, 31150, 35125, 36681 _
			, 6376, 21809, 21810, 21813, 36683 _
			, 17060, 17061, 17062, 22269, 22752, 28431, 28432, 28433, 28436, 29431, 31151, 31152, 31153, 35121 _
			, 6370, 19039, 21488, 21489, 22191, 26784, 28433, 35127 _
			, 556, 18345, 21491, 22752, 37765, 21833, 28433, 28434
		 Return True
   EndSwitch
   Switch $aType
	  Case $TYPE_KEY, $TYPE_TROPHY_2 , $TYPE_TROPHY_2 , $TYPE_MATERIAL_AND_ZCOINS
		 Return True
	  Case $TYPE_SHIELD
		 If $aReq = 8 And GetItemMaxDmg($aItem) = 16 Then
			Return True
		 ElseIf $aReq = 7 And GetItemMaxDmg($aItem) = 15 Then
			Return True
		 ElseIf $aReq = 6 And GetItemMaxDmg($aItem) = 14 Then
			Return True
		 ElseIf $aReq = 5 And GetItemMaxDmg($aItem) = 13 Then
			Return True
		 ElseIf $aReq = 4 And GetItemMaxDmg($aItem) = 12 Then
			Return True
		 EndIf
	  EndSwitch
   Return False
EndFunc
#Endregion Loot

#Region Misc
Func UseScroll()
		$item = GetItemByModelID(21233)
		If (DllStructGetData($item, 'Bag') <> 0) Then
			Out("Using Lightbringer Scroll")
			UseItem($item)
			Return
		EndIf
		$item = GetItemByModelID(5595)
		If (DllStructGetData($item, 'Bag') <> 0) Then
			Out("Using Berserkers Insight")
			UseItem($item)
			Return
		EndIf
		$item = GetItemByModelID(5611)
		If (DllStructGetData($item, 'Bag') <> 0) Then
			Out("Using Slayers Insight")
			UseItem($item)
			Return
		EndIf
		$item = GetItemByModelID(5594)
		If (DllStructGetData($item, 'Bag') <> 0) Then
			Out("Using Heros Insight")
			UseItem($item)
			Return
		EndIf
		$item = GetItemByModelID(5975)
		If (DllStructGetData($item, 'Bag') <> 0) Then
			Out("Using Rampagers Insight")
			UseItem($item)
			Return
		EndIf
		$item = GetItemByModelID(5976)
		If (DllStructGetData($item, 'Bag') <> 0) Then
			Out("Using Hunters Insight")
			UseItem($item)
			Return
		EndIf
		$item = GetItemByModelID(5853)
		If (DllStructGetData($item, 'Bag') <> 0) Then
			Out("Using Adventurers Insight")
			UseItem($item)
			Return
		EndIf
		Out("No scrolls found")
EndFunc

Func GetPartyHealth()
	Local $aTotalTeamHP
	$aParty = GetParty()
	_ArrayDelete($aParty, 0)
	For $i = 0 to Ubound($aParty) - 1
		If GetIsDead($aParty[$i]) Then ContinueLoop
		$aAgent = $aParty[$i]
		$aAgentHP = Round(DllStructGetData($aAgent, 'HP'), 6)
		$aTotalTeamHP += $aAgentHP
	Next
		$nAverageHP = Round($aTotalTeamHP / Ubound($aParty), 6)
		Return $nAverageHP
	 EndFunc

Func GetAvailableRezz()
	Local $aHeroRezzSkills = 0
	For $aHeroNumber = 1 to GetHeroCount()
		If GetIsDead(GetHeroID($aHeroNumber)) or  GetAgentbyID(GetHeroID($aHeroNumber)) = 0 Then Continueloop
		For $aSkillSlot = 1 to 8
			$aSkill = GetSkillbarSkillID($aSkillSlot, $aHeroNumber)
	  		If IsResSkill($aSkill) Then $aHeroRezzSkills += 1
	    Next
    Next
    Return $aHeroRezzSkills
EndFunc

Func IsResSkill($aSkill)
	Switch $aSkill
		Case $By_Urals_Hammer, $We_Shall_Return, $Death_Pact_Signet, $Eternal_Aura, $Flesh_of_My_Flesh, $Junundu_Wail, $Light_of_Dwayna, $Lively_Was_Naomei, $Rebirth, $Renew_Life, _
			 $Restoration, $Restore_Life, $Resurrect, $Resurrection_Chant, $Resurrection_Signet, $Signet_of_Return, $Sunspear_Rebirth_Signet, $Unyielding_Aura, $Vengeance
			 Return True
		EndSwitch
    Return False
EndFunc

Func IsTargetedHealSkill($aSkill)
	Switch $aSkill
		Case $Gift_of_Health, $Heal_Other, $Healing_Ribbon, $Healing_Ring, $Healing_Seed, $Infuse_Health, $Jameis_Gaze, $Mend_Body_and_Soul, $Mystic_Healing _
			,$Spirit_Light, $Spirit_Transfer, $Word_of_Healing
			 Return True
		EndSwitch
    Return False
EndFunc

Func IsPartyHealSkill($aSkill)
	Switch $aSkill
		Case $Divine_Healing, $Heal_Party, $Heavens_Delight, $Protective_Was_Kaolai
			 Return True
		EndSwitch
    Return False
EndFunc

Func IsSelfPrehealSkill($aSkill)
	Switch $aSkill
		Case $Healing_Breeze, $Healing_Hands, $Mending, $Patient_Spirit, $Restful_Breeze, $Spirit_Bond, $Vigorous_Spirit _
			,$Conviction, $Faithful_Intervention, $Mystic_Regeneration, $Mystic_Vigor, $Pious_Renewal, $Vital_Boon, $Watchful_Intervention _
			,$Feigned_Neutrality, $Shadow_Refuge, $Shadow_Sanctuary, $Shroud_of_Distress _
			,$Healing_Spring, $Troll_Unguent _
			,$Blood_Renewal, $Hexers_Vigor
			 Return True
		EndSwitch
    Return False
EndFunc

Func IsBindingRitualSkill($aSkill)
	Switch $aSkill
		Case $Agony, $Anguish, $Bloodsong, $Destruction, $Disenchantment, $Dissonance, $Pain, $Shadowsong, $Signet_of_Spirits, $Vampirism, $Wanderlust, _
			 $Displacement, $Shelter, $Union
			 Return True
	EndSwitch
    Return False
EndFunc

Func Wipe()
	$DeadPartyMembers = 0
	For $i = 1 To GetHeroCount()
		If GetIsDead(GetHeroID($i)) = True Then $DeadPartyMembers += 1
    Next
	If GetIsDead(-2) And ( GetAvailableRezz() = 0 Or $DeadPartyMembers >= Ubound(GetParty()) -2) Or GetPartyHealth() < 0.1  then Return True
	Return False
 EndFunc

 Func GetAgentArraySorted($lAgentType)
	Local $lDistance
	Local $lAgentArray = GetAgentArray($lAgentType)
	Local $lReturnArray[1][2]
	Local $lMe = GetAgentByID(-2)
	Local $AgentID
	For $i = 1 To $lAgentArray[0]
		$lDistance = (DllStructGetData($lMe, 'X') - DllStructGetData($lAgentArray[$i], 'X')) ^ 2 + (DllStructGetData($lMe, 'Y') - DllStructGetData($lAgentArray[$i], 'Y')) ^ 2
		$AgentID = DllStructGetData($lAgentArray[$i], 'ID')
		ReDim $lReturnArray[$i][2]
		$lReturnArray[$i - 1][0] = $AgentID
		$lReturnArray[$i - 1][1] = Sqrt($lDistance)
	Next
	_ArraySort($lReturnArray, 0, 0, 0, 1)
	Return $lReturnArray
 EndFunc

Func GetAgentArraySortedEX($lAgentType)
	Local $lDistance
	Local $lAgentArray = GetAgentArray($lAgentType)
	Local $lReturnArray[1][2]
	Local $lMe = GetAgentByID(-2)
	Local $AgentID
	For $i = 1 To $lAgentArray[0]
		$AgentID = DllStructGetData($lAgentArray[$i], 'ID')
		$ExtraType = DllStructGetData($lAgentArray[$i], 'extratype')
		ReDim $lReturnArray[$i][2]
		$lReturnArray[$i - 1][0] = $AgentID
		$lReturnArray[$i - 1][1] = $ExtraType
	Next
	_ArraySort($lReturnArray, 0, 0, 0, 1)
	_ArrayDisplay($lReturnArray)
	Return $lReturnArray
 EndFunc

Func GetAgentNameArraySorted($lAgentName)
	Local $lDistance
	Local $lAgentArray = GetAgentArray($lAgentName)
	Local $lReturnArray[1][2]
	Local $lMe = GetAgentByID(-2)
	Local $AgentID
	For $i = 1 To $lAgentArray[0]
		$lDistance = (DllStructGetData($lMe, 'X') - DllStructGetData($lAgentArray[$i], 'X')) ^ 2 + (DllStructGetData($lMe, 'Y') - DllStructGetData($lAgentArray[$i], 'Y')) ^ 2
		$AgentID = DllStructGetData($lAgentArray[$i], 'ID')
		ReDim $lReturnArray[$i][2]
		$lReturnArray[$i - 1][0] = $AgentID
		$lReturnArray[$i - 1][1] = Sqrt($lDistance)
	Next
	_ArraySort($lReturnArray, 0, 0, 0, 1)
	Return $lReturnArray
 EndFunc
 #EndRegion Misc

#Region GUI Functions
Func GetPicksCount();Counts Lockpicks in your inventory
	Local $AmountPicks
	Local $aBag
	Local $aItem
	Local $i
	For $i = 1 To 4
		$aBag = GetBag($i)
		For $j = 1 To DllStructGetData($aBag, "Slots")
			$aItem = GetItemBySlot($aBag, $j)
			If DllStructGetData($aItem, "ModelID") == 22751 Then
				$AmountPicks += DllStructGetData($aItem, "Quantity")
			Else
				ContinueLoop
			EndIf
		Next
	Next
	Return $AmountPicks
EndFunc

Func Purgehook()
	If not $Rendering Then
		Out("PurgeHook")
		Enablerendering()
		Sleep(3000)
		Disablerendering()
	Endif
Endfunc

Func TimeUpdater()
	GUI_SetTotalTime(TimerDiff($TimeTotal))
	If $BotRunning Then
	EndIf
 EndFunc

Func CurrentRunTime()
	GUI_SetRunTime(TimerDiff($nCurrentRunTime))
 EndFunc

Func AvgRunTime()
   Local $CurrentRunTime = Floor(TimerDiff($nCurrentRunTime))
   $CumulatedTime += $CurrentRunTime
   Out("Cumulated Time: " & $CumulatedTime)
   Out("Run Counter: " & $GUI_RunCounter)
   $AvgRunTime = $CumulatedTime/$GUI_RunCounter
   Local $iHours, $iMins, $iSecs
   Local $TimeStamp = ""
   _TicksToTime($AvgRunTime, $iHours, $iMins, $iSecs)
   If $iHours < 10 Then $TimeStamp = "0"
   $TimeStamp &= $iHours & ":"
   If $iMins < 10 Then $TimeStamp &= "0"
   $TimeStamp &= $iMins & ":"
   If $iSecs < 10 Then $TimeStamp &= "0"
   $TimeStamp &= $iSecs
   Out($TimeStamp)
   Return $TimeStamp
EndFunc

Func BestRunTime()
	If TimerDiff($nCurrentRunTime) < $nBestRunTime Then $nBestRunTime = TimerDiff($nCurrentRunTime)
	Return $nBestRunTime
EndFunc

Func onStart()
	$BotRunning = True
	Out("Start pressed")
    Global $aPlayerAgent = GetAgentByID(-2)
	Global $iAsuraTitle = GetAsuraTitle()
	Global $iDeldrimorTitle = GetDeldrimorTitle()
    GUI_SetLockpicks(GetPicksCount())
	GUI_SetWipes(0)
    GUI_SetGolds(0)
	GUI_SetTomes(0)
	GUI_SetChestsOpened(0)
    AdlibRegister("TimeUpdater", 500)
	AdlibRegister("UpdateStats", 1000)
EndFunc

Func onStop()
	$BotRunning = False
	Out("Stop pressed")
EndFunc

Func onResume()
	$BotRunning = True
	Out("Resume pressed")
EndFunc

Func UpdateStats()
	GUI_SetAsura(GetAsuraTitle() - $iAsuraTitle)
	GUI_SetDeldrimor(GetDeldrimorTitle() - $iDeldrimorTitle)
EndFunc

Func CharacterSelector()
	Opt('GUIOnEventMode', False)
    Local $lWinList = WinList("[CLASS:ArenaNet_Dx_Window_Class; REGEXPTITLE:^\D+$]")
    Switch $lWinList[0][0]
        Case 0
            Exit MsgBox(0, "Error", "No Guild Wars Clients were found.")
        Case 1
            Opt('GUIOnEventMode', True)
            Return WinGetProcess($lWinList[1][1])
        Case Else
            Local $lCharStr = "", $lFirstChar
            For $winCount = 1 To $lWinList[0][0]
                MemoryOpen(WinGetProcess($lWinList[$winCount][1]))
                $lCharStr &= ScanForCharname()
                If $winCount = 1 Then $lFirstChar = GetCharname()
                If $winCount <> $lWinList[0][0] Then $lCharStr &= "|"
                MemoryClose()
            Next
            Local $GUICharSelector = GUICreate("Character Selector", 171, 64, 192, 124)
            Local $ComboCharSelector = GUICtrlCreateCombo("", 8, 8, 153, 25)
            Local $ButtonCharSelector = GUICtrlCreateButton("Use This Character", 8, 32, 153, 25)
            GUICtrlSetData($ComboCharSelector, $lCharStr, $lFirstChar)
            GUISetState(@SW_SHOW, $GUICharSelector)
            While 1
                Switch GUIGetMsg()
                    Case $ButtonCharSelector
                        Local $tmp = GUICtrlRead($ComboCharSelector)
                        GUIDelete($GUICharSelector)
						Opt('GUIOnEventMode', True)
                        Return $tmp
                    Case -3
                        Exit
                EndSwitch
                Sleep(25)
            WEnd
	  EndSwitch
    Opt('GUIOnEventMode', True)
EndFunc
#Endregion GUI Functions

#Region Checking Guild Hall
Func CheckGuildHall()
	If GetMapID() == $GH_ID_Warriors_Isle Then
		$WarriorsIsle = True
		Out("Warrior's Isle")
	EndIf
	If GetMapID() == $GH_ID_Hunters_Isle Then
		$HuntersIsle = True
		Out("Hunter's Isle")
	EndIf
	If GetMapID() == $GH_ID_Wizards_Isle Then
		$WizardsIsle = True
		Out("Wizard's Isle")
	EndIf
	If GetMapID() == $GH_ID_Burning_Isle Then
		$BurningIsle = True
		Out("Burning Isle")
	EndIf
	If GetMapID() == $GH_ID_Frozen_Isle Then
		$FrozenIsle = True
		Out("Frozen Isle")
	EndIf
	If GetMapID() == $GH_ID_Nomads_Isle Then
		$NomadsIsle = True
		Out("Nomad's Isle")
	EndIf
	If GetMapID() == $GH_ID_Druids_Isle Then
		$DruidsIsle = True
		Out("Druid's Isle")
	EndIf
	If GetMapID() == $GH_ID_Isle_Of_The_Dead Then
		$IsleOfTheDead = True
		Out("Isle of the Dead")
	EndIf
	If GetMapID() == $GH_ID_Isle_Of_Weeping_Stone Then
		$IsleOfWeepingStone = True
		Out("Isle of Weeping Stone")
	EndIf
	If GetMapID() == $GH_ID_Isle_Of_Jade Then
		$IsleOfJade = True
		Out("Isle of Jade")
	EndIf
	If GetMapID() == $GH_ID_Imperial_Isle Then
		$ImperialIsle = True
		Out("Imperial Isle")
	EndIf
	If GetMapID() == $GH_ID_Isle_Of_Meditation Then
		$IsleOfMeditation = True
		Out("Isle of Meditation")
	EndIf
	If GetMapID() == $GH_ID_Uncharted_Isle Then
		$UnchartedIsle = True
		Out("Uncharted Isle")
	EndIf
	If GetMapID() == $GH_ID_Isle_Of_Wurms Then
		$IsleOfWurms = True
		Out("Isle of Wurms")
		If $IsleOfWurms = True Then
			CheckIsleOfWurms()
		EndIf
	EndIf
	If GetMapID() == $GH_ID_Corrupted_Isle Then
		$CorruptedIsle = True
		Out("Corrupted Isle")
		If $CorruptedIsle = True Then
			CheckCorruptedIsle()
		EndIf
	EndIf
	If GetMapID() == $GH_ID_Isle_Of_Solitude Then
		$IsleOfSolitude = True
		Out("Isle of Solitude")
	EndIf
EndFunc

Func CheckIsleOfWurms()
	If CheckArea(8682, 2265) Then
		OUT("Start Point 1")
		If Waypoint1() Then
			Return True
		Else
			Return False
		EndIf
	ElseIf CheckArea(6697, 3631) Then
		OUT("Start Point 2")
		If Waypoint2() Then
			Return True
		Else
			Return False
		EndIf
	ElseIf CheckArea(6716, 2929) Then
		OUT("Start Point 3")
		If Waypoint3() Then
			Return True
		Else
			Return False
		EndIf
	Else
		OUT("Where the fuck am I?")
		Return False
	EndIf
EndFunc

Func CheckCorruptedIsle()
	If CheckArea(-4830, 5985) Then
		OUT("Start Point 1")
		If Waypoint4() Then
			Return True
		Else
			Return False
		EndIf
	ElseIf CheckArea(-3778, 6214) Then
		OUT("Start Point 2")
		If Waypoint5() Then
			Return True
		Else
			Return False
		EndIf
	ElseIf CheckArea(-5209, 4468) Then
		OUT("Start Point 3")
		If Waypoint6() Then
			Return True
		Else
			Return False
		EndIf
	Else
		OUT("Where the fuck am I?")
		Return False
	EndIf
EndFunc

Func Waypoint1()
	MoveTo(8263, 2971)
EndFunc

Func Waypoint2()
	MoveTo(7086, 2983)
	MoveTo(8263, 2971)
EndFunc

Func Waypoint3()
	MoveTo(8263, 2971)
EndFunc

Func Waypoint4()
	MoveTo(-4830, 5985)
EndFunc

Func Waypoint5()
	MoveTo(-3778, 6214)
EndFunc

Func Waypoint6()
	MoveTo(-4352, 5232)
EndFunc

Func Chest()
	Dim $Waypoints_by_XunlaiChest[16][3] = [ _
			[$BurningIsle, -5285, -2545], _
			[$DruidsIsle, -1792, 5444], _
			[$FrozenIsle, -115, 3775], _
			[$HuntersIsle, 4855, 7527], _
			[$IsleOfTheDead, -4562, -1525], _
			[$NomadsIsle, 4630, 4580], _
			[$WarriorsIsle, 4224, 7006], _
			[$WizardsIsle, 4858, 9446], _
			[$ImperialIsle, 2184, 13125], _
			[$IsleOfJade, 8614, 2660], _
			[$IsleOfMeditation, -726, 7630], _
			[$IsleOfWeepingStone, -1573, 7303], _
			[$CorruptedIsle, -4868, 5998], _
			[$IsleOfSolitude, 4478, 3055], _
			[$IsleOfWurms, 8586, 3603], _
			[$UnchartedIsle, 4522, -4451]]
	For $i = 0 To (UBound($Waypoints_by_XunlaiChest) - 1)
		If ($Waypoints_by_XunlaiChest[$i][0] == True) Then
			Do
				GenericRandomPath($Waypoints_by_XunlaiChest[$i][1], $Waypoints_by_XunlaiChest[$i][2], Random(60, 80, 2))
			Until CheckArea($Waypoints_by_XunlaiChest[$i][1], $Waypoints_by_XunlaiChest[$i][2])
		EndIf
	Next
	Local $aChestName = "Xunlai Chest"
	Local $lChest = GetAgentByName($aChestName)
	If IsDllStruct($lChest) Then
		Out("Going to " & $aChestName)
		GoToNPC($lChest)
		RndSleep(Random(3000, 4200))
	EndIf
EndFunc

Func Merchant()
	Dim $Waypoints_by_Merchant[29][3] = [ _
			[$BurningIsle, -4439, -2088], _
			[$BurningIsle, -4772, -362], _
			[$BurningIsle, -3637, 1088], _
			[$BurningIsle, -2506, 988], _
			[$DruidsIsle, -2037, 2964], _
			[$FrozenIsle, 99, 2660], _
			[$FrozenIsle, 71, 834], _
			[$FrozenIsle, -299, 79], _
			[$HuntersIsle, 5156, 7789], _
			[$HuntersIsle, 4416, 5656], _
			[$IsleOfTheDead, -4066, -1203], _
			[$NomadsIsle, 5129, 4748], _
			[$WarriorsIsle, 4159, 8540], _
			[$WarriorsIsle, 5575, 9054], _
			[$WizardsIsle, 4288, 8263], _
			[$WizardsIsle, 3583, 9040], _
			[$ImperialIsle, 1415, 12448], _
			[$ImperialIsle, 1746, 11516], _
			[$IsleOfJade, 8825, 3384], _
			[$IsleOfJade, 10142, 3116], _
			[$IsleOfMeditation, -331, 8084], _
			[$IsleOfMeditation, -1745, 8681], _
			[$IsleOfMeditation, -2197, 8076], _
			[$IsleOfWeepingStone, -3095, 8535], _
			[$IsleOfWeepingStone, -3988, 7588], _
			[$CorruptedIsle, -4670, 5630], _
			[$IsleOfSolitude, 2970, 1532], _
			[$IsleOfWurms, 8284, 3578], _
			[$UnchartedIsle, 1503, -2830]]
	For $i = 0 To (UBound($Waypoints_by_Merchant) - 1)
		If ($Waypoints_by_Merchant[$i][0] == True) Then
			Do
				GenericRandomPath($Waypoints_by_Merchant[$i][1], $Waypoints_by_Merchant[$i][2], Random(60, 80, 2))
			Until CheckArea($Waypoints_by_Merchant[$i][1], $Waypoints_by_Merchant[$i][2])
		EndIf
	Next
	Out("Going to Merchant")
	Do
        RndSleep(Random(250,500))
		Local $Me = GetAgentByID(-2)
        Local $guy = GetNearestNPCToCoords(DllStructGetData($Me, 'X'), DllStructGetData($Me, 'Y'))
    Until DllStructGetData($guy, 'Id') <> 0
    ChangeTarget($guy)
    RndSleep(Random(250,500))
    GoNPC($guy)
    RndSleep(Random(250,500))
    Do
        MoveTo(DllStructGetData($guy, 'X'), DllStructGetData($guy, 'Y'), 40)
        RndSleep(Random(500,750))
        GoNPC($guy)
        RndSleep(Random(250,500))
        Local $Me = GetAgentByID(-2)
    Until ComputeDistance(DllStructGetData($Me, 'X'), DllStructGetData($Me, 'Y'), DllStructGetData($guy, 'X'), DllStructGetData($guy, 'Y')) < 250
    RndSleep(Random(1000,1500))
EndFunc

Func RuneTrader()
	Dim $Waypoints_by_RuneTrader[34][3] = [ _
			[$BurningIsle, -3793, 1069], _
			[$BurningIsle, -2798, -74], _
			[$DruidsIsle, -989, 4493], _
			[$FrozenIsle, 71, 834], _
			[$FrozenIsle, 99, 2660], _
			[$FrozenIsle, -385, 3254], _
			[$FrozenIsle, -983, 3195], _
			[$HuntersIsle, 3267, 6557], _
			[$IsleOfTheDead, -3654, -2400], _
			[$NomadsIsle, 3142, 4289], _
			[$NomadsIsle, -514, 3581], _
			[$WarriorsIsle, 4108, 8404], _
			[$WarriorsIsle, 3403, 6583], _
			[$WarriorsIsle, 3415, 5617], _
			[$WizardsIsle, 3610, 9619], _
			[$ImperialIsle, 759, 11465], _
			[$IsleOfJade, 8919, 3459], _
			[$IsleOfJade, 6789, 2781], _
			[$IsleOfJade, 6566, 2248], _
			[$IsleOfMeditation, -166, 7939], _
			[$IsleOfMeditation, -696, 8825], _
			[$IsleOfMeditation, -879, 9430], _
			[$IsleOfMeditation, -32, 10382], _
			[$IsleOfWeepingStone, -3988, 7588], _
			[$IsleOfWeepingStone, -3095, 8535], _
			[$IsleOfWeepingStone, -2431, 7946], _
			[$IsleOfWeepingStone, -1618, 8797], _
			[$CorruptedIsle, -4424, 5645], _
			[$CorruptedIsle, -4443, 4679], _
			[$IsleOfSolitude, 3172, 3728], _
			[$IsleOfSolitude, 3240, 5433], _
			[$IsleOfWurms, 8353, 2995], _
			[$IsleOfWurms, 6825, 4537], _
			[$UnchartedIsle, 2530, -2403]]
	For $i = 0 To (UBound($Waypoints_by_RuneTrader) - 1)
		If ($Waypoints_by_RuneTrader[$i][0] == True) Then
			Do
				GenericRandomPath($Waypoints_by_RuneTrader[$i][1], $Waypoints_by_RuneTrader[$i][2], Random(60, 80, 2))
			Until CheckArea($Waypoints_by_RuneTrader[$i][1], $Waypoints_by_RuneTrader[$i][2])
		EndIf
	Next
	Out("Going to Rune Trader")
	Do
        RndSleep(Random(250,500))
		Local $Me = GetAgentByID(-2)
        Local $guy = GetNearestNPCToCoords(DllStructGetData($Me, 'X'), DllStructGetData($Me, 'Y'))
    Until DllStructGetData($guy, 'Id') <> 0
    ChangeTarget($guy)
    RndSleep(Random(250,500))
    GoNPC($guy)
    RndSleep(Random(250,500))
    Do
        MoveTo(DllStructGetData($guy, 'X'), DllStructGetData($guy, 'Y'), 40)
        RndSleep(Random(500,750))
        GoNPC($guy)
        RndSleep(Random(250,500))
        Local $Me = GetAgentByID(-2)
    Until ComputeDistance(DllStructGetData($Me, 'X'), DllStructGetData($Me, 'Y'), DllStructGetData($guy, 'X'), DllStructGetData($guy, 'Y')) < 250
    RndSleep(Random(1000,1500))
 EndFunc

 Func RareMaterialTrader()
	Dim $Waypoints_by_RareMatTrader[36][3] = [ _
			[$BurningIsle, -3793, 1069], _
			[$BurningIsle, -2798, -74], _
			[$DruidsIsle, -989, 4493], _
			[$FrozenIsle, 71, 834], _
			[$FrozenIsle, 99, 2660], _
			[$FrozenIsle, -385, 3254], _
			[$FrozenIsle, -983, 3195], _
			[$HuntersIsle, 3267, 6557], _
			[$IsleOfTheDead, -3415, -1658], _
			[$NomadsIsle, 1930, 4129], _
			[$NomadsIsle, 462, 4094], _
			[$WarriorsIsle, 4108, 8404], _
			[$WarriorsIsle, 3403, 6583], _
			[$WarriorsIsle, 3415, 5617], _
			[$WizardsIsle, 3610, 9619], _
			[$ImperialIsle, 759, 11465], _
			[$IsleOfJade, 8919, 3459], _
			[$IsleOfJade, 6789, 2781], _
			[$IsleOfJade, 6566, 2248], _
			[$IsleOfMeditation, -2197, 8076], _
			[$IsleOfMeditation, -1745, 8681], _
			[$IsleOfMeditation, -331, 8084], _
			[$IsleOfMeditation, 422, 8769], _
			[$IsleOfMeditation, 549, 9531], _
			[$IsleOfWeepingStone, -3988, 7588], _
			[$IsleOfWeepingStone, -3095, 8535], _
			[$IsleOfWeepingStone, -2431, 7946], _
			[$IsleOfWeepingStone, -1618, 8797], _
			[$CorruptedIsle, -4424, 5645], _
			[$CorruptedIsle, -4443, 4679], _
			[$IsleOfSolitude, 3172, 3728], _
			[$IsleOfSolitude, 3221, 4789], _
			[$IsleOfSolitude, 3745, 4542], _
			[$IsleOfWurms, 8353, 2995], _
			[$IsleOfWurms, 6708, 3093], _
			[$UnchartedIsle, 2530, -2403]]
	For $i = 0 To (UBound($Waypoints_by_RareMatTrader) - 1)
		If ($Waypoints_by_RareMatTrader[$i][0] == True) Then
			Do
				GenericRandomPath($Waypoints_by_RareMatTrader[$i][1], $Waypoints_by_RareMatTrader[$i][2], Random(60, 80, 2))
			Until CheckArea($Waypoints_by_RareMatTrader[$i][1], $Waypoints_by_RareMatTrader[$i][2])
		EndIf
	Next
	Local $lRareTrader = "Rare Material Trader"
	Local $lRare = GetAgentByName($lRareTrader)
	If IsDllStruct($lRare) Then
		Out("Going to " & $lRareTrader)
		GoToNPC($lRare)
		RndSleep(Random(3000, 4200))
	EndIf
	TraderRequest($MATID)
	Sleep(500 + 3 * GetPing())
	While GetGoldCharacter() > 20*1000
		TraderRequest($MATID)
		Sleep(500 + 3 * GetPing())
		TraderBuy()
	WEnd
EndFunc

Func GenericRandomPath($aPosX, $aPosY, $aRandom = 50, $STOPSMIN = 1, $STOPSMAX = 5, $NUMBEROFSTOPS = -1)
	If $NUMBEROFSTOPS = -1 Then $NUMBEROFSTOPS = Random($STOPSMIN, $STOPSMAX, 1)
	Local $lAgent = GetAgentByID(-2)
	Local $MYPOSX = DllStructGetData($lAgent, "X")
	Local $MYPOSY = DllStructGetData($lAgent, "Y")
	Local $DISTANCE = ComputeDistance($MYPOSX, $MYPOSY, $aPosX, $aPosY)
	If $NUMBEROFSTOPS = 0 Or $DISTANCE < 200 Then
		MoveTo($aPosX, $aPosY, $aRandom)
	Else
		Local $M = Random(0, 1)
		Local $N = $NUMBEROFSTOPS - $M
		Local $STEPX = (($M * $aPosX) + ($N * $MYPOSX)) / ($M + $N)
		Local $STEPY = (($M * $aPosY) + ($N * $MYPOSY)) / ($M + $N)
		MoveTo($STEPX, $STEPY, $aRandom)
		GenericRandomPath($aPosX, $aPosY, $aRandom, $STOPSMIN, $STOPSMAX, $NUMBEROFSTOPS - 1)
	EndIf
EndFunc
#EndRegion Checking Guild Hall

#Region Agents
Func X($aAgent = GetAgentPtr(-2))
	If IsPtr($aAgent) <> 0 Then
		Return MemoryRead($aAgent + 116, 'float')
	ElseIf IsDllStruct($aAgent) <> 0 Then
		Return DllStructGetData($aAgent, 'X')
	Else
		Return MemoryRead(GetAgentPtr($aAgent) + 116, 'float')
	EndIf
EndFunc

Func Y($aAgent = GetAgentPtr(-2))
	If IsPtr($aAgent) <> 0 Then
		Return MemoryRead($aAgent + 120, 'float')
	ElseIf IsDllStruct($aAgent) <> 0 Then
		Return DllStructGetData($aAgent, 'Y')
	Else
		Return MemoryRead(GetAgentPtr($aAgent) + 120, 'float')
	EndIf
EndFunc
#EndRegion Agents

#Region GUI

; String Extensions
Func String_GetTimeStamp($ShowSeconds)
	Local $TimeStamp = "[" & @HOUR & ":" & @MIN
	If $ShowSeconds Then $TimeStamp &= ":" & @SEC
	$TimeStamp &= "]"
	Return $TimeStamp
EndFunc

; GUI Helpfunctions
Func GUI_GetCtrlInfo($ControlID, $GuiHasMenu = ($GUI_idMenuFile <> 0), $GUI = $GUI)
	If $GUI = 0 Then Return SetError(1, 0)
	Local $SizeBuffer 	= WinGetPos(GUICtrlGetHandle($ControlID))
	Local $SizeGUI 		= WinGetPos($GUI)
	$SizeBuffer[0] -= $SizeGUI[0]
	$SizeBuffer[1] -= $SizeGUI[1]
	If GUI_HasStyle($WS_CAPTION) Then $SizeBuffer[1] -= $AUTOIT_GUI_HEADER_SIZE
	If $GuiHasMenu Then	$SizeBuffer[1] -= $AUTOIT_GUI_MENUBAR_SIZE
	Return $SizeBuffer
EndFunc

Func GUI_HasStyle($Style, $GUI = $GUI)
	Return BitAND(GUIGetStyle($GUI)[0], $Style) = $Style
EndFunc

Func GUI_IsChecked($ControlID)
	Return BitAND(GUICtrlRead($ControlID), $GUI_CHECKED) = $GUI_CHECKED
EndFunc


; GUI Creation
Func GUI_Create()

	Opt("GUIOnEventMode", True)
	Global Const $INI_PATH 		= @ScriptDir & "\Settings.ini"

	Global Const $AUTOIT_GUI_HEADER_SIZE 	= 26
	Global Const $AUTOIT_GUI_MENUBAR_SIZE 	= 20
	Global Const $AUTOIT_GUI_EDITBOX_Y_FIX 	= 1
	Global Const $GUI_WIDTH				= 390
	Global Const $GUI_HEIGHT			= 312
	Global Const $GUI_FONTSIZE 			= 9
	Global Const $GUI_BORDERSIZE 		= 8
	Global Const $GUI_CONTROL_SPACE 	= 4
	Global Const $GUI_STATUSBAR_WIDTH	= [60, 200, -1]
	Global Const $GUI_BUTTON_WIDTH 		= 140
	Global Const $GUI_BUTTON_HEIGHT 	= 25
	Global Const $GUI_LABEL_WIDTH 		= 120
	Global Const $GUI_LABEL_HEIGHT 		= 20
	Global Const $GUI_CHECKBOX_WIDTH 	= 110
	Global Const $GUI_CHECKBOX_HEIGHT 	= 16

	; GUI Vars
	Global $GUI = 0
	Global $GUI_hStatusBar = 0
	Global $GUI_RunCounter = 0
	Global $GUI_idMenuFile				= 0
	Global $GUI_idMenuFile_idSettings 	= 0
	Global $GUI_idMenuFile_idModSettings= 0
	Global $GUI_idMenuFile_idOpenDir	= 0
	Global $GUI_idMenuFile_idExit		= 0
	Global $GUI_idButtonStart			= 0
	Global $GUI_idButtonStop			= 0
	Global $GUI_idButtonResume			= 0
	Global $GUI_idButtonStart_Function	= ""
	Global $GUI_idButtonStop_Function	= ""
	Global $GUI_idButtonResume_Function	= ""
	Global $GUI_GroupSettings = 0
	Global $GUI_GroupSettings_CheckRender		= 0
	Global $Rendering								= 1
	Global $GUI_GroupSettings_CheckPurge		= 0
	Global $GUI_GroupSettings_CheckHM			= 0
	Global $GUI_GroupSettings_CheckConsets		= 0
	Global $GUI_GroupSettings_CheckScrolls		= 0
	Global $GUI_GroupSettings_CheckStones		= 0
	Global $GUI_GroupSettings_CheckChests		= 0
	Global $GUI_GroupSettings_CheckRareSkins	= 0
	Global $GUI_GroupSettings_CheckSell			= 0
	Global $GUI_idConsole = 0
	Global $GUI_GroupGeneralStats = 0
	Global $GUI_GroupGeneralStats_lblDeldrimor 		= 0
	Global $GUI_GroupGeneralStats_lblAsura			= 0
	Global $GUI_GroupGeneralStats_lblLockpicks 		= 0
	Global $GUI_GroupGeneralStats_lblWipes 			= 0
	Global $GUI_GroupGeneralStats_lblDeldrimorVal 	= 0
	Global $GUI_GroupGeneralStats_lblAsuraVal 		= 0
	Global $GUI_GroupGeneralStats_lblLockpicksVal 	= 0
	Global $GUI_GroupGeneralStats_lblWipesVal		= 0
	Global $GUI_GroupGeneralStats_lblBestRunTimeVal	= 0
	Global $GUI_GroupGeneralStats_lblAvgRunTimeVal	= 0
	Global $GUI_GroupDropStatistics = 0
	Global $GUI_GroupDropStatistics_lblRareSkins 	= 0
	Global $GUI_GroupDropStatistics_lblGolds 		= 0
	Global $GUI_GroupDropStatistics_lblLockpicks 	= 0
	Global $GUI_GroupDropStatistics_lblChests 		= 0
	Global $GUI_GroupDropStatistics_lblDyes 		= 0
	Global $GUI_GroupDropStatistics_lblTomes 		= 0
	Global $GUI_GroupDropStatistics_lblRareSkinsVal	= 0
	Global $GUI_GroupDropStatistics_lblGoldsVal 	= 0
	Global $GUI_GroupDropStatistics_lblLockpicksVal	= 0
	Global $GUI_GroupDropStatistics_lblChestsVal 	= 0
	Global $GUI_GroupDropStatistics_lblDyesVal 		= 0
	Global $GUI_GroupDropStatistics_lblTomesVal	= 0


	Local $temp1[4]
	Local $temp2[4]
	local $tempCtrlTop = 0
	Local Static $Title = "Ministry Green Farm v0.1 - By Logicdoor"
	$GUI = GUICreate($Title, $GUI_WIDTH, $GUI_HEIGHT)
	GUISetOnEvent($GUI_EVENT_CLOSE, "GUI_onExit")
	GUISetFont($GUI_FONTSIZE)
	GUISetBkColor(0xAAAAAA)
	$GUI_idMenuFile = GUICtrlCreateMenu("File")
	$GUI_idMenuFile_idSettings 	= GUICtrlCreateMenuItem("Settings", $GUI_idMenuFile)
	$GUI_idMenuFile_idModSettings 	= GUICtrlCreateMenuItem("Mod Settings", $GUI_idMenuFile)
	$GUI_idMenuFile_idOpenDir 	= GUICtrlCreateMenuItem("Open Dir", $GUI_idMenuFile)
	$GUI_idMenuFile_idExit 		= GUICtrlCreateMenuItem("Exit"    , $GUI_idMenuFile)
	GUICtrlSetOnEvent($GUI_idMenuFile_idSettings, "GUI_MenuCallback")
	GUICtrlSetOnEvent($GUI_idMenuFile_idModSettings, "GUI_MenuCallback")
	GUICtrlSetOnEvent($GUI_idMenuFile_idOpenDir, "GUI_MenuCallback")
	GUICtrlSetOnEvent($GUI_idMenuFile_idExit, "GUI_MenuCallback")

	#Region Gui Grid Row 1
	$GUI_idButtonStart 	= GUICtrlCreateButton("Start" , $GUI_BORDERSIZE, $GUI_BORDERSIZE, $GUI_BUTTON_WIDTH, $GUI_BUTTON_HEIGHT, -1, $WS_EX_LAYOUTRTL)
	$GUI_idButtonStop 	= GUICtrlCreateButton("Stop"  , $GUI_BORDERSIZE, $GUI_BORDERSIZE, $GUI_BUTTON_WIDTH, $GUI_BUTTON_HEIGHT, -1, $WS_EX_LAYOUTRTL)
	$GUI_idButtonResume 	= GUICtrlCreateButton("Resume", $GUI_BORDERSIZE, $GUI_BORDERSIZE, $GUI_BUTTON_WIDTH, $GUI_BUTTON_HEIGHT, -1, $WS_EX_LAYOUTRTL)
	GUICtrlSetOnEvent($GUI_idButtonStart, "GUI_ButtonCallback")
	GUICtrlSetOnEvent($GUI_idButtonStop, "GUI_ButtonCallback")
	GUICtrlSetOnEvent($GUI_idButtonResume, "GUI_ButtonCallback")
	GUI_HideButton($GUI_idButtonStop  , True)
	GUI_HideButton($GUI_idButtonResume, True)
	#EndRegion Gui Grid Row 1

	#Region Gui Grid Row 2
	$tempCtrlTop = $GUI_CHECKBOX_HEIGHT + $GUI_CONTROL_SPACE
	$temp1 = GUI_GetCtrlInfo($GUI_idButtonStart)
	$GUI_GroupSettings = GUICtrlCreateGroup("Settings", $GUI_BORDERSIZE		, $temp1[1] + $temp1[3] + $GUI_CONTROL_SPACE, $GUI_LABEL_WIDTH + $GUI_BORDERSIZE * 2,  20 + $tempCtrlTop * 9, -1, $WS_EX_TRANSPARENT)
	$GUI_GroupSettings_CheckRender  	= GUICtrlCreateCheckbox("Stop Rendering"	, $GUI_BORDERSIZE * 2, $temp1[1] + $temp1[3] + 20 + $tempCtrlTop * 0, $GUI_CHECKBOX_WIDTH, $GUI_CHECKBOX_HEIGHT)
	$GUI_GroupSettings_CheckPurge   	= GUICtrlCreateCheckbox("Purge"  			, $GUI_BORDERSIZE * 2, $temp1[1] + $temp1[3] + 20 + $tempCtrlTop * 1, $GUI_CHECKBOX_WIDTH, $GUI_CHECKBOX_HEIGHT)
	$GUI_GroupSettings_CheckHM			= GUICtrlCreateCheckbox("Hard Mode"			, $GUI_BORDERSIZE * 2, $temp1[1] + $temp1[3] + 20 + $tempCtrlTop * 2, $GUI_CHECKBOX_WIDTH, $GUI_CHECKBOX_HEIGHT)
	$GUI_GroupSettings_CheckConsets		= GUICtrlCreateCheckbox("Consets"			, $GUI_BORDERSIZE * 2, $temp1[1] + $temp1[3] + 20 + $tempCtrlTop * 3, $GUI_CHECKBOX_WIDTH, $GUI_CHECKBOX_HEIGHT)
	$GUI_GroupSettings_CheckScrolls 	= GUICtrlCreateCheckbox("Scrolls"			, $GUI_BORDERSIZE * 2, $temp1[1] + $temp1[3] + 20 + $tempCtrlTop * 4, $GUI_CHECKBOX_WIDTH, $GUI_CHECKBOX_HEIGHT)
	$GUI_GroupSettings_CheckStones  	= GUICtrlCreateCheckbox("Stones"		  	, $GUI_BORDERSIZE * 2, $temp1[1] + $temp1[3] + 20 + $tempCtrlTop * 5, $GUI_CHECKBOX_WIDTH, $GUI_CHECKBOX_HEIGHT)
	$GUI_GroupSettings_CheckChests  	= GUICtrlCreateCheckbox("Open Chests"		, $GUI_BORDERSIZE * 2, $temp1[1] + $temp1[3] + 20 + $tempCtrlTop * 6, $GUI_CHECKBOX_WIDTH, $GUI_CHECKBOX_HEIGHT)
	$GUI_GroupSettings_CheckRareSkins	= GUICtrlCreateCheckbox("Store Rare Skins"	, $GUI_BORDERSIZE * 2, $temp1[1] + $temp1[3] + 20 + $tempCtrlTop * 7, $GUI_CHECKBOX_WIDTH, $GUI_CHECKBOX_HEIGHT)
	$GUI_GroupSettings_CheckSell    	= GUICtrlCreateCheckbox("Auto-Sell"	  		, $GUI_BORDERSIZE * 2, $temp1[1] + $temp1[3] + 20 + $tempCtrlTop * 8, $GUI_CHECKBOX_WIDTH, $GUI_CHECKBOX_HEIGHT)
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	GUICtrlSetOnEvent($GUI_GroupSettings_CheckRender, "ToggleRendering")
	GUICtrlSetOnEvent($GUI_GroupSettings_CheckPurge, "Purgehook")
	$temp2 = GUI_GetCtrlInfo($GUI_GroupSettings)
	$GUI_idConsole = GUICtrlCreateEdit("", _
		$GUI_BORDERSIZE + $GUI_CONTROL_SPACE + ($temp1[2] > $temp2[2] ? $temp1[2] : $temp2[2]), _
		$temp1[1] + $AUTOIT_GUI_EDITBOX_Y_FIX, _
		$GUI_WIDTH - $GUI_BORDERSIZE * 2 - $GUI_CONTROL_SPACE - ($temp1[2] > $temp2[2] ? $temp1[2] : $temp2[2]), _
		$temp1[3] + $temp2[3] + $AUTOIT_GUI_EDITBOX_Y_FIX, BitOR($ES_MULTILINE, $ES_READONLY, $ES_AUTOVSCROLL, $WS_VSCROLL))
	GUICtrlSetBkColor($GUI_idConsole, 0x000000)
	GUICtrlSetColor($GUI_idConsole, 0xFFFFFF)
	#EndRegion Gui GridRow 2

	#Region Gui Grid Row 3
	$tempCtrlTop = $GUI_LABEL_HEIGHT
	$GUI_GroupGeneralStats = GUICtrlCreateGroup("General Statistics", $GUI_BORDERSIZE, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE, $GUI_LABEL_WIDTH * 1.45 + $GUI_BORDERSIZE * 2, 20 + $tempCtrlTop * 6 + $GUI_CONTROL_SPACE)
    GUICtrlSetFont($GUI_GroupGeneralStats, 9, 800, 0, "Arial")
	$GUI_GroupGeneralStats_lblDeldrimor 	= GUICtrlCreateLabel("Deldrimor:"		, $GUI_BORDERSIZE * 2, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE + 20 + $tempCtrlTop * 0, $GUI_LABEL_WIDTH, $GUI_LABEL_HEIGHT)
	$GUI_GroupGeneralStats_lblAsura			= GUICtrlCreateLabel("Asura Points:"	, $GUI_BORDERSIZE * 2, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE + 20 + $tempCtrlTop * 1, $GUI_LABEL_WIDTH * 0.75, $GUI_LABEL_HEIGHT)
	$GUI_GroupGeneralStats_lblLockpicks		= GUICtrlCreateLabel("Lockpicks:"		, $GUI_BORDERSIZE * 2, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE + 20 + $tempCtrlTop * 2, $GUI_LABEL_WIDTH * 0.75, $GUI_LABEL_HEIGHT)
	$GUI_GroupGeneralStats_lblWipes	 		= GUICtrlCreateLabel("Wipes:"			, $GUI_BORDERSIZE * 2, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE + 20 + $tempCtrlTop * 3, $GUI_LABEL_WIDTH * 0.75, $GUI_LABEL_HEIGHT)
	$GUI_GroupGeneralStats_lblBestRunTime	= GUICtrlCreateLabel("Best Run Time:"	, $GUI_BORDERSIZE * 2, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE + 20 + $tempCtrlTop * 4, $GUI_LABEL_WIDTH * 0.75, $GUI_LABEL_HEIGHT)
	$GUI_GroupGeneralStats_lblAvgRunTime	= GUICtrlCreateLabel("Avg Run Time:"	, $GUI_BORDERSIZE * 2, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE + 20 + $tempCtrlTop * 5, $GUI_LABEL_WIDTH * 0.75, $GUI_LABEL_HEIGHT)
	$GUI_GroupGeneralStats_lblDeldrimorVal 	= GUICtrlCreateLabel("0", 			$GUI_BORDERSIZE * 2 + $GUI_LABEL_WIDTH * 0.75, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE + 20 + $tempCtrlTop * 0, $GUI_LABEL_WIDTH * 0.5, $GUI_LABEL_HEIGHT, $SS_RIGHT)
	$GUI_GroupGeneralStats_lblAsuraVal 		= GUICtrlCreateLabel("0", 			$GUI_BORDERSIZE * 2 + $GUI_LABEL_WIDTH * 0.75, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE + 20 + $tempCtrlTop * 1, $GUI_LABEL_WIDTH * 0.5, $GUI_LABEL_HEIGHT, $SS_RIGHT)
	$GUI_GroupGeneralStats_lblLockpicksVal 	= GUICtrlCreateLabel("0", 			$GUI_BORDERSIZE * 2 + $GUI_LABEL_WIDTH * 0.75, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE + 20 + $tempCtrlTop * 2, $GUI_LABEL_WIDTH * 0.5, $GUI_LABEL_HEIGHT, $SS_RIGHT)
	$GUI_GroupGeneralStats_lblWipesVal 		= GUICtrlCreateLabel("0", 			$GUI_BORDERSIZE * 2 + $GUI_LABEL_WIDTH * 0.75, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE + 20 + $tempCtrlTop * 3, $GUI_LABEL_WIDTH * 0.5, $GUI_LABEL_HEIGHT, $SS_RIGHT)
	$GUI_GroupGeneralStats_lblBestRunTimeVal= GUICtrlCreateLabel("00:00:00", 	$GUI_BORDERSIZE * 2 + $GUI_LABEL_WIDTH * 0.75, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE + 20 + $tempCtrlTop * 4, $GUI_LABEL_WIDTH * 0.5, $GUI_LABEL_HEIGHT, $SS_RIGHT)
	$GUI_GroupGeneralStats_lblAvgRunTimeVal = GUICtrlCreateLabel("00:00:00", 	$GUI_BORDERSIZE * 2 + $GUI_LABEL_WIDTH * 0.75, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE + 20 + $tempCtrlTop * 5, $GUI_LABEL_WIDTH * 0.5, $GUI_LABEL_HEIGHT, $SS_RIGHT)
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	$temp1 = GUI_GetCtrlInfo($GUI_GroupGeneralStats)
	$GUI_GroupDropStatistics = GUICtrlCreateGroup("Drop Statistics", $temp1[0] + $temp1[2] + $GUI_CONTROL_SPACE, $temp2[1] + $temp2[3] + $GUI_CONTROL_SPACE, $GUI_LABEL_WIDTH * 1.45 + $GUI_BORDERSIZE * 2, 20 + $tempCtrlTop * 6 + $GUI_CONTROL_SPACE)
	GUICtrlSetFont($GUI_GroupDropStatistics, 9, 800, 0, "Arial")
	$temp1 = GUI_GetCtrlInfo($GUI_GroupDropStatistics)
	$GUI_GroupDropStatistics_lblRareSkins 		= GUICtrlCreateLabel("BoneStaves:"		, $temp1[0] + $GUI_CONTROL_SPACE, $temp1[1] + 20 + $tempCtrlTop * 0, $GUI_LABEL_WIDTH , $GUI_LABEL_HEIGHT)
	$GUI_GroupDropStatistics_lblGolds 			= GUICtrlCreateLabel("Gold Items:"		, $temp1[0] + $GUI_CONTROL_SPACE, $temp1[1] + 20 + $tempCtrlTop * 1, $GUI_LABEL_WIDTH , $GUI_LABEL_HEIGHT)
	$GUI_GroupDropStatistics_lblLockpicks 		= GUICtrlCreateLabel("Lockpicks:"		, $temp1[0] + $GUI_CONTROL_SPACE, $temp1[1] + 20 + $tempCtrlTop * 2, $GUI_LABEL_WIDTH , $GUI_LABEL_HEIGHT)
	$GUI_GroupDropStatistics_lblChests 			= GUICtrlCreateLabel("Chests Opened:"	, $temp1[0] + $GUI_CONTROL_SPACE, $temp1[1] + 20 + $tempCtrlTop * 3, $GUI_LABEL_WIDTH , $GUI_LABEL_HEIGHT)
	$GUI_GroupDropStatistics_lblDyes 			= GUICtrlCreateLabel("Black Dye:"		, $temp1[0] + $GUI_CONTROL_SPACE, $temp1[1] + 20 + $tempCtrlTop * 4, $GUI_LABEL_WIDTH , $GUI_LABEL_HEIGHT)
	$GUI_GroupDropStatistics_lblTomes 			= GUICtrlCreateLabel("Tomes:"			, $temp1[0] + $GUI_CONTROL_SPACE, $temp1[1] + 20 + $tempCtrlTop * 5, $GUI_LABEL_WIDTH , $GUI_LABEL_HEIGHT)
	$GUI_GroupDropStatistics_lblRareSkinsVal 	= GUICtrlCreateLabel("0", $temp1[0] + $GUI_CONTROL_SPACE + $GUI_LABEL_WIDTH * 0.75, $temp1[1] + 20 + $tempCtrlTop * 0, $GUI_LABEL_WIDTH * 0.5, $GUI_LABEL_HEIGHT, $SS_RIGHT)
	$GUI_GroupDropStatistics_lblGoldsVal 		= GUICtrlCreateLabel("0", $temp1[0] + $GUI_CONTROL_SPACE + $GUI_LABEL_WIDTH * 0.75, $temp1[1] + 20 + $tempCtrlTop * 1, $GUI_LABEL_WIDTH * 0.5, $GUI_LABEL_HEIGHT, $SS_RIGHT)
	$GUI_GroupDropStatistics_lblLockpicksVal	= GUICtrlCreateLabel("0", $temp1[0] + $GUI_CONTROL_SPACE + $GUI_LABEL_WIDTH * 0.75, $temp1[1] + 20 + $tempCtrlTop * 2, $GUI_LABEL_WIDTH * 0.5, $GUI_LABEL_HEIGHT, $SS_RIGHT)
	$GUI_GroupDropStatistics_lblChestsVal 		= GUICtrlCreateLabel("0", $temp1[0] + $GUI_CONTROL_SPACE + $GUI_LABEL_WIDTH * 0.75, $temp1[1] + 20 + $tempCtrlTop * 3, $GUI_LABEL_WIDTH * 0.5, $GUI_LABEL_HEIGHT, $SS_RIGHT)
	$GUI_GroupDropStatistics_lblDyesVal 		= GUICtrlCreateLabel("0", $temp1[0] + $GUI_CONTROL_SPACE + $GUI_LABEL_WIDTH * 0.75, $temp1[1] + 20 + $tempCtrlTop * 4, $GUI_LABEL_WIDTH * 0.5, $GUI_LABEL_HEIGHT, $SS_RIGHT)
	$GUI_GroupDropStatistics_lblTomesVal		= GUICtrlCreateLabel("0", $temp1[0] + $GUI_CONTROL_SPACE + $GUI_LABEL_WIDTH * 0.75, $temp1[1] + 20 + $tempCtrlTop * 5, $GUI_LABEL_WIDTH * 0.5, $GUI_LABEL_HEIGHT, $SS_RIGHT)
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	#EndRegion Gui GridRow 2

	$temp1 = GUI_GetCtrlInfo($GUI_GroupDropStatistics, False)
	$temp2 = WinGetPos($GUI)
	WinMove($GUI, "", $temp2[0], $temp2[1], $temp2[2], $temp1[1] + $temp1[3] + $GUI_BORDERSIZE + $AUTOIT_GUI_HEADER_SIZE + 25)
    $GUI_hStatusBar = _GUICtrlStatusBar_Create($GUI)
    _GUICtrlStatusBar_SetParts($GUI_hStatusBar, $GUI_STATUSBAR_WIDTH)
    _GUICtrlStatusBar_SetText($GUI_hStatusBar, "Runs: 0", 0)
    _GUICtrlStatusBar_SetText($GUI_hStatusBar, "Run Time: 00:00:00", 1)
    _GUICtrlStatusBar_SetText($GUI_hStatusBar, "Total Time: 00:00:00", 2)

	#Region INI
	GUI_IniCreate()
	If Not GUI_IniIsComplete() Then
		FileDelete($INI_PATH)
		Out("INI file incompleted. Recreating it.")
		GUI_IniCreate()
	EndIf
	GUICtrlSetState($GUI_GroupSettings_CheckHM, (IniRead($INI_PATH, "Settings", "Hard Mode", True)) ? $GUI_UNCHECKED : 0)
	GUICtrlSetState($GUI_GroupSettings_CheckConsets, (IniRead($INI_PATH, "Settings", "Consets", True)) ? $GUI_UNCHECKED : 0)
	GUICtrlSetState($GUI_GroupSettings_CheckScrolls, (IniRead($INI_PATH, "Settings", "Scrolls", True)) ? $GUI_CHECKED : 0)
	GUICtrlSetState($GUI_GroupSettings_CheckStones, (IniRead($INI_PATH, "Settings", "Stones", True)) ? $GUI_UNCHECKED : 0)
	GUICtrlSetState($GUI_GroupSettings_CheckChests, (IniRead($INI_PATH, "Settings", "OpenChests", True)) ? $GUI_UNCHECKED : 0)
	GUICtrlSetState($GUI_GroupSettings_CheckRareSkins, (IniRead($INI_PATH, "Settings", "StoreRareSkins", True)) ? $GUI_CHECKED : 0)
	GUICtrlSetState($GUI_GroupSettings_CheckSell, (IniRead($INI_PATH, "Settings", "AutoSell", True)) ? $GUI_CHECKED : 0)
	#EndRegion INI

	GUISetState(@SW_SHOW)
EndFunc


; Events
Func GUI_onExit()
	Exit
EndFunc

Func GUI_ButtonCallback()
	If Not @GUI_CtrlHandle = $GUI Then Return
	Local $idButton = @GUI_CtrlId
	Switch($idButton)
		Case $GUI_idButtonStart
			GUI_HideButton($GUI_idButtonStart, True)
			GUI_HideButton($GUI_idButtonStop, False)
			GUI_HideButton($GUI_idButtonResume, True)
			Call($GUI_idButtonStart_Function)
		Case $GUI_idButtonStop
			GUI_HideButton($GUI_idButtonStop, True)
			GUI_HideButton($GUI_idButtonResume, False)
			Call($GUI_idButtonStop_Function)
		Case $GUI_idButtonResume
			GUI_HideButton($GUI_idButtonStop, False)
			GUI_HideButton($GUI_idButtonResume, True)
			Call($GUI_idButtonResume_Function)
	EndSwitch
EndFunc

Func GUI_MenuCallback()
	Local $idMenuItem = @GUI_CtrlId
	Switch($idMenuItem)
		Case $GUI_idMenuFile_idSettings
			Run("notepad.exe " & $INI_PATH)
		Case $GUI_idMenuFile_idModSettings
			ModSelection()
	    Case $GUI_idMenuFile_idOpenDir
			Run("Explorer.exe " & @ScriptDir)
		Case $GUI_idMenuFile_idExit
			Exit
	EndSwitch
EndFunc


; Getters
Func GUI_IsPurgeChecked()
	Return GUI_IsChecked($GUI_GroupSettings_CheckPurge)
EndFunc
Func GUI_IsHMChecked()
	Return GUI_IsChecked($GUI_GroupSettings_CheckHM)
EndFunc
Func GUI_IsScrollsChecked()
	Return GUI_IsChecked($GUI_GroupSettings_CheckScrolls)
EndFunc
Func GUI_IsChestChecked()
	Return GUI_IsChecked($GUI_GroupSettings_CheckChests)
EndFunc
Func GUI_IsRareSkinsChecked()
	Return GUI_IsChecked($GUI_GroupSettings_CheckRareSkins)
EndFunc
Func GUI_IsSellChecked()
	Return GUI_IsChecked($GUI_GroupSettings_CheckSell)
EndFunc
Func GUI_GetWipes()
	Return GUICtrlRead($GUI_GroupGeneralStats_lblWipesVal)
EndFunc
Func GUI_GetGolds()
	Return GUICtrlRead($GUI_GroupDropStatistics_lblGoldsVal)
EndFunc
Func GUI_GetDroppedLockpicks()
	Return GUICtrlRead($GUI_GroupDropStatistics_lblLockpicksVal)
EndFunc
Func GUI_GetChestsOpened()
	Return GUICtrlRead($GUI_GroupDropStatistics_lblChestsVal)
EndFunc
Func GUI_GetBlackDyes()
	Return GUICtrlRead($GUI_GroupDropStatistics_lblDyesVal)
EndFunc
Func GUI_GetTomes()
	Return GUICtrlRead($GUI_GroupDropStatistics_lblTomesVal)
EndFunc
Func GUI_GetConsoleText()
	Return GUICtrlRead($GUI_idConsole)
EndFunc


; Commands
Func GUI_SetOnStartFunc($NewFunc = "")
	$GUI_idButtonStart_Function = $NewFunc
EndFunc

Func GUI_SetOnStopFunc($NewFunc = "")
	$GUI_idButtonStop_Function = $NewFunc
EndFunc

Func GUI_SetOnResumeFunc($NewFunc = "")
	$GUI_idButtonResume_Function = $NewFunc
EndFunc

Func GUI_HideButton($ButtonID, $Hide)
	GUICtrlSetState($ButtonID, $Hide ? $GUI_HIDE : $GUI_SHOW)
	GUICtrlSetState($ButtonID, $Hide ? $GUI_DISABLE : $GUI_ENABLE)
EndFunc

Func GUI_SetDeldrimor($Value)
	Return GUICtrlSetData($GUI_GroupGeneralStats_lblDeldrimorVal, $Value)
EndFunc

Func GUI_SetAsura($Value)
	Return GUICtrlSetData($GUI_GroupGeneralStats_lblAsuraVal, $Value)
EndFunc

Func GUI_SetLockpicks($Value)
  	Return GUICtrlSetData($GUI_GroupGeneralStats_lblLockpicksVal, $Value)
EndFunc

Func GUI_SetWipes($Value)
	Return GUICtrlSetData($GUI_GroupGeneralStats_lblWipesVal, $Value)
 EndFunc

Func GUI_SetRareSkins($Value)
	Return GUICtrlSetData($GUI_GroupDropStatistics_lblRareSkinsVal, $Value)
 EndFunc

Func GUI_SetGolds($Value)
	Return GUICtrlSetData($GUI_GroupDropStatistics_lblGoldsVal, $Value)
EndFunc

Func GUI_SetDroppedLockpicks($Value)
	Return GUICtrlSetData($GUI_GroupDropStatistics_lblLockpicksVal, $Value)
EndFunc

Func GUI_SetChestsOpened($Value)
	Return GUICtrlSetData($GUI_GroupDropStatistics_lblChestsVal, $Value)
EndFunc

Func GUI_SetBlackDyes($Value)
	Return GUICtrlSetData($GUI_GroupDropStatistics_lblDyesVal, $Value)
EndFunc

Func GUI_SetTomes($Value)
	Return GUICtrlSetData($GUI_GroupDropStatistics_lblTomesVal, $Value)
EndFunc

Func GUI_SetRunCounter($Value = -1)
    If $Value = -1 Then
        $GUI_RunCounter += 1
    Else
        $GUI_RunCounter = $Value
    EndIf
    _GUICtrlStatusBar_SetText($GUI_hStatusBar, "Runs: " & $GUI_RunCounter, 0)
EndFunc

Func Out($Text, $TimeStamp = True, $ShowSeconds = False)
	Local $Out = ""
	If GUI_GetConsoleText() <> "" Then $Out = @CRLF
	If $TimeStamp Then $Out &= String_GetTimeStamp($ShowSeconds) & " "
	GUICtrlSetData($GUI_idConsole, GUI_GetConsoleText() & $Out & $Text & "")
	_GUICtrlEdit_Scroll($GUI_idConsole, $SB_SCROLLCARET)
EndFunc

Func GUI_SetRunTime($iTicks)
	Local $iHours, $iMins, $iSecs
	Local $TimeStamp = ""
	_TicksToTime($iTicks, $iHours, $iMins, $iSecs)
	If $iHours < 10 Then $TimeStamp = "0"
	$TimeStamp &= $iHours & ":"
	If $iMins < 10 Then $TimeStamp &= "0"
	$TimeStamp &= $iMins & ":"
	If $iSecs < 10 Then $TimeStamp &= "0"
	$TimeStamp &= $iSecs
	_GUICtrlStatusBar_SetText($GUI_hStatusBar, "Run Time: " & $TimeStamp, 1)
EndFunc

Func GUI_SetBestRunTime($iTicks)
	Local $iHours, $iMins, $iSecs
	Local $TimeStamp = ""
	_TicksToTime($iTicks, $iHours, $iMins, $iSecs)
	If $iHours < 10 Then $TimeStamp = "0"
	$TimeStamp &= $iHours & ":"
	If $iMins < 10 Then $TimeStamp &= "0"
	$TimeStamp &= $iMins & ":"
	If $iSecs < 10 Then $TimeStamp &= "0"
	$TimeStamp &= $iSecs
	GUICtrlSetData($GUI_GroupGeneralStats_lblBestRunTimeVal, $TimeStamp)
EndFunc

Func GUI_SetTotalTime($iTicks)
	Local $iHours, $iMins, $iSecs
	Local $TimeStamp = ""
	_TicksToTime($iTicks, $iHours, $iMins, $iSecs)
	If $iHours < 10 Then $TimeStamp = "0"
	$TimeStamp &= $iHours & ":"
	If $iMins < 10 Then $TimeStamp &= "0"
	$TimeStamp &= $iMins & ":"
	If $iSecs < 10 Then $TimeStamp &= "0"
	$TimeStamp &= $iSecs
	_GUICtrlStatusBar_SetText($GUI_hStatusBar, "Total Time: " & $TimeStamp, 2)
 EndFunc

Func GUI_SetAvgRunTime($TimeStamp)
 	GUICtrlSetData($GUI_GroupGeneralStats_lblAvgRunTimeVal, $TimeStamp)
 EndFunc

; Ini

Func GUI_IniCreate()
	If FileExists($INI_PATH) Then Return False
	Out("Creating INI File.")
	Return IniWriteSection($INI_PATH, "Settings", $ValuesToBeSaved)
EndFunc

Func GUI_IniHasKey($Sections, $Key)

	Local $IniResult = IniReadSection($INI_PATH, "Settings")
	For $i = 1 To $ValuesToBeSaved[0][0]
		If $IniResult[$i][0] = $Key Then Return True
	Next
	Return False
EndFunc

Func GUI_IniIsComplete()
	If Not FileExists($INI_PATH) Then Return False
	Local $IniResult = IniReadSection($INI_PATH, "Settings")
	If $IniResult[0][0] <> $ValuesToBeSaved[0][0] Then Return False
	For $key = 1 To $ValuesToBeSaved[0][0]
		If Not GUI_IniHasKey("Settings", $ValuesToBeSaved[$key][0]) Then Return False
	Next
	Return True
EndFunc

Func _iniToArray($hFile, $sArrays = 0)
   If $sArrays == 0 Then Return
   $sArrays = StringSplit($sArrays, ",", 2)
   Local $aSection = IniReadSectionNames($hFile)
   _ArrayDelete($aSection, 0)
   Local $aProperties[UBound($aSection)][4]
   Local $aData = StringSplit($aSection[0], "#")
   Local $sTemp = IniReadSection($hFile, $aSection[0]), $aTemp[1]
   For $jj = 1 To $sTemp[0][0]
	  _ArrayAdd($aTemp, $sTemp[$jj][1])
   Next
   _ArrayDelete($aTemp, 0)
   Local $Array_ini[(UBound($aTemp))/$aData[2]][$aData[2]]
   For $i = 0 To (UBound($aTemp)+1)/$aData[2] - 1
	  For $j = 0 to $aData[2] - 1
		 $Array_ini[$i][$j] = $aTemp[ $i * $aData[2] + $j ]
		 If $i = (UBound($aTemp)+1)/$aData[2] - 1 then _ArrayDisplay ($Array_ini, "2D Display")
	  Next
   Next
   Return $Array_ini
EndFunc

Func _arrayToIni($hFile, $sSection, $aName)
	Local $iLines = UBound($aName)
	Switch UBound($aName, 2)
		Case 0
			Local $sTemp = ""
			For $ii = 0 To $iLines - 1
				$aName[$ii] = StringReplace($aName[$ii], @LF, "At^LF")
				$sTemp &= $ii & "=" & $aName[$ii] & @LF
			Next
			IniWriteSection($hFile, $sSection, $sTemp, 0)
		Case Else
			Local $aTemp[1], $sString = "", $iColumns = UBound($aName, 2)
			For $ii = 0 To $iLines - 1
				For $jj = 0 To $iColumns - 1
					$aName[$ii][$jj] = StringReplace($aName[$ii][$jj], $defaultSeparator, $defaultSeparatorString)
					$sString &= $aName[$ii][$jj] & $defaultSeparator
				Next
				_ArrayAdd($aTemp, StringTrimRight($sString, 1))
				$sString = ""
			Next
			_ArrayDelete($aTemp, 0)
			_arrayToIni($hFile, $sSection & "#" & $iColumns & "#" & $defaultSeparator & "#" & $defaultSeparatorString, $aTemp)
	EndSwitch
EndFunc

; GUI Constants

Opt("GUIOnEventMode", True)

Global $defaultSeparator = Opt("GUIDataSeparatorChar", "|")
Global $defaultSeparatorString = "<%Separator%>"
Global $ColLabels[12] = ["Staff", "Wand",  "Focus", "Shield", "Axe", "Bow", "Hammer", "Daggers", "Scythe", "Spear", "Sword", "Runes & Insignas"]

Global $array_weaponmods [132][15] = [ _
		 [ "HCT20 [Inscription]",  							2, "22500140828","" ,		 1,  1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "HCT20 [Staff head]", 							0, "02500140828","" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "HCT20 [Focus Core]",			 				1, "02500140828","" ,		-1, -1,  0, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "HCT10 [Inscription]",							2, "000A0822",   "" ,		 0,  0,  0, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "HCT10 [Staff Head]",							0, "000A0822",   "" ,		 0,  0,  0, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "HSR20 [Inscription]",							2, "00142828",   "" ,		-1, -1,  1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "HSR20 [Wand Wrapping]",							1, "00142828",   "" ,		-1,  0, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "HSR10 [Inscription]",							2, "000AA823",   "" ,		 0,  0,  0, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "HSR10 [Wand Wrapping]",							1, "000AA823",   "" ,		-1,  0, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+1 Attribute (Chance: 20%) [Inscription]",		2, "00143828",   "" ,	  	-1, -1,  1,  1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+1 Attribute (Chance: 20%) [Staff Wrapping]",	1, "00143828",   "" ,	  	 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Highly salvageable",							2, "1E000826",   "" ,	  	 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Improved sale value",							2, "3200F805",   "" ,	  	 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Energy +5",										2, "0500D822",   "" ,	  	 0, -1, -1,  0,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Energy +5 (HP>50%)",							2, "05320823",   "" ,	  	 0, -1, -1,  0,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Energy +5 (while Enchanted)",					2, "0500F822",   "" ,	  	 0, -1, -1,  0,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Energy +7 (HP<50%)",							2, "07321823",   "" ,	  	 0, -1, -1,  0,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Energy +7 (while hexed)",						2, "07002823",   "" ,	  	 0, -1, -1,  0,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Energy +15 (-1 energy regen)",					2, "0F00D822",   "0100C820", 0, -1, -1,  0,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Damage -2 (while Enchanted)",					2, "02008820",   "" ,  		 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Damage -2 (while in a Stance)",					2, "0200A820",   "" ,		 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Damage -3 (while Hexed)",						2, "03009820",   "" ,		 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Damage -5 (Chance: 20%)",						2, "05147820",   "" ,		 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0], _
		 [ "-20% Bleeding", 								2, "00005828",	 "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "-20% Blind",									2, "00015828",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "-20% Crippled",									2, "00035828",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "-20% Dazed",									2, "00075828",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "-20% Deep Wound",								2, "00045828",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "-20% Disease (Inscribable)",					2, "00055828",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "-20% Disease", 									2, "E3017824",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "-20% Poison",									2, "00065828",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "-20% Weakness",									2, "00085828",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Damage +15% (-1 energy regen)",					2, "0F003822",   "0100C820", 0,  0, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Damage +15% (-1 HP regen)",						2, "0F003822",   "0100E820", 0,  0, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Damage +15% (HP> 50%)",							2, "0F327822",   "" , 		 0,  0, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Damage +15% (while Enchanted)",					2, "0F006822",   "" , 		 0,  0, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Damage +15% (while in a Stance)",				2, "0F00A822",   "" , 		 0,  0, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Damage +15% (vs Hexed Foes)",					2, "0F005822",   "" , 		 0,  0, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Damage +15% (-10 AL while attacking)",			2, "0A001820",   "" , 		 0,  0, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Damage +15% (Energy -5)",						2, "0500B820",   "" , 		 0,  0, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Damage 20% (HP<50%)",							2, "14328822",   "" ,		 0,  0, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Damage 20% (while Hexed)",						2, "14009822",   "" ,		 0,  0, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Ebon",											0, "000BB824",   "" ,		-1, -1, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Fiery",											0, "0005B824",   "" ,		-1, -1, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Icy",											0, "0003B824",   "" ,		-1, -1, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Shocking",										0, "0004B824",   "" ,		-1, -1, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Barbed",										0, "DE016824",   "" ,		-1, -1, -1, -1,  0,  0, -1,  0,  0,  0,  0], _
		 [ "Crippling",										0, "E1016824",   "" ,		-1, -1, -1, -1,  0,  0, -1,  0,  0,  0,  0], _
		 [ "Cruel",											0, "E2016824",   "" ,		-1, -1, -1, -1,  0, -1,  0,  0,  0,  0,  0], _
		 [ "Furious",										0, "0A00B823",   "" ,		-1, -1, -1, -1,  0, -1,  0,  0,  0,  0,  0], _
		 [ "Heavy",											0, "E601824",    "" ,		-1, -1, -1, -1, -1,  0, -1,  0, -1,  0,  0], _
		 [ "Poisonous",										0, "E4016824",   "" ,		-1, -1, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Silencing",										0, "E5016824",   "" ,		-1, -1, -1, -1, -1,  0, -1,  0, -1,  0, -1], _
		 [ "Sundering",										0, "1414F823",   "" ,		-1, -1, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Vampiric (+3)",									0, "00032825",   "" ,		-1, -1, -1, -1,  0, -1, -1,  0, -1,  0,  0], _
		 [ "Vampiric (+5)",									0, "00052825",   "" ,		-1, -1, -1, -1, -1,  0,  0, -1,  0, -1, -1], _
		 [ "Zealous",										0, "01001825",   "" ,		-1, -1, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "+ 20% (vs Charr)",								1, "00018080",   "" ,		 0, -1, -1, -1,  0,  0,  0, -1, -1, -1,  0], _
		 [ "+ 20% (vs Demons)",								1, "00088080",   "" ,		 0, -1, -1, -1,  0,  0,  0, -1, -1, -1,  0], _
		 [ "+ 20% (vs Dragons",								1, "00098080",   "" ,		 0, -1, -1, -1,  0,  0,  0, -1, -1, -1,  0], _
		 [ "+ 20% (vs Dwarves)",							1, "00068080",   "" ,		 0, -1, -1, -1,  0,  0,  0, -1, -1, -1,  0], _
		 [ "+ 20% (vs Giants)",								1, "00058080",   "" ,		 0, -1, -1, -1,  0,  0,  0, -1, -1, -1,  0], _
		 [ "+ 20% (vs Ogres)",								1, "000A8080",   "" ,		 0, -1, -1, -1,  0,  0,  0, -1, -1, -1,  0], _
		 [ "+ 20% (vs Plants)",								1, "00038080",   "" ,		 0, -1, -1, -1,  0,  0,  0, -1, -1, -1,  0], _
		 [ "+ 20% (vs Skeletons)",							1, "00048080",   "" ,		 0, -1, -1, -1,  0,  0,  0, -1, -1, -1,  0], _
		 [ "+ 20% (vs Tengu)",								1, "00078080",   "" ,		 0, -1, -1, -1,  0,  0,  0, -1, -1, -1,  0], _
		 [ "+ 20% (vs Trolls)",								1, "00028080",   "" ,		 0, -1, -1, -1,  0,  0,  0, -1, -1, -1,  0], _
		 [ "+ 20% (vs Undead)",								1, "001448A2",   "" ,		 0, -1, -1, -1,  0,  0,  0, -1, -1, -1,  0], _
		 [ "+30 HP",										1, "001E4823",   "" ,		-1, -1,  0,  1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "+30 HP (staff wrapping)",						1, "9013025001E4823", "" ,	 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+30 HP (staff head)",							0, "A013025001E4823", "" , 	 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+45 HP while Enchanted",						1, "002D6823",   "" ,		 0, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+45 HP while in a Stance",						1, "002D8823",   "" ,		 0, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+60 HP while Hexed",							1, "003C7823",   "" ,	 	 0, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+20% Enchantment Duration",						1, "1400B822",   "" , 		 0, -1, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Axe Mastery +1 (20% chance)",					1, "14121824",   "" ,		-1, -1, -1, -1,  0, -1, -1, -1, -1, -1, -1], _
		 [ "Marksmanship +1 (20% chance)",					1, "14191824",   "" ,		-1, -1, -1, -1, -1,  0, -1, -1, -1, -1, -1], _
		 [ "Hammer Mastery +1 (20% chance)",				1, "14131824",   "" , 		-1, -1, -1, -1, -1, -1,  0, -1, -1, -1, -1], _
		 [ "Dagger Mastery +1 (20% chance)",				1, "141D1824",   "" ,		-1, -1, -1, -1, -1, -1, -1,  0, -1, -1, -1], _
		 [ "Scythe Mastery +1 (20% chance)",				1, "14291824",   "" ,		-1, -1, -1, -1, -1, -1, -1, -1,  0, -1, -1], _
		 [ "Spear Mastery +1 (20% chance)",					1, "14251824",   "" ,		-1, -1, -1, -1, -1, -1, -1, -1, -1,  0, -1], _
		 [ "Swordmanship +1 (20% chance)",					1, "14141824",   "" ,		-1, -1, -1, -1, -1, -1, -1, -1, -1, -1,  0], _
		 [ "Air Magic +1 (20% chance)",						1, "14081824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Blood Magic +1 (20% chance)",					1, "14041824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Channeling Magic +1 (20% chance)",				1, "14221824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Communing Magic +1 (20% chance)",				1, "14201824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Curse Magic +1 (20% chance)",					1, "14071824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Death Magic +1 (20% chance)",					1, "14051824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Divine Favor  +1 (20% chance)",					1, "14101824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Domination Magic +1 (20% chance)",				1, "14021824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Earth Magic +1 (20% chance)",					1, "14091824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Fire Magic +1 (20% chance)",					1, "140A1824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Healing Prayers +1 (20% chance)",				1, "140D1824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Illusion Magic +1 (20% chance)",				1, "14011824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Inspiration  +1 (20% chance)",					1, "14031824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Protection Prayers +1 (20% chance)",			1, "140F1824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Restoration Magic +1 (20% chance)",				1, "14211824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Smiting Prayers +1 (20% chance)",				1, "140E1824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Soul Reaping +1 (20% chance)",					1, "14061824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Spawning Magic +1 (20% chance)",				1, "14241824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Water Magic +1 (20% chance)",					1, "140B1824",   "" ,		 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+7 armor vs Physical",							1, "07005821",   "" ,		 0, -1, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "+7 Armor vs Elemental",							1, "07002821",   "" ,		 0, -1, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Armor +5",										1, "05000821",   "" ,		 0, -1, -1, -1,  0,  0,  0,  0,  0,  0,  0], _
		 [ "Armor +5 (HP> 50%)",							2, "0532A821",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +10 (HP< 50%)",							2, "0A32B821",   "" ,		-1, -1,  0, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +5 (while Enchanted)",					2, "05009821",   "" ,		-1, -1,  0, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +5 (while attacking)",					2, "05007821",   "" ,		-1, -1,  0, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +5 (while casting)",						2, "05008821",   "" ,		-1, -1,  0, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +5 (vs Elemental)",						2, "05002821",   "" ,		-1, -1,  0, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +5 (vs Physical)",						2, "05005821",   "" ,		-1, -1,  0, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +5 (Energy -5)",							2, "0500B820",   "" ,		-1, -1,  0, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +5 (Health -20)",							2, "1400D820",   "" ,		-1, -1,  0, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +10 (while Hexed)",						2, "0A00C821",   "" ,		-1, -1,  0, -1, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+10 Armor vs.Undead",							2, "0A004821",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+10 Armor vs.Charr",							2, "0A014821",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+10 Armor vs.Trolls",							2, "0A024821",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+10 Armor vs.Plants",							2, "0A034821",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+10 Armor vs.Skeletons",						2, "0A044821",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+10 Armor vs.Giants",							2, "0A054821",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+10 Armor vs.Dwarves",							2, "0A064821",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+10 Armor vs.Tengu",							2, "0A074821",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+10 Armor vs.Demons",							2, "0A084821",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+10 Armor vs.Dragons",							2, "0A094821",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "+10 Armor vs.Ogres",							2, "0A0A4821",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +10 (vs Blunt)",							2, "0A0018A1",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +10 (vs Cold)",							2, "0A0318A1",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +10 (vs Earth)",							2, "0A0B18A1",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +10 (vs Fire)",							2, "0A0518A1",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +10 (vs Lightning)",						2, "0A0418A1",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +10 (vs Piercing)",						2, "0A0118A1",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1], _
		 [ "Armor +10 (vs Slashing)",						2, "0A0218A1",   "" ,		-1, -1,  0,  0, -1, -1, -1, -1, -1, -1, -1]]

	Global $array_armormods [183][5] = [ _
		 ["Minor Critical Strikes [Assassin]", 		6324,	1, "0123E821", 0], _
		 ["Minor Dagger Mastery [Assassin]",		6324,	1, "011DE821", 0], _
		 ["Minor Deadly Arts [Assassin]", 			6324,	1, "011EE821", 0], _
		 ["Minor Shadow Arts [Assassin]", 			6324,	1, "011FE821", 0], _
		 ["Major Critical Strikes [Assassin]", 		6325,	1, "0223E8217902", 0], _
		 ["Major Dagger Mastery [Assassin]", 		6325,	1, "021DE8217902", 0], _
		 ["Major Deadly Arts [Assassin]", 			6325,	1, "021EE8217902", 0], _
		 ["Major Shadow Arts [Assassin]", 			6325,	1, "021FE8217902", 0], _
		 ["Superior Critical Strikes [Assassin]", 	6326,	1, "0323E8217B02", 0], _
		 ["Superior Dagger Mastery [Assassin]", 	6326,	1, "031DE8217B02", 0], _
		 ["Superior Deadly Arts [Assassin]", 		6326,	1, "031EE8217B02", 0], _
		 ["Superior Shadow Arts [Assassin]", 		6326,	1, "031FE8217B02", 0], _
		 ["Vanguard's Insignia [Assassin]", 		19124,	1, "DE010824", 0], _
		 ["Infiltrator's Insignia [Assassin]", 		19125,	0, "DF010824", 0], _
		 ["Saboteur's Insignia [Assassin]", 		19126,	0, "E0010824", 0], _
		 ["Nightstalker's Insignia [Assassin]", 	19127,	0, "E1010824", 1], _
		 ["Minor Earth Prayers[Dervish]", 			15545,	1, "012BE821", 0], _
		 ["Minor Mysticism[Dervish]", 				15545,	1, "012CE821", 1], _
		 ["Minor Scythe Mastery[Dervish]", 			15545,	1, "0129E821", 1], _
		 ["Minor Wind Prayers[Dervish]", 			15545,	1, "012AE821", 0], _
		 ["Major Earth Prayers[Dervish]", 			15546,	1, "022BE8210703", 1], _
		 ["Major Mysticism[Dervish]", 				15546,	1, "022CE8210703", 0], _
		 ["Major Scythe Mastery[Dervish]", 			15546,	1, "0229E8210703", 0], _
		 ["Major Wind Prayers[Dervish]", 			15546,	1, "022AE8210703", 0], _
		 ["Superior Earth Prayers[Dervish]", 		15547,	1, "032BE8210903", 0], _
		 ["Superior Mysticism[Dervish]", 			15547,	1, "032CE8210903", 0], _
		 ["Superior Scythe Mastery[Dervish]", 		15547,	1, "0329E8210903", 0], _
		 ["Superior Wind Prayers[Dervish]", 		15547,	1, "032AE8210903", 0], _
		 ["Windwalker Insignia [Dervish]", 			19163,	0, "02020824", 1], _
		 ["Forsaken Insignia [Dervish]", 			19164,	0, "03020824", 0], _
		 ["Minor Air Magic [Elementalist]", 		901,	1, "0108E821", 0], _
		 ["Minor Earth Magic [Elementalist]", 		901,	1, "0109E821", 0], _
		 ["Minor Energy Storage [Elementalist]", 	901,	1, "010CE821", 1], _
		 ["Minor Water Magic [Elementalist]", 		901,	1, "010BE821", 0], _
		 ["Minor Fire Magic [Elementalist]", 		901,	1, "010AE821", 0], _
		 ["Major Air Magic [Elementalist]", 		5554,	1, "0208E8216F01", 0], _
		 ["Major Earth Magic [Elementalist]", 		5554,	1, "0209E8216F01", 0], _
		 ["Major Energy Storage [Elementalist]", 	5554,	1, "020CE8216F01", 0], _
		 ["Major Fire Magic [Elementalist]", 		5554,	1, "020AE8216F01", 0], _
		 ["Major Water Magic [Elementalist]", 		5554,	1, "020BE8216F01", 0], _
		 ["Superior Air Magic [Elementalist]", 		5555,	1, "0308E8217B01", 0], _
		 ["Superior Earth Magic [Elementalist]", 	5555,	1, "0309E8217B01", 0], _
		 ["Superior Energy Storage [Elementalist]", 5555,	1, "030CE8217B01", 0], _
		 ["Superior Fire Magic [Elementalist]", 	5555,	1, "030AE8217B01", 0], _
		 ["Superior Water Magic [Elementalist]", 	5555,	1, "030BE8217B01", 0], _
		 ["Prismatic Insignia [Elementalist]", 		19144,	0, "F1010824", 0], _
		 ["Hydromancer Insignia [Elementalist]", 	19145,	0, "F2010824", 0], _
		 ["Geomancer Insignia [Elementalist]", 		19146,	0, "F3010824", 0], _
		 ["Pyromancer Insignia [Elementalist]", 	19147,	0, "F4010824", 0], _
		 ["Aeromancer Insignia [Elementalist]", 	19148,	0, "F5010824", 0], _
		 ["Rune of Attunement", 					898,	1, "0200D822", 0], _
		 ["Rune of Minor Vigor", 					898,	1, "C202E827", 0], _
		 ["Rune of Vitae", 							898,	1, "000A4823", 1], _
		 ["Rune of Clarity", 						5550,	1, "01087827", 1], _
		 ["Rune of Major Vigor", 					5550,	1, "C202E927", 1], _
		 ["Rune of Purity", 						5550,	1, "05067827", 0], _
		 ["Rune of Recovery", 						5550,	1, "07047827", 0], _
		 ["Rune of Restoration", 					5550,	1, "00037827", 1], _
		 ["Rune of Superior Vigor", 				5551,	1, "C202EA27", 1], _
		 ["Radiant Insignia",		 				19131,	0, "E5010824", 1], _
		 ["Survivor Insignia", 						19132,	0, "E6010824", 1], _
		 ["Stalwart Insignia", 						19133,	0, "E7010824", 0], _
		 ["Brawler's Insignia", 					19134,	0, "E8010824", 0], _
		 ["Blessed Insignia", 						19135,	0, "E9010824", 1], _
		 ["Herald's Insignia", 						19136,	0, "EA010824", 0], _
		 ["Sentry's Insignia", 						19137,	0, "EB010824", 0], _
		 ["Minor Domination Magic [Mesmer]", 		899,	1, "0102E821", 0], _
		 ["Minor Fast Casting [Mesmer]", 			899,	1, "0100E821", 1], _
		 ["Minor Illusion Magic [Mesmer]", 			899,	1, "0101E821", 0], _
		 ["Minor Inspiration Magic [Mesmer]", 		899,	1, "0103E821", 1], _
		 ["Major Domination Magic [Mesmer]", 		3612,	1, "0202E8216B01", 1], _
		 ["Major Fast Casting [Mesmer]", 			3612,	1, "0200E8216B01", 1], _
		 ["Major Illusion Magic [Mesmer]", 			3612,	1, "0201E8216B01", 0], _
		 ["Major Inspiration Magic [Mesmer]", 		3612,	1, "0203E8216B01", 0], _
		 ["Superior Domination Magic [Mesmer]", 	5549,	1, "0302E8217701", 1], _
		 ["Superior Fast Casting [Mesmer]", 		5549,	1, "0300E8217701", 1], _
		 ["Superior Illusion Magic [Mesmer]", 		5549,	1, "0301E8217701", 0], _
		 ["Superior Inspiration Magic [Mesmer]", 	5549,	1, "0303E8217701", 0], _
		 ["Artificer's Insignia [Mesmer]", 			19128,	0, "E2010824", 0], _
		 ["Prodigy's Insignia [Mesmer]", 			19129,	0, "E3010824", 1], _
		 ["Virtuoso's Insignia [Mesmer]", 			19130,	0, "E4010824", 0], _
		 ["Minor Divine Favor [Monk]", 				902,	1, "0110E821", 0], _
		 ["Minor Healing Prayers [Monk]", 			902,	1, "010DE821", 0], _
		 ["Minor Protection Prayers [Monk]", 		902,	1, "010FE821", 0], _
		 ["Minor Smiting Prayers [Monk]", 			902,	1, "010EE821", 0], _
		 ["Major Healing Prayers [Monk]", 			5556,	1, "020DE8217101", 1], _
		 ["Major Protection Prayers [Monk]", 		5556,	1, "020FE8217101", 0], _
		 ["Major Smiting Prayers [Monk]", 			5556,	1, "020EE8217101", 0], _
		 ["Major Divine Favor [Monk]", 				5556,	1, "0210E8217101", 0], _
		 ["Superior Divine Favor [Monk]", 			5557,	1, "0310E8217D01", 0], _
		 ["Superior Healing Prayers [Monk]", 		5557,	1, "030DE8217D01", 0], _
		 ["Superior Protection Prayers [Monk]", 	5557,	1, "030FE8217D01", 1], _
		 ["Superior Smiting Prayers [Monk]",		5557,	1, "030EE8217D01", 0], _
		 ["Wanderer's Insignia [Monk]", 			19149,	0, "F6010824", 0], _
		 ["Disciple's Insignia [Monk]", 			19150,	0, "F7010824", 0], _
		 ["Anchorite's Insignia [Monk]", 			19151,	0, "F8010824", 0], _
		 ["Minor Blood Magic [Necromancer]",		900,	1, "0104E821", 0], _
		 ["Minor Curses [Necromancer]", 			900,	1, "0107E821", 0], _
		 ["Minor Death Magic [Necromancer]", 		900,	1, "0105E821", 0], _
		 ["Minor Soul Reaping [Necromancer]", 		900,	1, "0106E821", 1], _
		 ["Major Blood Magic [Necromancer]",		5552,	1, "0204E8216D01", 0], _
		 ["Major Curses [Necromancer]",				5552,	1, "0207E8216D01", 0], _
		 ["Major Death Magic [Necromancer]",		5552,	1, "0205E8216D01", 0], _
		 ["Major Soul Reaping [Necromancer]", 		5552,	1, "0206E8216D01", 1], _
		 ["Superior Blood Magic [Necromancer]", 	5553,	1, "0304E8217901", 0], _
		 ["Superior Curses [Necromancer]",			5553,	1, "0307E8217901", 0], _
		 ["Superior Death Magic [Necromancer]",		5553,	1, "0305E8217901", 1], _
		 ["Superior Soul Reaping [Necromancer",		5553,	1, "0306E8217901", 0], _
		 ["Bloodstained Insignia [Necromancer]",	19138,	0, "0A020824", 1], _
		 ["Tormentor's Insignia [Necromancer]",		19139,	0, "EC010824", 1], _
		 ["Undertaker's Insignia [Necromancer]",	19140,	0, "ED010824", 0], _
		 ["Bonelace Insignia [Necromancer]",		19141,	0, "EE010824", 0], _
		 ["Minion Master's Insignia [Necromancer]",	19142,	0, "EF010824", 0], _
		 ["Blighter's Insignia [Necromancer]",		19143,	1, "F0010824", 0], _
		 ["Minor Command [Paragon]",				15548,	1, "0126E821", 0], _
		 ["Minor Leadership [Paragon]",				15548,	1, "0128E821", 0], _
		 ["Minor Motivation [Paragon]",				15548,	1, "0127E821", 0], _
		 ["Minor Spear Mastery [Paragon]",			15548,	1, "0125E821", 1], _
		 ["Major Command [Paragon]",				15549,	1, "0226E8210D03", 0], _
		 ["Major Leadership [Paragon]",				15549,	1, "0228E8210D03", 0], _
		 ["Major Motivation [Paragon]",				15549,	1, "0227E8210D03", 0], _
		 ["Major Spear Mastery [Paragon]",			15549,	1, "0225E8210D03", 0], _
		 ["Superior Command [Paragon]",				15550,	1, "0326E8210F03", 0], _
		 ["Superior Leadership [Paragon]",			15550,	1, "0328E8210F03", 0], _
		 ["Superior Motivation [Paragon]",			15550,	1, "0327E8210F03", 0], _
		 ["Superior Spear Mastery [Paragon]",		15550,	1, "0325E8210F03", 0], _
		 ["Centurion's Insignia [Paragon]",			19168,	0, "07020824", 1], _
		 ["Minor Beast Mastery [Ranger]",			904,	1, "0116E821", 0], _
		 ["Minor Expertise [Ranger]",				904,	1, "0117E821", 0], _
		 ["Minor Marksmanship [Ranger]",			904,	1, "0119E821", 0], _
		 ["Minor Wilderness Survival [Ranger]",		904,	1, "0118E821", 0], _
		 ["Major Beast Mastery [Ranger]",			5560,	1, "0216E8217501", 0], _
		 ["Major Expertise [Ranger]",				5560,	1, "0217E8217501", 0], _
		 ["Major Marksmanship [Ranger]",			5560,	1, "0219E8217501", 0], _
		 ["Major Wilderness Survival [Ranger]",		5560,	1, "0218E8217501", 0], _
		 ["Superior Beast Mastery [Ranger]",		5561,	1, "0316E8218101", 0], _
		 ["Superior Expertise [Ranger]",			5561,	1, "0317E8218101", 0], _
		 ["Superior Marksmanship [Ranger]",			5561,	1, "0319E8218101", 0], _
		 ["Superior Wilderness Survival [Ranger]",	5561,	1, "0318E8218101", 0], _
		 ["Frostbound Insignia [Ranger]",			19157,	0, "FC010824", 0], _
		 ["Earthbound Insignia [Ranger]",			19158,	0, "FD010824", 0], _
		 ["Pyrebound Insignia [Ranger]",			19159,	0, "FE010824", 0], _
		 ["Stormbound Insignia [Ranger]",			19160,	0, "FF010824", 0], _
		 ["Beastmaster's Insignia [Ranger]",		19161,	0, "00020824", 0], _
		 ["Scout's Insignia [Ranger]",				19162,	0, "01020824", 0], _
		 ["Minor Channeling Magic [Ritualist]",		6327,	1, "0122E821", 0], _
		 ["Minor Communing [Ritualist]",			6327,	1, "0120E821", 0], _
		 ["Minor Restoration Magic [Ritualist]",	6327,	1, "0121E821", 0], _
		 ["Minor Spawning Power [Ritualist]",		6327,	1, "0124E821", 1], _
		 ["Major Channeling Magic [Ritualist]",		6328,	1, "0222E8217F02", 0], _
		 ["Major Communing [Ritualist]",			6328,	1, "0220E8217F02", 0], _
		 ["Major Restoration Magic [Ritualist]",	6328,	1, "0221E8217F02", 0], _
		 ["Major Spawning Power [Ritualist]",		6328,	1, "0224E8217F02", 0], _
		 ["Superior Channeling Magic [Ritualist]",	6329,	1, "0322E8218102", 0], _
		 ["Superior Communing [Ritualist]",			6329,	1, "0320E8218102", 1], _
		 ["Superior Restoration Magic [Ritualist]",	6329,	1, "0321E8218102", 0], _
		 ["Superior Spawning Power [Ritualist]",	6329,	1, "0324E8218102", 0], _
		 ["Shaman's Insignia [Ritualist]",			19165,	0, "04020824", 1], _
		 ["Ghost Forge Insignia [Ritualist]",		19166,	0, "05020824", 0], _
		 ["Mystic's Insignia [Ritualist]",			19167,	0, "06020824", 0], _
		 ["Minor Absorption [Warrior]",				903,	0, "EA02E827", 0], _
		 ["Minor Axe Mastery [Warrior]",			903,	1, "0112E821", 0], _
		 ["Minor Hammer Mastery [Warrior]",			903,	1, "0113E821", 0], _
		 ["Minor Strength [Warrior]",				903,	1, "0111E821", 0], _
		 ["Minor Swordsmanship [Warrior]",			903,	1, "0114E821", 0], _
		 ["Minor Tactics [Warrior]",				903,	1, "0115E821", 0], _
		 ["Major Absorption [Warrior]",				5558,	1, "EA02E927", 0], _
		 ["Major Axe Mastery [Warrior]",			5558,	1, "0212E8217301", 0], _
		 ["Major Hammer Mastery [Warrior]",			5558,	1, "0213E8217301", 0], _
		 ["Major Strength [Warrior]",				5558,	1, "0211E8217301", 0], _
		 ["Major Swordsmanship [Warrior]",			5558,	1, "0214E8217301", 0], _
		 ["Major Tactics [Warrior]",				5558,	1, "0215E8217301", 0], _
		 ["Superior Axe Mastery [Warrior]",			5559,	1, "0312E8217F01", 0], _
		 ["Superior Hammer Mastery [Warrior]",		5559,	1, "0313E8217F01", 0], _
		 ["Superior Strength [Warrior]",			5559,	1, "0311E8217F01", 0], _
		 ["Superior Swordsmanship [Warrior]",		5559,	1, "0314E8217F01", 0], _
		 ["Superior Tactics [Warrior]",				5559,	1, "0315E8217F01", 0], _
		 ["Superior Absorption [Warrior]",			5559,	1, "EA02EA27", 0], _
		 ["Knight's Insignia [Warrior]",			19152,	0, "F9010824", 0], _
		 ["Lieutenant's Insignia [Warrior]",		19153,	0, "08020824", 0], _
		 ["Stonefist Insignia [Warrior]",			19154,	0, "09020824", 0], _
		 ["Dreadnought Insignia [Warrior]",			19155,	0, "FA010824", 0], _
		 ["Sentinel's Insignia [Warrior]",			19156,	0, "FB010824", 1]]

Func ModSelection()
   Global $frmSelection = GUICreate("Mod Selection", 816, 660, 500, 112)
   Global $array_checkboxes[132][15]
   GUICtrlSetFont($frmSelection, 9, -1, 0, "Arial")
   GUICtrlCreateTab(1, 0, 816, 660)
   $X_GUI = 8
   $Y_GUI = 8
   $Width_GUI = 390
   $Height_GUI = 312
   $iSpacing= 8
   If FileExists(@ScriptDir & "\Mod_Settings.ini") Then $array_weaponmods_ini = _iniToArray("Mod_Settings.ini", "array_weaponmods")
   GUICtrlCreateTabItem("Popular Mods")
		 Global $grpEnergy = GUICtrlCreateGroup("", 0, 14, 816, 660)
		 For $j = 4 to 14
			GUICtrlCreateLabel($ColLabels[$j-4], $X_GUI + 55 +(50 * $j), 40 , $iSpacing*6, $iSpacing*2, $ES_CENTER)
			For $i = 0 To 31
				If $j = 4 then GUICtrlCreateLabel($array_weaponmods[$i][0], $X_GUI + $iSpacing*2, 60 + (18 * $i),200, $iSpacing*2)
				$array_checkboxes[$i][$j] = GUICtrlCreateCheckbox("", $X_GUI + 72+(50 * $j), 60 + (18 * $i), $iSpacing*2, $iSpacing*2, BitOR($BS_AUTOCHECKBOX, $ES_CENTER,($array_checkboxes[$i][$j] > -1 ? $GUI_CHECKED : $GUI_UNCHECKED)))
				If $array_weaponmods[$i][$j] 		= 1 then guictrlsetstate (-1, $GUI_CHECKED)
			    If $array_weaponmods[$i][$j] 		=-1 then guictrlsetstate (-1, $GUI_DISABLE)
			    If $array_weaponmods_ini[$i][$j] 	= 1 then guictrlsetstate (-1, $GUI_CHECKED)
				Next
			 Next
   GUICtrlCreateTabItem("")
   GUICtrlCreateTabItem("Damage")
		 Global $grpEnergy = GUICtrlCreateGroup("", 0, 14, 816, 660)
		 For $j = 4 to 14
			GUICtrlCreateLabel($ColLabels[$j-4], $X_GUI + 55 +(50 * $j),40 , $iSpacing*6, $iSpacing*2, $ES_CENTER)
			For $i = 32 To 67
				If $j = 4 then GUICtrlCreateLabel($array_weaponmods[$i][0], $X_GUI + $iSpacing*2, 60 + (16 * ($i - 32)),200, $iSpacing*2)
				$array_checkboxes[$i][$j] = GUICtrlCreateCheckbox("", $X_GUI + 72+(50 * $j), 60 + (16 * ($i - 32)), $iSpacing*2, $iSpacing*2, BitOR($BS_AUTOCHECKBOX, $ES_CENTER,($array_checkboxes[$i][$j] >-1 ? $GUI_CHECKED : $GUI_UNCHECKED)))
				If $array_weaponmods[$i][$j] = 1 then guictrlsetstate (-1, $GUI_CHECKED)
			    If $array_weaponmods[$i][$j] 		= -1 then guictrlsetstate (-1, $GUI_DISABLE)
			    If $array_weaponmods_ini[$i][$j] 	= 1 then guictrlsetstate (-1, $GUI_CHECKED)
				Next
			 Next
   GUICtrlCreateTabItem("")
   GUICtrlCreateTabItem("HP, Echanting and Attribute")
		 Global $grpEnergy = GUICtrlCreateGroup("", 0, 14, 816, 660)
		 For $j = 4 to 14
			GUICtrlCreateLabel($ColLabels[$j-4], $X_GUI + 55 +(50 * $j), 40 , $iSpacing*6, $iSpacing*2, $ES_CENTER)
			For $i = 68 To 100
				If $j = 4 then GUICtrlCreateLabel($array_weaponmods[$i][0], $X_GUI+$iSpacing*2, 60 + (18 * ($i - 68)),200, $iSpacing*2)
				$array_checkboxes[$i][$j] = GUICtrlCreateCheckbox("", $X_GUI + 72+(50 * $j), 60 + (18 * ($i - 68)), $iSpacing*2, $iSpacing*2, BitOR($BS_AUTOCHECKBOX, $ES_CENTER,($array_checkboxes[$i][$j] >-1 ? $GUI_CHECKED : $GUI_UNCHECKED)))
			    If $array_weaponmods[$i][$j] = 1 then guictrlsetstate (-1, $GUI_CHECKED)
			    If $array_weaponmods[$i][$j] 		= -1 then guictrlsetstate (-1, $GUI_DISABLE)
			    If $array_weaponmods_ini[$i][$j] 	= 1 then guictrlsetstate (-1, $GUI_CHECKED)
				Next
			 Next
   GUICtrlCreateTabItem("")
   GUICtrlCreateTabItem("Armor")
		 Global $grpEnergy = GUICtrlCreateGroup("", 0, 14, 816, 660)
		 For $j = 4 to 14
			GUICtrlCreateLabel($ColLabels[$j-4], $X_GUI + 55 +(50 * $j), 40 , $iSpacing*6, $iSpacing*2, $ES_CENTER)
			For $i = 101 To 131
				If $j = 4 then GUICtrlCreateLabel($array_weaponmods[$i][0], $X_GUI+$iSpacing*2, 60 + (19 * ($i - 101)),200, $iSpacing*2)
				$array_checkboxes[$i][$j] = GUICtrlCreateCheckbox("", $X_GUI + 72+(50 * $j), 60 + (19 * ($i - 101)), $iSpacing*2, $iSpacing*2, BitOR($BS_AUTOCHECKBOX, $ES_CENTER,($array_checkboxes[$i][$j] >-1 ? $GUI_CHECKED : $GUI_UNCHECKED)))
			    If $array_weaponmods[$i][$j] = 1 then guictrlsetstate (-1, $GUI_CHECKED)
			    If $array_weaponmods[$i][$j] 		= -1 then guictrlsetstate (-1, $GUI_DISABLE)
			    If $array_weaponmods_ini[$i][$j] 	= 1 then guictrlsetstate (-1, $GUI_CHECKED)
			Next
		 Next
   GUICtrlCreateTabItem("")
   GUISetOnEvent($GUI_EVENT_CLOSE, "SpecialEvents")
   GUICtrlCreateGroup("", -99, -99, 1, 1)
   GUISetState()
EndFunc

Func SpecialEvents()
   Select
        Case @GUI_CtrlId = $GUI_EVENT_CLOSE
			For $j = 4 to 14
			   For $i = 0 to 131
				  $array_weaponmods[$i][$j] = GUICtrlRead($array_checkboxes[$i][$j])
			   Next
			Next
			_arrayToIni("Mod_Settings.ini", "Mod_Settings.ini", $array_weaponmods)
			GUISetState (@SW_HIDE)
	    Case @GUI_CtrlId = $GUI_EVENT_MINIMIZE
			GUISetState (@SW_MINIMIZE)
        Case @GUI_CtrlId = $GUI_EVENT_RESTORE
		    GUISetState (@SW_MAXIMIZE)
    EndSelect
 EndFunc

#EndRegion GUI


#Region Inventory


Func ClearInventory()
	Local $aItem, $aMod, $Timer
	If FileExists(@ScriptDir & "\Mod_Settings.ini") Then  $array_weaponmods_ = _iniToArray("Mod_Settings.ini", "array_weaponmods")
	Out("Cleaning Inventory")
	If _ArrayBinarySearch ($GH_Array, GetMapID()) = -1 then TravelGH()
	WaitMapLoading()
	Sleep(250)
	CheckGuildHall()
	Out("Goldcheck")
	If GetGoldCharacter() >= 80000 Then DepositGold(800000)
	Sleep (GetPing() + 250)
	If GetGoldCharacter() < 2500 Then WithdrawGold(3000-GetGoldCharacter())
	Sleep (GetPing() + 250)
	If GUI_IsRareSkinsChecked() then StoreRareSkins()
	Sleep (GetPing() + 250)
	StoreTomes()
	Sleep (GetPing() + 250)
	Out("Merchant")
	Merchant()
	Sleep (GetPing() + 250)
	Out("Restocking kits")
	If FindIDKit() < 50 then BuySuperiorIDKit()
	Sleep (GetPing() + 250)
	If FindSalvageKit() < 50 Then BuyItem(4, 1, 2000)
	Out("Identifying bags")
	For $lBag = 1 To $UseBags
		IdentifyBag($lBag)
	Next
	For $aItem In CanSellItems()
		If HasUsefulMod($aItem) then
			$aMod = @extended
			$Timer = TimerInit()
			Out("Salvaging mod...")
			Out("SendStartSalvageFunc")
			StartSalvage($aItem)
			Sleep(GetPing() + 200)
			SalvageMod($aMod)
			Sleep(GetPing() + 200)
			out("SentSalvageMod")
		Elseif Cansell($aItem) then
			SellItem($aItem)
			$Timer = TimerInit()
			Do
				Sleep(GetPing() + 100)
			Until DllStructGetData($aItem, 'ID') = 0 Or TimerDiff($Timer) > 1500
		Endif
	Next
	RuneTrader()
	Sleep (GetPing() + 1000)
	For $lBag = 1 To $UseBags
		For $lSlot = 1 To DllStructGetData(GetBag($lBag), 'Slots')
			$aItem = GetItemBySlot($lBag, $lSlot)
			If DllStructGetData($aItem, 'type') == $TYPE_RUNE_AND_MOD Then
			If GetGoldCharacter() >= 50000 Then DepositGold(90000)
			TraderRequestSell($aItem)
			Sleep(GetPing() + 500)
			TraderSell()
			Sleep(GetPing() + 500)
			EndIf
		Next
	Next
EndFunc

Func CanSellItems()
    Local $itemArray[0]
    For $BagNumber = 1 To 4
        For $SlotNumber = 1 To DllStructGetData(GetBag($BagNumber), 'Slots')
            Local $item = GetItemBySlot($BagNumber, $SlotNumber)
            If DllStructGetData($item, 'Id') == 0 Or Not CanSell($item) Then ContinueLoop
            Redim $itemArray[UBound($itemArray) + 1]
            $itemArray[UBound($itemArray) - 1] = $item
        Next
    Next
	Return $itemArray
EndFunc

Func HasUsefulMod($aItem)
    Local $Mods[184][4]
	$aModStruct = GetModStruct($aItem)
	$aType = DllStructGetData($aItem,'Type')
	Switch $aType
		Case 0
			For $i = 0 to Ubound($array_armormods) - 1
				If $array_armormods[$i][4] = 1 and StringInStr($aModStruct, $array_armormods[$i][3]) > 0 then
				   Out ("Item has useful mod "& $array_armormods[$i][0])
				   SetExtended($array_armormods[$i][2])
				   Return True
				Endif
			Next
		Case 2, 5, 12, 15, 22, 24, 26, 27, 32, 35, 36
			For $j = 0 to 10
				For $i = 0 to Ubound($array_weaponmods_ini) - 1
					If $aType = $TYPE_ID[$j] and StringInStr($aModStruct, $array_weaponmods_ini[$i][2]) > 0 and $array_weaponmods_ini[$i][$j+4] = 1 then
						Out ("Item has useful mod "& $array_weaponmods[$i][0] & " with index " & $array_weaponmods_ini[$i][1])
						SetExtended($array_weaponmods_ini[$i][1])
						Return True
					Endif
				Next
			Next
	Endswitch
   Return False
EndFunc

Func CountTotalSlots($NumOfBags = 4)
	Local $FreeSlots, $Slots
	For $Bag = 1 To $NumOfBags
		$Slots += DllStructGetData(GetBag($Bag), 'Slots')
	Next
	Return $Slots
EndFunc

Func CountFreeSlots($NumOfBags = 4)
	Local $FreeSlots, $Slots
	For $Bag = 1 To $NumOfBags
		$Slots += DllStructGetData(GetBag($Bag), 'Slots')
		$Slots -= DllStructGetData(GetBag($Bag), 'ItemsCount')
	Next
	Return $Slots
EndFunc

Func Sell($bagIndex, $numOfSlots)
 	$numOfSlots = DllStructGetData($bag, 'slots')
	Sleep(Random(150, 250))
 	For $i = 0 To $numOfSlots - 1
 		$aItem = GetItemBySlot($bagIndex, $i)
 		If CanSell($aItem) Then
 			SellItem($aItem)
 			Sleep(Random(500, 550))
 		EndIf
 	Next
  EndFunc

Func StoreTomes()
	StoreTome(1, 20)
	StoreTome(2, 10)
	StoreTome(3, 15)
	StoreTome(4, 15)
EndFunc

Func StoreTome($lBag, $numOfSlots)
    For $lSlot = 1 To CountTotalSlots()
	  $aItem = GetItemBySlot($lBag, $lSlot)
	  $aModelID = DllStructGetData($aItem , 'modelid')
	  If _ArrayBinarySearch($Tome_Array, $aModelID) = -1 then ContinueLoop
	  $Index = _ArrayBinarySearch($Tome_Array, $aModelID)
	  Out("The item in bag " & $lBag & ", Slot " & $lSlot & " is a tome")
	  $StorageIndex = BestStorageSlotbyModelID($aModelID, 8, 12)
	  If $StorageIndex[0] > 0 then MoveItem($aItem, $StorageIndex[0], $StorageIndex[1])
	  Out("Moving tome to bag " & $StorageIndex[0] & ", slot " &  $StorageIndex[1])
	  Sleep(Random(450, 550))
   Next
EndFunc

Func BestStorageSlotbyModelID($ItemModelID, $FirstBag, $LastBag)
    Local $StorageIndex[2]
	For $i = $LastBag To $FirstBag Step -1
		For $j = 1 To DllStructGetData(GetBag($i), 'Slots')
			$lItemInfo = GetItemBySlot($i, $j)
			$ModelID = DllStructGetData($lItemInfo, 'ModelID')
			If DllStructGetData($lItemInfo, 'ModelID') = $ItemModelID Then
			   $StorageIndex[0] = $i
			   $StorageIndex[1] = $j
			   Return $StorageIndex
			ElseIf DllStructGetData($lItemInfo, 'ModelID') <> 0 then
			   ContinueLoop
			Else
			   $StorageIndex[0] = $i
			   $StorageIndex[1] = $j
			   Exitloop
			Endif
		Next
	Next
    Return $StorageIndex
EndFunc
Func FindEmptySlot($FirstBag, $LastBag)
	Local $StorageIndex[2]
	For $sBag = $FirstBag to $LastBag
	   For $sSlot = 1 To DllStructGetData(GetBag($sBag), 'Slots')
		   Sleep(40)
		   $lItemInfo = GetItemBySlot($sBag, $sSlot)
		   If DllStructGetData($lItemInfo, 'ID') = 0 Then
			   Out($sBag & ", " & $sSlot & "  <-Empty! " & @CRLF)
			   $StorageIndex[0] = $sBag
			   $StorageIndex[1] = $sSlot
			   ExitLoop
		   EndIf
	   Next
	Next
	Return $StorageIndex
 EndFunc
Func StoreRareSkins()
	Out("Storing Rare Skins...")
	StoreRare(1, 20)
	StoreRare(2, 10)
	StoreRare(3, 15)
	StoreRare(4, 15)
 EndFunc
Func StoreRare($lBag, $numOfSlots)
   For $lSlot = 1 To CountTotalSlots()
	  $aItem = GetItemBySlot($lBag, $lSlot)
	  $aModelID = DllStructGetData($aItem, 'modelid')
	  If DllStructGetData($aItem, 'ID') <> 0 And GetRarity($aItem) = $RARITY_Gold and GetItemReq($aItem) <13 Then
		 Switch $aModelID
			Case $BDS_Domination, $BDS_Fast_Casting, $BDS_Illusion, $BDS_Inspiration, $BDS_Soul_Reaping, $BDS_Blood, $BDS_Curses, $BDS_Death, $BDS_Air, $BDS_Earth, $BDS_Energy_Storage _
				,$BDS_Fire, $BDS_Water, $BDS_Divine, $BDS_Healing, $BDS_Protection, $BDS_Smiting, $BDS_Communing, $BDS_Spawning, $BDS_Restoration, $BDS_Channeling
					Out("The item in bag " & $lBag & ", Slot " & $lSlot & " is a Bone Dragon Staff")
					$StorageIndex = FindEmptySlot(8, 12)
					If $StorageIndex[0] > 0 then MoveItem($aItem, $StorageIndex[0], $StorageIndex[1])
					Out("Moving tome to bag " & $StorageIndex[0] & ", slot " &  $StorageIndex[1])
			Case $Froggy_Domination, $Froggy_Fast_Casting, $Froggy_Illusion, $Froggy_Inspiration, $Froggy_Soul_Reaping, $Froggy_Blood, $Froggy_Curses, $Froggy_Death, $Froggy_Air, $Froggy_Earth, $Froggy_Energy_Storage _
				,$Froggy_Fire, $Froggy_Water, $Froggy_Divine, $Froggy_Healing, $Froggy_Protection, $Froggy_Smiting, $Froggy_Communing, $Froggy_Spawning, $Froggy_Restoration, $Froggy_Channeling
					Out("The item in bag " & $lBag & ", Slot " & $lSlot & " is a Frog Scepter")
					$StorageIndex = FindEmptySlot(8, 12)
					If $StorageIndex[0] > 0 then MoveItem($aItem, $StorageIndex[0], $StorageIndex[1])
					Out("Moving tome to bag " & $StorageIndex[0] & ", slot " &  $StorageIndex[1])
		 EndSwitch
	  EndIf
   Next
EndFunc
Func CanSell($aItem)
	Local $Rarity = GetRarity($aItem)
	Local $aQuantity = DllStructGetData($aItem, 'Quantity')
	Local $aModelID = DllStructGetData($aItem, 'ModelID')
	Local $aType = DllStructGetData($aItem, 'Type')
	Local $aReq = GetItemReq($aItem)
   Switch $aModelID
	  Case 1175, 1176, 1152, 1153, 920, 0 _
		 , 146, 22751 _
		 , 2989, 5899, 2992, 2992, 2991, 5900 _
		 , $BDS_Domination, $BDS_Fast_Casting, $BDS_Illusion, $BDS_Inspiration, $BDS_Soul_Reaping, $BDS_Blood, $BDS_Curses, $BDS_Death, $BDS_Air, $BDS_Earth, $BDS_Energy_Storage _
		 , $BDS_Fire, $BDS_Water, $BDS_Divine, $BDS_Healing, $BDS_Protection, $BDS_Smiting, $BDS_Communing, $BDS_Spawning, $BDS_Restoration, $BDS_Channeling _
		 , $Froggy_Domination, $Froggy_Fast_Casting, $Froggy_Illusion, $Froggy_Inspiration, $Froggy_Soul_Reaping, $Froggy_Blood, $Froggy_Curses, $Froggy_Death, $Froggy_Air, $Froggy_Earth, $Froggy_Energy_Storage _
		 , $Froggy_Fire, $Froggy_Water, $Froggy_Divine, $Froggy_Healing, $Froggy_Protection, $Froggy_Smiting, $Froggy_Communing, $Froggy_Spawning, $Froggy_Restoration, $Froggy_Channeling _
		 , 24897 _
		 , $Crystalline_Sword
		 Return False
	  Endswitch
   Switch $Rarity
	  Case $Rarity_Green
		  Return False
	  Endswitch
   Switch $aType
		Case $TYPE_RUNE_AND_MOD, $TYPE_USABLE, $TYPE_KIT, $TYPE_SCROLL, $TYPE_DYE
			Return False
		Case $TYPE_SALVAGE
			Return True
		Case $TYPE_SHIELD
		   If $aReq = 9 And GetItemMaxDmg($aItem) = 16 Then
			Return False
		 ElseIf $aReq = 8 And GetItemMaxDmg($aItem) = 16 Then
			Return False
		 ElseIf $aReq = 7 And GetItemMaxDmg($aItem) = 15 Then
			Return False
		 ElseIf $aReq = 6 And GetItemMaxDmg($aItem) = 14 Then
			Return False
		 ElseIf $aReq = 5 And GetItemMaxDmg($aItem) = 13 Then
			Return False
		 ElseIf $aReq = 4 And GetItemMaxDmg($aItem) = 12 Then
			Return False
		 EndIf
	  EndSwitch
   Return True
EndFunc
Func GetItemMaxDmg($aItem)
    If Not IsDllStruct($aItem) Then $aItem = GetItemByItemID($aItem)
    Local $lModString = GetModStruct($aItem)
    Local $lPos = StringInStr($lModString, "A8A7")
    If $lPos = 0 Then $lPos = StringInStr($lModString, "C867")
    If $lPos = 0 Then $lPos = StringInStr($lModString, "B8A7")
    If $lPos = 0 Then Return 0
    Return Int("0x" & StringMid($lModString, $lPos - 2, 2))
 EndFunc
 #Endregion Inventory




