## Iuri Rodrigues
## Nº 21159
## a21159@alunos.ipca.pt
# Laboratórios de Informática


#Copiar Pasta para outra localização
Copy-Item -Path C:\LI\pasta1\teste -Destination C:\LI\pasta2

## Enviar email
if ($?) {
    $From = "no.reply02495@gmail.com"
    $SMTP = "smtp.gmail.com"
    $To = "no.reply02495@gmail.com"
    $Subject = "Notificacao"
    $Body = "Pasta movida com sucesso"
    $pass = Get-Content .\password.txt |  ConvertTo-SecureString -AsPlainText -Force
    $Creds = New-Object System.Management.Automation.PSCredential -ArgumentList $From, $pass

    Start-Sleep 2
    Send-MailMessage -To $To -From $From -Subject $Subject -Body $Body -SmtpServer $SMTP -Credential $Creds -UseSsl -Port 587 -DeliveryNotificationOption never
}