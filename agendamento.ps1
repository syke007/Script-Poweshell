# Iuri Rodrigues
# Nº 21159
# a21159@alunos.ipca.pt

# Laboratórios de Informática
$currentLoc = Get-Location

$actions =  (New-ScheduledTaskAction -Execute 'powershell.exe' -Argument "-file $currentLoc\copy_sendmail.ps1" -WorkingDirectory "$currentLoc"), 
            (New-ScheduledTaskAction -Execute 'powershell.exe' -Argument "-file $currentLoc\backup.ps1" -WorkingDirectory "$currentLoc")
$trigger = New-ScheduledTaskTrigger -Daily -At 10:01pm
$settings = New-ScheduledTaskSettingsSet -RunOnlyIfNetworkAvailable -WakeToRun

Register-ScheduledTask -TaskName "tasks" -Action $actions -Trigger $trigger -Settings $settings
