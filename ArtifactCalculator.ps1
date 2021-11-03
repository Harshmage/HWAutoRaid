$level = 70
$resource = 547
$curcost = 30
$inc = 1
$lrangebracket = 85
$upgcount = 0

If ($level -lt 25) {
    $inc = 2
    $color = "gray"
} ElseIf ($level -lt 50) {
    $color = "green"
} ElseIf ($level -lt 70) {
    $color = "blue"
} ElseIf ($level -lt 85) {
    $color = "orange"
}

While ($level -lt $lrangebracket) {
    If (($resource - $curcost) -gt 0) { $resource = $resource - $curcost } Else { Break }
    $curcost = $curcost + $inc
    $upgcount += 1
    $level += 1
}
Write-Host "Level $level, Upgrade times $upgcount, End Cost $curcost, Resources Left $resource"