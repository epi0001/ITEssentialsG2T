#ROCK PAPER SCISSORS
#May 10, 2021

#Synopsis
#This game challenges the user to a game of rock paper scissors

Clear-Host #clear powershell
$optionslist = 'R', 'P', 'S'
$computerchoice = Get-Random -InputObject $optionslist #generate computer decision from rock, paper, or scissors
$numWin = 0
$numLoss = 0
$numTied = 0

$playerMove = Read-Host "`nInput your choice `n(R/P/S)"

switch ($computerchoice) {
    "R" {
        if ($playerMove -eq "R") {
            $numTied += 1
            Write-Host "You've Tied!"
        }
        if ($playerMove -eq "P") {
            $numWin += 1
            Write-Host "You've Won!"
        }
        if ($playerMove -eq "S") {
            $numLoss += 1
            Write-Host "You've Lost!"
        }
    }
    "P" {
        if ($playerMove -eq "R") {
            $numLoss += 1
            Write-Host "You've Lost!"
        }
        if ($playerMove -eq "P") {
            $numTied += 1
            Write-Host "You've Tied!"
        }
        if ($playerMove -eq "S") {
            $numWin += 1
            Write-Host "You've Won!"
        }
    }
    "S" {
        if ($playerMove -eq "R") {
            $numWin += 1
            Write-Host "You've Won!"
        }
        if ($playerMove -eq "P") {
            $numLoss += 1
            Write-Host "You've Lost!"
        }
        if ($playerMove -eq "S") {
            $numTied += 1
            Write-Host "You've Tied!"
        }
    }
    Default {Write-Host "Error"}
}