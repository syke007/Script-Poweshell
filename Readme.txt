##COMOFAZER

De modo a fazer a executar corretamente os scripts siga estes passos:
    1º Passo: Descomprimir a pasta zipada, retirar a pasta "LI" dentro da pasta "20212022_ESI_LI_TP1_21159", e colocar no disco C;

    2º Passo: Na script "copy_sendmail" na linha 8 mudar o caminho de Path e Destination para o caminho onde se encontra a pasta e para onde deverá ir, respetivamente;

    3º Passo: Ainda na script "copy_sendmail", mude as variáveis "$From" e "$To", para o e-mail que deseja enviar e receber, respetivamente, o aviso;

    4º Passo: Na script "agendamento", na linha 12 escolha para quando deseja efetuar a Copia de Segurança, substituindo conforme este modelo:(-Daily -At "HORAS") ; 
    
    5º Passo: No ficheiro txt "password" escreva a password do email que substituiu no 3ª Passo em "$From"

    5º Passo: Depois clicar com o botao direito do rato no script backup e selecionar "Run With Powershelll",
    
Depois da execução do script, de acordo com a hora escolhida, todos os dias será feita a Cópia de Segurança á hora escolhida.


