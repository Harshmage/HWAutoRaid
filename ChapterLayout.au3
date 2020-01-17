#cs
List coordinates for chapter POI in Hero Wars
#ce

Func ChapterLayout()
	; Look for special missions to determine chapter, and re-assign Cost values if needed
	; Chapter 1 has 3 specials, all others have 4
	$Artemis = _ImageSearch('Images\Artemis.bmp', 0, $x, $y, 50)
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
		$normCost = 8
		$specCost = 16
		$boss = 24
	ElseIf $Daredevil AND $Aurora AND $Peppy Then ;AND $Fox
		$chapter = 9
		$normCost = 8
		$specCost = 16
	EndIf
EndFunc