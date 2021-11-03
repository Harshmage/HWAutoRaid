
$HW = "[REGEXPTITLE:(?i)(.*Hero Wars.*)]"
WinWaitActive($HW,"")

$i = 49
Do
	MouseClick("left",990,745,1)
	sleep(1000)
	MouseClick("left",580,360,1)
	sleep(1000)
	MouseClick("left",1192,756,1)
	sleep(5000)
	MouseClick("left",1278,220,1)
	sleep(1000)
	MouseClick("left",829,582,1)
	sleep(1000)
	MouseClick("left",901,680,1)
	sleep(1000)
	$i = $i - 1
Until $i = 0
