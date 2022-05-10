Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process #allow scripts

Set-Location -Path ([Environment]::GetFolderPath("MyDocuments")) #Set new location
Start-Transcript -NoClobber #Start a transcript
Set-Alias -Name clippy -Value set-clipboard

'This is now in your clipboard!' | clippy #set clipboard
Write-Verbose "Clipboard updated."
"So is this, except it's been added to the other." | clippy -append #append text to clipboard
Write-Verbose "Clipboard updated."

Start-Process "https://mymoodle.okanagan.bc.ca/mod/assign/view.php?id=1857613"