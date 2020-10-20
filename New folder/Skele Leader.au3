
#NoTrayIcon
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GuiEdit.au3>
#include "GWA2.au3"
#include "Constants.au3"

Global $SpawnpointToA1 = False

Opt("MustDeclareVars", True) 	; have to declare variables with either Local or Global.
Opt("GUIOnEventMode", True)		; enable gui on event mode

Global Const $template = "OwNS44PTTQIQrg2k4OYhxkoE"
Global Const $Dash = 1
Global Const $HoS = 2
Global Const $ShadowSanctuary = 3
Global Const $YMLaD = 4
Global Const $DeathsCharge = 5
Global Const $smokepowderdefense = 6
Global Const $FinishHim = 7
Global Const $BaneSignet = 8

Global Const $MainGui = GUICreate("Skelefarm - Leader", 172, 190)
	GUICtrlCreateLabel("Skelefarm - Leader", 8, 6, 156, 17, $SS_CENTER)
	Global Const $inputCharName = GUICtrlCreateCombo("", 8, 24, 150, 22)
		GUICtrlSetData(-1, GetLoggedCharNames())
	Global Const $cbxHideGW = GUICtrlCreateCheckbox("Disable Graphics", 8, 48)
	Global Const $cbxOnTop = GUICtrlCreateCheckbox("Always On Top", 8, 68)
	GUICtrlCreateLabel("Runs:", 8, 92)
	Global Const $lblRunsCount = GUICtrlCreateLabel(0, 80, 92, 30)
	GUICtrlCreateLabel("Fails:", 8, 112)
	Global Const $lblFailsCount = GUICtrlCreateLabel(0, 80, 112, 30)
	Global Const $lblLog = GUICtrlCreateLabel("", 8, 130, 154, 30)
	Global Const $btnStart = GUICtrlCreateButton("Start", 8, 162, 154, 25)

GUICtrlSetOnEvent($cbxOnTop, "EventHandler")
GUICtrlSetOnEvent($cbxHideGW, "EventHandler")
GUICtrlSetOnEvent($btnStart, "EventHandler")
GUISetOnEvent($GUI_EVENT_CLOSE, "EventHandler")
GUISetState(@SW_SHOW)

#include "Shared.au3"

Out("Ready")

Do
	Sleep(100)
Until $boolInitialized

MapCheck()
Out("Loading bar")
LoadSkillTemplate($template)

While 1
	If $boolRunning Then
		Main()
		 If Not $Rendering Then PurgeHook()
	Else
		Out("Bot Paused")
		GUICtrlSetState($btnStart, $GUI_ENABLE)
		GUICtrlSetData($btnStart, "Start")
		While Not $boolRunning
			Sleep(100)
		WEnd
	EndIf
WEnd

Func Main()
	If Not GoldCheck() Then Return

	If $TOA_ID Then
		SpawnpointToA()
		Sleep(GetPing()+500)
		If $SpawnpointToA1 Then
			Out("Spawnpoint 1")
			MoveTo(-4124.00, 119829.00)
		EndIf
	EndIf

	; TODO: check for being stuck

	Local $Avatar
	$Avatar = GetNearestNPCToCoords(-4124, 19829)	; try to get the avatar, might be there already.
	If DllStructGetData($Avatar, "PlayerNumber") <> $MODELID_AVATAR_OF_GRENTH Then		; nope avatar is not there, spawn him.
		Out("Spawning grenth")
		SendChat("kneel", "/")
		Local $lDeadlock = TimerInit()
		;Local $lFailPops = 0
		;Do
		;	Sleep(1500)	; wait until grenths is up.
		;	;$Avatar = GetNearestNPCToCoords(-4124, 19829)
;
		;	;If TimerDiff($lDeadlock) > 5000 Then
		;	;	MoveTo(-4137, 19729)
		;	;	SendChat("kneel", "/")
		;	;	$lDeadlock = TimerInit()
		;	;	$lFailPops += 1
		;	;EndIf
;
		;	;If $lFailPops >= 3 Then
		;	;	; probably I am stuck by an NPC somewhere in ToA.
		;	;	; As far as i know there is only 1 spot where i can get stuck (behind the tree, stuck on the patrolling NPC), so move away from there.
;
		;	;	MoveTo(-3243, 18426)
		;	;	MoveTo(-4170, 19759)
		;	;	$lFailPops = 0
		;	;EndIf
;
		;Until DllStructGetData($Avatar, "PlayerNumber") == $MODELID_AVATAR_OF_GRENTH ; TODO: make a deadlock check
	EndIf

	Out("Talking to the avatar of grenth")
	;GoNpc(83)
	Sleep(3500)
	GoNearestNPCToCoords(-4124.00, 19829.00)
    Sleep(500);wait till he spawns
	Dialog(0x86) ; "Enter UW"

	Out("Waiting for uw to load")
	WaitMapLoading(72)
    ;learMemory()
	If GetMapID() == $TOA_ID Then Return ; dialogs to enter uw failed. restart.

	SkeleBoom()

	WaitMapLoading($TOA_ID)
    ClearMemory()
	UpdateStatistics()
EndFunc   ;==>Main

Func GoldCheck()
	Local $lGold = GetGoldCharacter()
	If $lGold < 1000 Then
		If GetGoldStorage() < 20000 Then
			Out("Ran out of gold")
			$boolRunning = False
			Return False
		EndIf
		Out("Withdrawing gold from chest")
		WithdrawGold(20000)
	EndIf
	Return True
EndFunc

Func SkeleBoom()
	Local $lSkeleID = GetSkeleID()
    ;Sleep(GetPing()+1000)
    ; spike it.
    ChangeTarget($lSkeleID)
    Out("Pulling Skeleton...&quot")
    UseSkill($Dash, -2)
    UseSkill($HoS, $lSkeleID)
        Sleep(5000)
    UseSkill($ShadowSanctuary, -2)
    Sleep(750)
    Out("Spiking...&quot")
    UseSkill($smokepowderdefense, -2)
    Sleep(100)
    UseSkill($DeathsCharge, $lSkeleID)
        Sleep(150)
    ;Until GetSkillbarSkillRecharge($DeathsCharge) > 0
    UseSkill($YMLaD, $lSkeleID, True)
    Sleep(100)
     UseSkill($BaneSignet, $lSkeleID)
    Do
        Sleep(200)
    Until DllStructGetData(GetAgentByID($lSkeleID), 'HP&apos') < .5 Or GetIsDead(-2) Or GetIsDead($lSkeleID)
    UseSkill($FinishHim, $lSkeleID)
    Do
        Sleep(200)
    Until GetIsDead($lSkeleID) Or GetIsDead(-2)
	Do
		Sleep(200)
	Until GetIsDead($lSkeleID) Or GetIsDead(-2)

	If Not GetIsDead(-2) Then
		Out("Harvesting Skeleton Soul")
		;UseItem(GetItemByModelID($MODEL_ID_MOBSTOPPER))
		Out("Checking for Ectos and shinies.")
		PickUpLoot()
	Else
		$fails += 1
	EndIf

	Out("Run over, resigning")
	Resign()

	WaitForPartyWipe()

    Sleep(2000)

	Out("Returning to ToA")
	If DllStructGetData(GetAgentByID(-2), "PlayerNumber") == 1 Then ReturnToOutpost()
EndFunc   ;==>SkeleBoom

Func SpawnpointToA()
	Local $lMe = GetAgentByID(-2)
	Out((Round(DllStructGetData($lMe, 'X')) & "  " & Round(DllStructGetData($lMe, 'Y'))) & "  " & "ToA")
	If (DllStructGetData($lMe, 'X') > -5000 And DllStructGetData($lMe, 'X') < -4000) And (DllStructGetData($lMe, 'Y') > 18000 And DllStructGetData($lMe, 'Y') < 19000) Then
		$SpawnpointToA1 = True
		OUT("$SpawnpointToA1" & $SpawnpointToA1)
	Else
		Out("Must Be a Long Run")
		MoveTo(-4852, 18929)
		MoveTo(-4170, 19759)
	EndIf
EndFunc   ;==>SpawnpointKaineng

Func GoNearestNPCToCoords($x, $y)
	Local $guy, $Me
	Do
		RndSleep(250)
		$guy = GetNearestNPCToCoords($x, $y)
	Until DllStructGetData($guy, 'Id') <> 0
	ChangeTarget($guy)
	RndSleep(250)
	GoNPC($guy)
	RndSleep(250)
	Do
		RndSleep(500)
		Move(DllStructGetData($guy, 'X'), DllStructGetData($guy, 'Y'), 40)
		RndSleep(500)
		GoNPC($guy)
		RndSleep(250)
		$Me = GetAgentByID(-2)
	Until ComputeDistance(DllStructGetData($Me, 'X'), DllStructGetData($Me, 'Y'), DllStructGetData($guy, 'X'), DllStructGetData($guy, 'Y')) < 250
	RndSleep(100)
 EndFunc