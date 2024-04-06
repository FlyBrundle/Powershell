Write-Host 'Stopping the spooler service...' -ForegroundColor Yellow
Start-Sleep -seconds 3
Stop-Service -Name Spooler -Force
Write-Host 'Clearing the spooler folder...' -ForegroundColor Yellow
Start-Sleep -seconds 3
Remove-Item -Path C:\Windows\System32\spool\PRINTERS\* -Force
Write-Host 'Restarting the spooler service...' -ForegroundColor Yellow
Start-Service -Name Spooler
Start-Sleep -seconds 3
Write-Host 'Spooler service restarted and spooler folder cleared.' -ForegroundColor Green
Read-Host -Prompt 'Press enter to continue'
