#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseX64=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <Misc.au3>
#include <ImageSearch.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <ButtonConstants.au3>
#include <ScrollBarsConstants.au3>
#include <GuiEdit.au3>

Local $pos1, $pos2, $y = 0, $x = 0, $click = 0, $i = 1

$HW = "[REGEXPTITLE:(?i)(.*Hero Wars.*)]"

Func ClickIt()
	MouseClick("left", $x, $y, 1)
	$x = 0
	$y = 0
EndFunc

Func ResetXY()
	$x = 0
	$y = 0
EndFunc

WinActivate($HW,"")
; If on Main screen, go to Campaign
Sleep(1000)
$airship = _ImageSearch('Images\Airship.bmp', 0, $x, $y, 100)
If $airship Then
	Sleep(1000)
	ClickIt()
EndIf