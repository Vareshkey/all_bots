
#include-once
#include "GWA2.au3"
#include "Constants.au3"

Global $boolRunning = False
Global $boolInitialized = False
Global $Rendering = True

Global Const $USED_CITY = $TOA_ID
Global Const $POSITION_NEAR_AVATAR = $POSITION_NEAR_AVATAR_CHANTRY
Global Const $POSITION_AVATAR = $POSITION_AVATAR_CHANTRY

Global $runs = 0
Global $fails = 0

Func EventHandler()
	Switch (@GUI_CtrlId)
		Case $btnStart
			If $boolRunning Then
				GUICtrlSetData($btnStart, "Will pause after this run")
				GUICtrlSetState($btnStart, $GUI_DISABLE)
				$boolRunning = False
			ElseIf $boolInitialized Then
				GUICtrlSetData($btnStart, "Pause")
				$boolRunning = True
			Else
				$boolRunning = True
				GUICtrlSetData($btnStart, "Initializing...")
				GUICtrlSetState($btnStart, $GUI_DISABLE)
				GUICtrlSetState($inputCharName, $GUI_DISABLE)
				WinSetTitle($MainGui, "", GUICtrlRead($inputCharName))
				If GUICtrlRead($inputCharName) = "" Then
					If Initialize(ProcessExists("gw.exe"), True, False) = False Then	; don't need string logs or event system
						MsgBox(0, "Error", "Guild Wars it not running.")
						Exit
					EndIf
				Else
					If Initialize(GUICtrlRead($inputCharName), True, False) = False Then ; don't need string logs or event system
						MsgBox(0, "Error", "Can't find a Guild Wars client with that character name.")
						Exit
					EndIf
				EndIf
				GUICtrlSetData($btnStart, "Pause")
				GUICtrlSetState($btnStart, $GUI_ENABLE)
				$boolInitialized = True
			EndIf

		Case $cbxOnTop
			WinSetOnTop($MainGui, "", GUICtrlRead($cbxOnTop)==$GUI_CHECKED)

		Case $GUI_EVENT_CLOSE
			Exit
	EndSwitch
EndFunc   ;==>EventHandler

Func Out($aString)
	Local $timestamp = "[" & @HOUR & ":" & @MIN & "] "
	GUICtrlSetData($lblLog, $timestamp & $aString)
EndFunc   ;==>Out

Func MapCheck()
	If GetMapID() <> $USED_CITY Then
		Out("Travelling to ToA")
		TravelTo($USED_CITY)
	EndIf
EndFunc   ;==>MapCheck

Func CanPickUp($aItem)
	Local $m = DllStructGetData($aItem, 'ModelID')
	Local $c = DllStructGetData($aItem, 'ExtraID')
	If ($m == 146 And ($c == 10 Or $c == 12 )) Then ;Black and White Dye
		Return True
	ElseIf $m == 3746 Or $m == 930 Then ;UW Scrolls and Ectos
		Return True
	Else
		Return False
	EndIf
EndFunc   ;==>CanPickUp

Func GetCallerID()
	; for some reasons sometimes it does not work. So just do the whole thing multiple times.
	For $i=1 To 3
		Local $lAgentArray = GetAgentArray(0xDB)
		For $i = 1 To $lAgentArray[0]
			If DllStructGetData($lAgentArray[$i], 'Secondary') == $PROF_MONK Then
				Return DllStructGetData($lAgentArray[$i], 'ID')
			EndIf
		Next
	Next
	WriteChat("ERROR - CANNOT FIND LEADER - TELL SOMEONE ABOUT IT")
	Return -1
EndFunc

Func GetSkeleID()
	; for some reasons sometimes it does not work. So just do the whole thing multiple times.
	For $i=1 To 3
		Local $lAgentArray = GetAgentArray(0xDB)
		Local $lMe = GetAgentByID(-2)
		Local $lSkeleID = -1
		Local $lClosestSkeleDistance = 25000000 ; 25000000 = compass distance^2, skele will be less than that.
		For $i = 1 To $lAgentArray[0]
			If DllStructGetData($lAgentArray[$i], 'PlayerNumber') == $MODELID_SKELETON_OF_DHUUM Then
				Local $lDistance = GetPseudoDistance($lMe, $lAgentArray[$i])
				If $lDistance < $lClosestSkeleDistance Then ; we found a closer skele
					$lSkeleID = DllStructGetData($lAgentArray[$i], "ID")
					$lClosestSkeleDistance = $lDistance
				EndIf
			EndIf
		Next
		If $lSkeleID > 0 Then Return $lSkeleID
		Sleep(1500)
	Next
	If $lSkeleID == -1 Then WriteChat("ERROR - CANNOT FIND SKELE - TELL SOMEONE ABOUT IT")
	Return $lSkeleID
EndFunc

Func WaitForPartyWipe()
	Local $lDeadlock = TimerInit()
	Local $everyoneDead
	Do
		Sleep(1000) ; sleep 1 sec
		$everyoneDead = True
		Local $lParty = GetParty()
		For $i=1 To $lParty[0]
			If Not GetIsDead($lParty[$i]) Then
				$everyoneDead = False
			EndIf
		Next

		If TimerDiff($lDeadlock) > 10*1000 Then Resign() ; make sure we resigned

		If TimerDiff($lDeadlock) > 15*1000 Then ExitLoop ; something very bad happened.
	Until $everyoneDead == True
EndFunc

Func UpdateStatistics()
	$runs += 1
	GUICtrlSetData($lblRunsCount, $runs)
	GUICtrlSetData($lblFailsCount, $fails)
EndFunc

Func WaitMapLoadingNoDeadlock($aMapID = 0, $aSleep = 1500)
	Local $lMapLoading

	InitMapLoad()

	Do
		Sleep(200)
		$lMapLoading = GetMapLoading()
	Until $lMapLoading <> 2 And GetMapIsLoaded() And (GetMapID() == $aMapID Or $aMapID == 0)

	RndSleep($aSleep)

	Return True
EndFunc   ;==>WaitMapLoading
