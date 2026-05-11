function Task01 {
    $allikas = "extensions.txt"
    $siht = "random.txt"
    if (Test-Path $allikas) {
        $laiendid = Get-Content $allikas
        $valitud = $laiendid | Get-Random
        $valitud | Out-File -FilePath $siht -Append -Encoding utf8
        Write-Host "PowerShell: Lisati $valitud"
    }
}

function Task02 {
    param([string]$Laiend)
    if (Test-Path "random.txt") {
        $kogus = (Get-Content "random.txt" | Where-Object { $_ -eq $Laiend }).Count
        if ($null -eq $kogus) { $kogus = 0 }
        Write-Host "PowerShell: Leiti $kogus korda."
    }
}
Export-ModuleMember -Function Task01, Task02
