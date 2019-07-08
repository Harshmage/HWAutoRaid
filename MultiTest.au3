#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseX64=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$frmTriggers= GUICreate("Do Things!", 178, 149, 25, 671)
$btnCampaign = GUICtrlCreateButton("Campaign", 8, 8, 75, 25)
$btnDaily = GUICtrlCreateButton("Daily Quests", 96, 8, 75, 25)
$btnTower = GUICtrlCreateButton("Tower", 8, 40, 75, 25)
$btnDungeon = GUICtrlCreateButton("Dungeon", 8, 72, 75, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $btnCampaign
			; Auto Raid

		Case $btnDaily
			#CS
				Run through the easy daily quest items
				Hero Chest
				Use Exp potion (if available)
				Skill Up
				Skin Rank Up
				Outland Chests
				Guild Glyph & Enchant
				Guild Alter of Elements (open 1 orb)
				Guild Titan Artifact Up
				Guild Tournament (only Raid button)
				Merchant (first tab, always buy three items)
				Send Gifts
				Special Events, daily calendar item, daily skin tokens
				Airship Missions (first 3, 4th will need to be manual?)
			#CE

		Case $btnTower
			; Do the Tower as high as possible, no team changes, middle chest, prioritize armor

		Case $btnDungeon
			; Do the Guild Dungeon as far as possible, don't use Oracle Cards, unlock floors



	EndSwitch
WEnd
