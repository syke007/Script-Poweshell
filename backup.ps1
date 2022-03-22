## Iuri Rodrigues
## Nº 21159
## a21159@alunos.ipca.pt
# Laboratórios de Informática


##Informações do computador
$spec = {
    Get-WmiObject win32_baseboard; 
    Get-WmiObject Win32_Bios; 
    Get-WmiObject win32_physicalmemory | 
    Select-Object Manufacturer,Banklabel,Configuredclockspeed,Devicelocator,Capacity,Serialnumber; 
    Get-ComputerInfo OSName, OsArchitecture; 
    Get-WmiObject -class win32_quickfixengineering; 
    Get-CimInstance Win32_OperatingSystem | 
    Select-Object Caption, InstallDate, ServicePackMajorVersion, OSArchitecture, BootDevice, BuildNumber, CSName | Format-List; 
    Get-LocalUser; Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall | 
    Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table
} 
#Output da informação anterior para um documento .txt
& $spec | Out-File -FilePath "C:\LI\Info.txt"
Get-Content -Path "C:\LI\Info.txt" -Force