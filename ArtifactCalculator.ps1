$level = 10
$resource = 272
$curcost = 21
$lrange = 25
$inc = 2
$upgcount = 0

While ($level -lt $lrange) {
    If (($resource - $curcost) -gt 0) { $resource = $resource - $curcost } Else { Break }
    $curcost = $curcost + $inc
    $upgcount += 1
    $level += 1
}
Write-Host "Upgrade $upgcount, End Cost $curcost, Resources Left $resource"