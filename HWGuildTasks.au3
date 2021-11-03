#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseX64=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <Misc.au3>
#include <Date.au3>
#include <ImageSearch.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>


Local $tower, $y = 0, $x = 0, $click = 0, $toweroption, $open, $chest, $proceed, $HW, $click, $done, $final

$HW = "[REGEXPTITLE:(?i)(.*Hero Wars.*)]"

Func ClickIt($xoff = 0, $yoff = 0)
	MouseClick("left", $x + $xoff, $y + $yoff, 1)
	$x = 0
	$y = 0
EndFunc

Func MoveIt($xoff = 0, $yoff = 0)
	MouseMove($x + $xoff, $y + $yoff)
	$x = 0
	$y = 0
EndFunc

Func ResetXY()
	$x = 0
	$y = 0
EndFunc

Func FindImage($imagepath, $clickyes, $skip, $seconds = 20, $xoff = 5, $yoff = 5, $tol = 80)
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; Parameters:	$imagepath			Relevant or direct path to BMP image
	;				$clickyes (bool)	True/False to click on found image
	;				$skip (bool)		True/False to bypass the Abort/Retry/Ignore if an image cannot be found
	;				$seconds (int)		Number of seconds to search for the image, default is 20 seconds
	;				$tol (int)			0 for no tolerance (0-255), default is 80. Needed when colors of image differ from desktop. e.g GIF
	;				$xoff (int)			X offset
	;				$yoff (int)			Y offset
	; Return Values:					0 if image not found and Ignored
	;									1 if image found
	;									2 if image not found and skipped
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	$t = 0
	ConsoleWrite("Processing " & $imagepath & @CRLF)
	While 1
		ToolTip($t & " of " & $seconds & " - Running - " & $imagepath, 10, 10)
		If _ImageSearch($imagepath, 0, $x, $y, $tol) Then
			If $clickyes = True Then
				ClickIt($xoff, $yoff)
			ElseIf $clickyes = False Then
				MoveIt($xoff, $yoff)
			EndIf
			Return 1
			ToolTip("")
			ExitLoop 1
		EndIf
		Sleep(500)
		$t = $t + 0.5
		If $t = $seconds AND $skip = True Then
			Return 2
			ToolTip("")
			ExitLoop 1
		ElseIf $t = $seconds AND Not $skip AND Not _ImageSearch($imagepath, 0, $x, $y, $tol) Then
			$return = MsgBox(2, "Error", "Unable to find image " & $imagepath & ", continue?") ; Abort (3), Retry (4), Ignore (5)
			If $return = 3 Then
				Exit
			ElseIf $return = 4 Then
				$t = 0
			ElseIf $return = 5 Then
				Return 0
				ToolTip("")
				ExitLoop 1
			EndIf
		EndIf
	WEnd
EndFunc

WinWaitActive($HW,"")

; Open the Guild screen
FindImage('Images\Guild.bmp', True, True)

; Get Oracle Cards and Titanite (if using Valkyrie's Favor)
FindImage('Images\Guild-Dungeon.bmp', True, True)
FindImage('Images\Guild-Dungeon-Oracle.bmp', True, True)
FindImage('Images\Guild-Dungeon-Oracle-Claim.bmp', True, True, 5)
Sleep(500)
FindImage('Images\Guild-Dungeon-Oracle-Claim.bmp', True, True, 5)
Sleep(500)
FindImage('Images\Guild-Dungeon-Oracle-Claim.bmp', True, True, 5)
Sleep(500)
FindImage('Images\Guild-Dungeon-Oracle-Claim.bmp', True, True, 5)
FindImage('Images\00-Close.bmp', True, False)
Sleep(500)
FindImage('Images\00-Close.bmp', True, False)

; Open Titan Valley screen
FindImage('Images\Guild-TitanValley2.bmp', True, True)

; Upgrade a Titan Artifact
If FindImage('Images\Guild-TitanValley-TitanArtifacts.bmp', True, True, 5) = 1 Then
	If FindImage('Images\Artifact-Small-Grey.bmp', True, True, 5) = 1 then
		If FindImage('Images\Artifact-Long-Grey.bmp', True, False, 5) = 1 then
			If FindImage('Images\Artifact-UpgradeLevel.bmp', True, True, 5) = 2 Then
				FindImage('Images\Artifact-PlusLevel.bmp', True, True)
			EndIf
		EndIf
	ElseIf FindImage('Images\Artifact-Small-Green.bmp', True, True, 5) = 1 then
		If FindImage('Images\Artifact-Long-Green.bmp', True, False, 5) = 1 Then
			If FindImage('Images\Artifact-UpgradeLevel.bmp', True, True, 5) = 2 Then
				FindImage('Images\Artifact-PlusLevel.bmp', True, True)
			EndIf
		EndIf
	ElseIf FindImage('Images\Artifact-Small-Blue.bmp', True, True, 5) = 1 then
		If FindImage('Images\Artifact-Long-Blue.bmp', True, False, 5) = 1 Then
			If FindImage('Images\Artifact-UpgradeLevel.bmp', True, True, 5) = 2 Then
				FindImage('Images\Artifact-PlusLevel.bmp', True, True)
			EndIf
		EndIf
	ElseIf FindImage('Images\Artifact-Small-Purple.bmp', True, True, 5) = 1 then
		If FindImage('Images\Artifact-Long-Purple.bmp', True, False, 5) = 1 Then
			If FindImage('Images\Artifact-UpgradeLevel.bmp', True, True, 5) = 2 Then
				FindImage('Images\Artifact-PlusLevel.bmp', True, True)
			EndIf
		EndIf
	ElseIf FindImage('Images\Artifact-Small-Gold.bmp', True, True, 5) = 1 then
		If FindImage('Images\Artifact-Long-Gold.bmp', True, False, 5) = 1 Then
			If FindImage('Images\Artifact-UpgradeLevel.bmp', True, True, 5) = 2 Then
				FindImage('Images\Artifact-PlusLevel.bmp', True, True)
			EndIf
		EndIf
	EndIf
	Sleep(500)
	FindImage('Images\00-Close.bmp', True, False)
	Sleep(500)
	FindImage('Images\00-Close.bmp', True, False)
	Sleep(500)
EndIf

; Open a Titan Artifact Sphere
FindImage('Images\Guild-TitanValley-Altar.bmp', True, True)
FindImage('Images\Guild-TitanValley-Altar-Open.bmp', True, True)
Sleep(500)
FindImage('Images\00-Close.bmp', True, False)
Sleep(500)
FindImage('Images\00-Close.bmp', True, False)
Sleep(500)

; Run the Tournament unless on Saturday (7) or Sunday (1), then open the Hall of Fame (todo)
If @WDAY = 1 Or @WDAY = 7 Then
	FindImage('Images\Guild-TitanValley-HallOfFame.bmp', True, True, 5)
	Sleep(500)
	FindImage('Images\00-Close.bmp', True, False)
Else
	FindImage('Images\Guild-TitanValley-Tournament.bmp', True, True)
	Do
		If FindImage('Images\Guild-TitanValley-Tournament-Raid.bmp', True, True) = 1 then
			Sleep(500)
			FindImage('Images\Guild-TitanValley-Tournament-Raid.bmp', True, True)
			FindImage('Images\Guild-TitanValley-Tournament-Raid-OK.bmp', True, True)
			FindImage('Images\Guild-TitanValley-Tournament-Raid-Claim.bmp', True, True, 5)
		EndIf

	Until FindImage('Images\Guild-TitanValley-Tournament-Raid.bmp', False, True, 5) = 2
	Sleep(500)
	If FindImage('Images\Guild-TitanValley-Tournament-Raid-Chest.bmp', True, True) = 1 then
		FindImage('Images\Guild-TitanValley-Tournament-Raid-Chest-Claim.bmp', True, True)
		FindImage('Images\Tower-PointsReward.bmp', True, True)
	EndIf
	FindImage('Images\00-Close.bmp', True, False)
EndIf

Sleep(500)
FindImage('Images\00-Close.bmp', True, False)
Sleep(500)
FindImage('Images\Guild-ToCity.bmp', True, True)