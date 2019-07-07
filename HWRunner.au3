#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseX64=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <Misc.au3>
#include <ImageSearch.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <ScrollBarsConstants.au3>
#include <GuiEdit.au3>

#Region ### START Koda GUI section ### Form=
$frmOutput = GUICreate("Output", 176, 437, 25, 200, -1, BitOR($WS_EX_TOPMOST,$WS_EX_WINDOWEDGE))
$slblEnergy = GUICtrlCreateLabel("Energy", 16, 8, 37, 17)
$slblRuns = GUICtrlCreateLabel("Runs", 16, 32, 29, 17)
$lblEnergy = GUICtrlCreateLabel("lblEnergy", 72, 8, 65, 17)
$lblGo1 = GUICtrlCreateLabel("lblGo1", 72, 32, 34, 17)
$slblOf = GUICtrlCreateLabel("of", 104, 32, 13, 17)
$lblGo2 = GUICtrlCreateLabel("lblGo2", 120, 32, 34, 17)
$slblType = GUICtrlCreateLabel("Type", 16, 56, 28, 17)
$slblCost = GUICtrlCreateLabel("Cost", 16, 80, 25, 17)
$lblType = GUICtrlCreateLabel("lblType", 72, 56, 38, 17)
$lblCost = GUICtrlCreateLabel("lblCost", 72, 80, 35, 17)
$edtOutput = GUICtrlCreateEdit("", 16, 104, 145, 321, $ES_READONLY)
GUICtrlSetData(-1, "edtOutput")
#EndRegion ### END Koda GUI section ###

$HW = "[REGEXPTITLE:(?i)(.*Hero Wars.*)]"

$energy = InputBox("Energy", "Input your energy")

$normCost = 6
$normGo = 10
$specCost = 12
$specGo = 3

Local $pos1, $pos2, $boss, $chapter, $y = 0, $x = 0, $click = 0, $writeOut, $info, $i = 1

GUICtrlSetData($lblGo1, $i)
GUICtrlSetData($lblEnergy, $energy)

Func ClickIt()
	MouseClick("left", $x, $y)
	$x = 0
	$y = 0
EndFunc

Func ResetXY()
	$x = 0
	$y = 0
EndFunc

Func WriteOutput($info)
	$writeOut = $writeOut & @CRLF & $info
	GuiCtrlSetData($edtOutput, $writeOut)
	_GUICtrlEdit_Scroll($edtOutput, $SB_PAGEDOWN)
EndFunc

WinWaitActive($HW,"")
GUISetState(@SW_SHOW)

; If on Main screen, go to Campaign
$campaign = _ImageSearch('Images\01-Campaign.bmp', 0, $x, $y, 50)
If $campaign Then
	Sleep(1000)
	ClickIt()
EndIf

; Look for special missions to determine chapter, and re-assign Cost values if needed
; Chapter 1 has 3 specials, all others have 4
$Artemis = _ImageSearch('Images\Artemis.bmp', 0, $x, $y, 50)
;~ ConsoleWrite("Artemis " & $Artemis & " " & $x & "," & $y & @CRLF)
WriteOutput("Artemis " & $Artemis & " " & $x & "," & $y)
ResetXY()
$Astaroth = _ImageSearch('Images\Astaroth.bmp', 0, $x, $y, 50)
WriteOutput("Astaroth " & $Astaroth & " " & $x & "," & $y)
ResetXY()
$Astrid = _ImageSearch('Images\Astrid.bmp', 0, $x, $y, 50)
WriteOutput("Astrid " & $Astrid & " " & $x & "," & $y)
ResetXY()
$Aurora = _ImageSearch('Images\Aurora.bmp', 0, $x, $y, 50)
WriteOutput("Aurora " & $Aurora & " " & $x & "," & $y)
ResetXY()
$Celeste = _ImageSearch('Images\Celeste.bmp', 0, $x, $y, 50)
WriteOutput("Celeste " & $Celeste & " " & $x & "," & $y)
ResetXY()
$Daredevil = _ImageSearch('Images\Daredevil.bmp', 0, $x, $y, 50)
WriteOutput("Daredevil " & $Daredevil & " " & $x & "," & $y)
ResetXY()
$Fox = _ImageSearch('Images\Fox.bmp', 0, $x, $y, 50)
WriteOutput("Fox " & $Fox & " " & $x & "," & $y)
ResetXY()
$Galahad = _ImageSearch('Images\Galahad.bmp', 0, $x, $y, 50)
WriteOutput("Galahad " & $Galahad & " " & $x & "," & $y)
ResetXY()
$Ginger = _ImageSearch('Images\Ginger.bmp', 0, $x, $y, 50)
WriteOutput("Ginger " & $Ginger & " " & $x & "," & $y)
ResetXY()
$Heidi = _ImageSearch('Images\Heidi.bmp', 0, $x, $y, 50)
WriteOutput("Heidi " & $Heidi & " " & $x & "," & $y)
ResetXY()
$Helios = _ImageSearch('Images\Helios.bmp', 0, $x, $y, 50)
WriteOutput("Helios " & $Helios & " " & $x & "," & $y)
ResetXY()
$Keira = _ImageSearch('Images\Keira.bmp', 0, $x, $y, 50)
WriteOutput("Keira " & $Keira & " " & $x & "," & $y)
ResetXY()
$Krista = _ImageSearch('Images\Krista.bmp', 0, $x, $y, 50)
WriteOutput("Krista " & $Krista & " " & $x & "," & $y)
ResetXY()
$Lars = _ImageSearch('Images\Lars.bmp', 0, $x, $y, 50)
WriteOutput("Lars " & $Lars & " " & $x & "," & $y)
ResetXY()
$Mojo = _ImageSearch('Images\Mojo.bmp', 0, $x, $y, 50)
WriteOutput("Mojo " & $Mojo & " " & $x & "," & $y)
ResetXY()
$Peppy = _ImageSearch('Images\Peppy.bmp', 0, $x, $y, 50)
WriteOutput("Peppy " & $Peppy & " " & $x & "," & $y)
ResetXY()
$Phobos = _ImageSearch('Images\Phobos.bmp', 0, $x, $y, 50)
WriteOutput("Phobos " & $Phobos & " " & $x & "," & $y)
ResetXY()
$Thea = _ImageSearch('Images\Thea.bmp', 0, $x, $y, 50)
WriteOutput("Thea " & $Thea & " " & $x & "," & $y)
ResetXY()

If $Artemis = 1 AND $Ginger = 1 AND $Mojo = 1 Then
	$chapter = 1
	$boss = 18
	$bossX1 = 1150
	$bossY1 = 520
	$bossX2 = 1219
	$bossY2 = 628
ElseIf $Thea AND $Galahad AND $Astaroth AND $Aurora Then
	$chapter = 2
ElseIf $Phobos AND $Fox AND $Keira AND $Mojo Then
	$chapter = 3
	$boss = 18
	$bossX1 = 1174
	$bossY1 = 620
	$bossX2 = 1257
	$bossY2 = 718
ElseIf $Heidi AND $Ginger AND $Keira AND $Thea Then
	$chapter = 4
ElseIf $Galahad AND $Aurora AND $Astaroth AND $Mojo Then
	$chapter = 5
	$boss = 18
	$bossX1 = 1123
	$bossY1 = 573
	$bossX2 = 1204
	$bossY2 = 664
ElseIf $Daredevil AND $Fox AND $Heidi AND $Mojo Then
	$chapter = 6
	$boss = 18
	$bossX1 = 1132
	$bossY1 = 401
	$bossX2 = 1258
	$bossY2 = 451
ElseIf $Keira AND $Astaroth AND $Thea AND $Galahad Then
	$chapter = 7
	$normCost = 8
	$specCost = 16
ElseIf $Daredevil AND $Phobos AND $Artemis AND $Mojo Then
	$chapter = 8
	$specCost = 16
EndIf

WriteOutput("Chapter: " & $chapter & " Boss: " & $boss)


ToolTip("Click on the Mission!", @DesktopHeight / 2, @DesktopWidth / 2)

While $click = 0 ; Loop until the mouse is clicked.
	if _IsPressed("01") then ; If left mouse is pushed.
		$pos1 = MouseGetPos() ; Record the position.
		$click = 1 ; Change x to end loop.
	EndIf
WEnd
ToolTip("")
Sleep(1000)
If _ImageSearch('Images\SpecMission.bmp', 0, $x, $y, 50) Then ; Special missions have a yellow eye dot in the corners
	WriteOutput("SpecMission " & $x & "," & $y)
	$type = "Special"
	$go = $specGo
	$missioncost = $specCost
	If $boss > 0 Then
		If $pos1[0] > $bossX1 AND $pos1[0] < $bossX2 AND $pos1[1] > $bossY1 AND $pos1[1] < $bossY2 Then
			$type = "Boss"
			$missioncost = $boss
		EndIf
	EndIf

Else
	$type = "Normal"
	$go = $normGo
	$missioncost = $normCost
EndIf
ResetXY()
WriteOutput("Type: " & $type & " Go: " & $go & " Cost: " & $missioncost)
GUICtrlSetData($lblCost, $missioncost)
GUICtrlSetData($lblType, $type)
GUICtrlSetData($lblGo2, $go)

$closebutton = _ImageSearch('Images\00-Close.bmp', 0, $x, $y, 50)
WriteOutput("Close " & $closebutton & " " & $x & "," & $y)
ClickIt()

;~ While 1
;~ 	$nMsg = GUIGetMsg()
;~ 	Switch $nMsg
;~ 		Case $GUI_EVENT_CLOSE
;~ 			Exit

;~ 	EndSwitch
;~ WEnd

Sleep(5000)

WinWaitActive($HW,"")

While $i <= $go
	$maxruns = $energy / $missioncost
	If $maxruns < $go Then Exit
	$energy = $energy - $missioncost
	GUICtrlSetData($lblEnergy, $energy)
	GUICtrlSetData($lblGo1, $i)
	MouseClick("left",$pos1[0],$pos1[1],1) ; Mission marker
	Sleep(1000)
	$start = _ImageSearch('Images\02-Start.bmp', 0, $x, $y, 50)
	WriteOutput("Start " & $start & " " & $x & "," & $y)
	ClickIt()
	Sleep(1000)
	$vipprompt = _ImageSearch('Images\07-VIP.bmp', 0, $x, $y, 50)
	WriteOutput("VIP " & $vipprompt & " " & $x & "," & $y)
	If $vipprompt Then
		ResetXY()
		$closebutton = _ImageSearch('Images\00-Close.bmp', 0, $x, $y, 50)
		WriteOutput("Close " & $closebutton & " " & $x & "," & $y)
		ClickIt()
		Sleep(1000)
		$start = _ImageSearch('Images\02-Start.bmp', 0, $x, $y, 50)
		WriteOutput("Start " & $start & " " & $x & "," & $y)
		ClickIt()
		Sleep(1000)
	EndIf
	$vipprompt2 = _ImageSearch('Images\07-VIP2.bmp', 0, $x, $y, 50)
	WriteOutput("VIP " & $vipprompt2 & " " & $x & "," & $y)
	If $vipprompt2 Then
		ResetXY()
		$closebutton = _ImageSearch('Images\00-Close.bmp', 0, $x, $y, 50)
		WriteOutput("Close " & $closebutton & " " & $x & "," & $y)
		ClickIt()
		Sleep(1000)
		ExitLoop
	EndIf
	$tobattle = _ImageSearch('Images\03-ToBattle.bmp', 0, $x, $y, 50)
	WriteOutput("ToBattle " & $tobattle & " " & $x & "," & $y)
	ClickIt()
	Sleep(2000)
	$auto = _ImageSearch('Images\04-AutoOff.bmp', 0, $x, $y, 50)
	WriteOutput("Auto " & $auto & " " & $x & "," & $y)
	ClickIt()
	While 1
		$continue = _ImageSearch('Images\06-Continue.bmp', 0, $x, $y, 50)
		Sleep(1000)
		If $continue = 1 Then ExitLoop
	WEnd
	WriteOutput("Continue " & $continue & " " & $x & "," & $y)
	Sleep(3000) ; 1.5 min
	ClickIt()
	Sleep(1000)
	$i = $i + 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			ExitLoop
	EndSwitch
WEnd
