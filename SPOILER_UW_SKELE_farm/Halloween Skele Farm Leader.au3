#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here


#NoTrayIcon
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <GuiEdit.au3>
#include "GWA2.au3"
#include "Constants.au3"

Opt("MustDeclareVars", True) ; have to declare variables with either Local or Global.
Opt("GUIOnEventMode", True) ; enable gui on event mode

Global Const $template = "OwNS44PTTQIQce2k4OYhxkoE"
Global Const $Dash = 1
Global Const $HoS = 2
Global Const $ShadowSanctuary = 3
Global Const $YMLaD = 4
Global Const $DeathsCharge = 5
Global Const $smokepowderdefense = 6
Global Const $FinishHim = 7
Global Const $BaneSignet = 8
;PCON;
Global $bd = 0

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


Do
	Sleep(100)
Until $boolInitialized

MapCheck()
Out("Loading bar")
LoadSkillTemplate($template)

While 1
	If $boolRunning Then
		Main()
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
	Local $lMe, $coordsX, $coordsY
	If Not GoldCheck() Then Return

	$lMe = GetAgentByID(-2)
	$coordsX = DllStructGetData($lMe, 'X')
	$coordsY = DllStructGetData($lMe, 'Y')
	Out("Moving to grenth's statue")
	;MoveTo(-4459, 18473)


	RapeATot() ;USES 1 SUGARY BLUE DRINK TO SPEED UP


	If - 5400 < $coordsX And $coordsX < -4800 And 17000 < $coordsY And $coordsY < 17650 Then
		Out("SPAWN 1")
		MoveTo(-4550, 17857, 0)
		MoveTo(-4558.72, 18890.57, 0)
		MoveTo(-4070.92, 19726.87)
	ElseIf - 3822 < $coordsX And $coordsX < -3400 And 17300 < $coordsY And $coordsY < 17750 Then
		Out("SPAWN 2")
		MoveTo(-4626.28, 18710.16, 0)
		MoveTo(-4070.92, 19726.87)
	Else
		Out("Spawn 3")
		MoveTo(-4314.01, 19225.43)
		MoveTo(-4070.92, 19726.87)
	EndIf

	;MoveTo($POSITION_NEAR_AVATAR_TOA[0], $POSITION_NEAR_AVATAR_TOA[1])

	; TODO: check for being stuck
	Sleep(150)
	Local $Avatar
	$Avatar = GetNearestNPCToCoords($POSITION_AVATAR_TOA[0], $POSITION_AVATAR_TOA[1]) ; try to get the avatar, might be there already.
	If DllStructGetData($Avatar, "PlayerNumber") <> $MODELID_AVATAR_OF_GRENTH Then ; nope avatar is not there, spawn him.
		Out("Spawning grenth")
		SendChat("kneel", "/")
		Local $lDeadlock = TimerInit()
		Local $lFailPops = 0
		Do
			Sleep(1500) ; wait until grenths is up.
			$Avatar = GetNearestNPCToCoords($POSITION_AVATAR_TOA[0], $POSITION_AVATAR_TOA[1])

			If TimerDiff($lDeadlock) > 5000 Then
				MoveTo(-4629.23, 18585.71)
				MoveTo($POSITION_AVATAR_TOA[0], $POSITION_AVATAR_TOA[1])
				SendChat("kneel", "/")
				$lDeadlock = TimerInit()
				$lFailPops += 1
			EndIf

			If $lFailPops >= 3 And $USED_CITY == $TOA_ID Then
				; probably I am stuck by an NPC somewhere in ToA.
				; As far as i know there is only 1 spot where i can get stuck (behind the tree, stuck on the patrolling NPC), so move away from there.

				MoveTo(-3470, 18550)
				MoveTo(-4070.92, 19726.87)
				Sleep(150)
				$lFailPops = 0
			EndIf


		Until DllStructGetData($Avatar, "PlayerNumber") == $MODELID_AVATAR_OF_GRENTH ; TODO: make a deadlock check
	EndIf

	Out("Talking to the avatar of grenth")
	GoNpc($Avatar)
	Sleep(500) ;wait till he spawns
	Dialog(0x85) ; "yes, to the service of grenth"
	Sleep(300)
	DIALOG(0x86) ; "accept"

	Out("Waiting for uw to load")
	WaitMapLoading()

	If GetMapID() == $USED_CITY Then Return ; dialogs to enter uw failed. restart.

	SkeleBoom()

	WaitMapLoading()

	UpdateStatistics()
EndFunc   ;==>Main



