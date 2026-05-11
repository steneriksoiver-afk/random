<#
Script:         game.ps1
Date:           27.04.2026
Author:         Sten Erik Soiver
Version         0.1
Description     Arva ära 1-100. Tagauks on 1000
TÄIENDUS: 1. kui mäng on läbi, küis kasutajalt kas mängid uuesti. jah korral reseti andmed ja alusta uut mängu
2. lisa mängule tagauks. muuda funksioni ask. tagauks on 1000 mäng ei lõppe kui saadakse õige number.
3,mängu lõpus, küsi kasutajalt nime ning kirjuta results.txt faili nimi, sammude arv ja hetke kuupäev kellaaeg, näiteks
2026-04-27 10:40:35;marko;9    
#>

Clear-Host # Puhasta ekraan
$Global:steps = 0 #käikude lugeja
[boolean]$game_over = $false #kas mäng on läbi
$pc_nr= Get-Random -Minimum 1 -Maximum 100

Write-Host $pc_nr

function ask {
    [int]$user_nr = Read-host -Prompt "Sisesta number"
    $Global:steps += 1 #sammude kasvavad +1 võõra
    [boolean]$game_over = $false

    if($user_nr -gt $pc_nr) {
        Write-Host "Väiksem"
    } elseif ($user_nr -lt $pc_nr) {
        Write-Host "suurem"
      elseif($user_nr -eg $pc_nr)
      Write-Host "õige vastus" 
        $game_over = True
    }
    return $game_over


function lets_play {
    while ($game_over -eg $false) 
        $game_over
    )
    
}
lets_play