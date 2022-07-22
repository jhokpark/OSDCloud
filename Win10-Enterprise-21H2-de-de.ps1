Write-Host -ForegroundColor Green "Starting OSDCloud Kpark ZTI"

Start-Sleep -Seconds 5


#Make sure I have the latest OSD Content

Write-Host -ForegroundColor Green "Updating OSD PowerShell Module"

Install-Module OSD -Force

Write-Host -ForegroundColor Green "Importing OSD PowerShell Module"

Import-Module OSD -Force

#Start OSDCloud ZTI the RIGHT way

Write-Host -ForegroundColor Green "Start OSDCloud Kpark"

Start-OSDCloud -OSLanguage de-de -OSVersion "Windows 11" -OSBuild 21H2 -OSEdition Enterprise -ZTI -Clouddriver Dell

#Restart from WinPE

Write-Host -ForegroundColor Green "Restarting in 20 seconds!"

Start-Sleep -Seconds 20

wpeutil reboot
