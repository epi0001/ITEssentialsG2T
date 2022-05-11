#ROCK PAPER SCISSORS
#May 10, 2021

#Synopsis
#This game challenges the user to a game of rock paper scissors

cls #clear powershell
$optionslist = 'R', 'P', 'S'
# $computerchoice = Get-Random -InputObject $optionslist #generate computer decision from rock, paper, or scissors
$computerchoice = "R"
$userinput = ""
$userinput = Read-Host "`nInput your choice `n(R/P/S)"

if (($computerchoice = "R") -and ($userinput = "R"))
{
    Write-Host "`n It's a Draw!"
}
if (($computerchoice = "R") -and ($userinput = "P")) 
{
    Write-Host "`n You win!"
}

if (($computerchoice = "R") -and ($userinput = "S")) 
{
    Write-Host "`n You lose!"
}