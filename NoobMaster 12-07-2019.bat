:: Desabilita função echo /basica em todo arquivo batch
@echo off
:: Seta titulo do arquivo no prompt de comandos
title Noob Master v 7.0.0.0 Beta
:: Função que corrige letras e acentos
chcp 65001
cls

::: Links 

:: Link do repositorio Noob Master disponivel no GitHub
set server=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/

:: Link de onde é retirado o arquivo da stock rom !
set server_stock=https://dl2018.sammobile.com/Pl9ZQiQnIiIwWCYkNVo2PkNYWD49KSAnUy02MUI3MyA7RhMaGUlOOyhDL0BDWSQgTlJbRFxGQFFfVAMWHxsMTk5ZWEZbREVY/J701MTVJU6CSF2_J701MTZTO6CSF1_ZTO.zip

::::::::::::::::::::::::: Links Twrp

:: Twrp Jasmine_Sprout 3.2.3-0
set Baguvix=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine_sprout/twrp-3.2.3-0-jasmine_sprout/twrp-3.2.3-0-jasmine_sprout.img

:: Twrp Jasmine_Sprout 3.3.0-0
set Hesoyan=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine_sprout/twrp-3.3.0-0-jasmine_sprout/twrp-3.3.0-0-jasmine_sprout.img

:: Twrp Jasmine_Sprout 3.3.1-0
set Uzumymw=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine_sprout/twrp-3.3.1-0-jasmine_sprout/twrp-3.3.1-0-jasmine_sprout.img

:: Twrp wayne 3.2.3-0
set Oneway=https://raw.githubusercontent.com/digoserip3/NoobMaster/master/adb/file/twrp/wayne/twrp-3.2.3-0-wayne/twrp-3.2.3-0-wayne.img

:: Twrp wayne 3.2.3-1
set Runway=https://raw.githubusercontent.com/digoserip3/NoobMaster/master/adb/file/twrp/wayne/twrp-3.2.3-1-wayne/twrp-3.2.3-1-wayne.img

:: Twrp wayne 3.3.0-0
set Kicogeco=https://raw.githubusercontent.com/digoserip3/NoobMaster/master/adb/file/twrp/wayne/twrp-3.3.0-0-wayne/twrp-3.3.0-0-wayne.img

:: Twrp wayne 3.3.1
set Aezakmi=https://raw.githubusercontent.com/digoserip3/NoobMaster/master/adb/file/twrp/wayne/twrp-3.3.1-wayne/twrp-3.3.1-wayne.img

:: Seta valor do tamanho da tela 
mode 120,30

setlocal EnableDelayedExpansion
:: Script que seta cores em linhas especificadas no script através do comando ( call :cortexto 02 )
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
goto :corolidu
:cortexto
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof
:corolidu
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
:START
color 03
set inti=0
set intk=10
:STARTTITLE
set /a inti+=1
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo                        █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo                        █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo                        █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo                        █   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █
echo                        █                                                                  █
echo                        ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
echo.
echo                                             Seja bem vindo %username% !
echo.
echo                                                  ┌─────────────────────────────────┐
echo                                                  │  bY: Rodrigo Pires da Silva     │
echo                                                  └─────────────────────────────────┘
echo.
if %inti% LSS %intk% (
      if "%inti%"=="1" (echo                   ▀▀▀▀▀▀▀▀▀▀▀▀▀) & (echo.            ) & (ping -n 1 127.0.0.1>nul) & (GOTO 1)
      if "%inti%"=="2" (echo                   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀) & (echo.            ) & (ping -n 1 127.0.0.1>nul) & (GOTO 2)
      if "%inti%"=="3" (echo                   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀) & (echo.            ) & (ping -n 1 127.0.0.1>nul) & (GOTO 3)
      if "%inti%"=="4" (echo                   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀) & (echo.            ) & (ping -n 1 127.0.0.1>nul) & (GOTO 4)
      if "%inti%"=="5" (echo                   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀) & (echo.            ) & (ping -n 1 127.0.0.1>nul) & (GOTO 5)
      if "%inti%"=="6" (echo                   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀) & (echo.            ) & (ping -n 1 127.0.0.1>nul) & (GOTO 6)
      if "%inti%"=="7" (echo                   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀) & (echo.            ) & (ping -n 1 127.0.0.1>nul) & (GOTO 7)
)
goto 8
:1
ping -n 1 127.0.0.1>nul
GOTO STARTTITLE
:2
ping -n 1 127.0.0.1>nul
GOTO STARTTITLE
:3
ping -n 1 127.0.0.1>nul
GOTO STARTTITLE
:4
ping -n 1 127.0.0.1>nul
GOTO STARTTITLE
:5
ping -n 1 127.0.0.1>nul
GOTO STARTTITLE
:6
ping -n 1 127.0.0.1>nul
GOTO STARTTITLE
:7
ping -n 2 127.0.0.1>nul

:: Seta adb e fastboot 
pushd "%~dp0"
set adb="%cd%\adb\adb.exe"
set fastboot="%cd%\adb\fastboot.exe"
:: No maximo 14 caracteres
set "nome= Noob Master "
:: Manter padrão de sequencia
set "ver= 7.0.0.0 "
:: Inicia menu principal
:Menu
title %nome% v%ver%
color 03
:: verficica arquivos adb
 if exist "%cd%\adb\fastboot.exe"     (echo.) else (goto Adb )
 if exist "%cd%\adb\adb.exe"          (echo.) else (goto Adb )
 if exist "%cd%\adb\AdbWinApi.dll"    (echo.) else (goto Adb )
 if exist "%cd%\adb\AdbWinUsbApi.dll" (echo.) else (goto Adb ) 
 if exist "%cd%\adb\cmd-here.exe"     (echo.) else (goto Adb )
 if exist "%cd%\adb\rleimager.exe"    (echo.) else (goto Adb )
 if exist "%cd%\adb\unins000.dat"     (echo.) else (goto Adb )
 if exist "%cd%\adb\unins000.exe"     (echo.) else (goto Adb )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐            ┌───────────────────────────────────────────┤
echo      ├──────┤ 1 ) OPÇÕES PARA O BOOTLOADER              ├────────────┤                                           │
echo      │      └───────────────────────────────────────────┤  Mi A2/6X  └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 2 ) OPÇÕES DE ERASE (SYSTEM/VENDOR)       ├────────────┤                                           │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 3 ) INSTALAÇÃO DA STOCK ROM ( A2 JASMINE )├────────────┤                                           │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 4 ) TWRP (A2/6X )                         ├────────────┤                                           │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤                                           ├────────────┤                                           │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤                                           ├────────────┤                                           │
echo      │      └───────────────────────────────────────────┤  E) EXIT   └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      └──────┤                                           ├────────────┤ V ) VERIFICA RAIZ DE ARQUIVOS             │
echo             └───────────────────────────────────────────┘            └───────────────────────────────────────────┘
set nb=
set /p "nb=Digite o numero da opção que deseja %username% > "
:dec
 if '%nb%' == '1' goto Bootloader
 if '%nb%' == '2' goto Erase
 if '%nb%' == '3' goto StockRom
 if '%nb%' == '4' goto Twrp
 
 
  if '%nb%' == 't' goto TwrpBaguvixError
  
  
 if '%nb%' == 'V' goto VerAdb
 if '%nb%' == 'v' goto VerAdb
 if '%nb%' == 'e' goto eof
 if '%nb%' == 'E' goto eof

goto Menu


:: Menu de bootloader
:Bootloader
title Menu Bootloader
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) Bloquear bootloader                   │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) Desbloquear OEM                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) Desbloquear critical                  │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
set nb=
set /p "nb=Digite aqui o que deseja > "
 if '%nb%' == '1' goto BloqBoot
 if '%nb%' == '2' goto DesbloquearOEM
 if '%nb%' == '3' goto DesbloquearCritical
 if '%nb%' == 'e' goto Menu
 if '%nb%' == 'E' goto Menu
goto Bootloader
:: Seta função para bloqueio de bootloader
:BloqBoot
title Bloqueando bootloader
cls
:: Seta cores no script
color 03
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Executando comando de bloqueio de bootloader                                                    │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% oem lock || @echo "oem lock error" && goto ErrorBoot
echo.
echo.
echo MsgBox "Para que seu dispositivo ligue, e necessario estar na stock rom.",16,"Lembre-se! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
cls
echo Pressione qualquer tecla para voltar
echo.
pause >nul 
goto Bootloader
:: Desblqueando bootloader 
:DesbloquearOEM
title Desbloqueando OEM
:: Seta cores no script
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Executando comando de desbloqueio de bootloader                                                 │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% oem unlock || @echo "oem unlock error" && goto ErrorBoot
cls
echo.
echo.
echo MsgBox " Parece que o comando deu certo                                                   Olhe para o celular e selecione [ Unlock The bootloader ]",16,"Atencao! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
cls
echo Pressione qualquer tecla para voltar
echo.
pause >nul 
goto Bootloader
:: Desblqueando bootloader critical
:DesbloquearCritical
title Desbloqueando Critical
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Executando comando de desbloqueio de bootloader                                                 │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% flashing unlock_critical || @echo "flashing unlock_critical error" && goto ErrorBoot
cls
echo.
echo.
echo MsgBox " Parece que o comando deu certo                                                   Olhe para o celular e selecione [ Unlock The bootloader ]",16,"Atencao! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
cls
echo Pressione qualquer tecla para voltar
echo.
pause >nul 
goto Bootloader
:: Mensagem de eroo no desbloqueio e bloqueio do bootloader
:ErrorBoot
title ERRO !
color 40
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Errooooooooooooooooooooooooooooooooooooooooooooo.                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo 
echo.
echo Deu erro, eu não sei direito o que pode ter acontecido, mas to aqui ! Posso te ajudar !
echo.
echo.
echo.
echo MsgBox "Parece que vc ja desbloqueou o bootloader! ",16,"Erro">%cd%\adb\wyz.vbs 
start %cd%\adb\wyz.vbs 
echo.
echo.
echo Tecle qualquer tecla para voltar para o Menu de Bootloader !
echo.
echo.
pause>nul
echo.
echo.
goto Bootloader

:: Menu de Erase
:Erase
title Menu Erase 
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐            ┌───────────────────────────────────────────┤
echo      ├──────┤ 1 ) ERASE SYSTEM JASMINE                  ├────────────┤ 7 ) APAGAR TODOS OS SEUS DADOS            │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) ERASE VENDOR JASMINE                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) ERASE SYSTEM WAYNE                    │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) ERASE VENDOR WAYNE                    │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) ERASE USER DATA                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) ERASE CACHE                           │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
set nb=
set /p "nb=Digite aqui o que deseja > "
 if '%nb%' == '1' goto EraseSystemA2
 if '%nb%' == '2' goto EraseVendorA2
 if '%nb%' == '3' goto EraseSystem6X
 if '%nb%' == '4' goto EraseVendor6X
 if '%nb%' == '5' goto EraseUserData
 if '%nb%' == '6' goto EraseCache
 if '%nb%' == '7' goto EraseW
 if '%nb%' == 'e' goto Menu
 if '%nb%' == 'E' goto Menu
goto Erase
:: Erase no system do jasmine
:EraseSystemA2
title Erase no system jasmine
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Executando comando de erase system jasmine_sprout                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% erase system_a || @echo "erase system_a error" && goto ErrorErase
%fastboot% erase system_b || @echo "erase system_b error" && goto ErrorErase
echo.
echo.
echo MsgBox "Parece que o comando deu certo [ Erase concluido]                  Reescreva o sistema novamente, atraves da instalacao da stock rom.",vbInformation,"Atencao! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
timeout 5 >nul
goto Erase
:: Erase do vendor A2 jasmine_sprout
:EraseVendorA2
title Erase no vendor jasmine 
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Executando comando de erase system jasmine_sprout                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% erase vendor_a || @echo "erase vendor_a error" && goto ErrorErase
%fastboot% erase vendor_b || @echo "erase vendor_b error" && goto ErrorErase
echo.
echo.
echo MsgBox "Parece que o comando deu certo [ Erase concluido]                  Reescreva o sistema novamente, atraves da instalacao da stock rom.",vbInformation,"Atencao! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
timeout 5 >nul
goto Erase
:: Erase no system do wayne
:EraseSystem6X
title Erase no system wayne
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Executando comando de erase system wayne                                                        │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% erase system || @echo "erase system error" && goto ErrorErase
echo.
echo.
echo MsgBox "Parece que o comando deu certo [ Erase concluido]                  Reescreva o sistema novamente, atraves da instalacao da stock rom.",16,"Atencao! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
timeout 5 >nul
goto Erase
:: Erase no vendor wayne 
:EraseVendor6X
title Erase no vendor do wayne
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Executando comando de erase system wayne                                                        │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% erase vendor || @echo "erase vendor error" && goto ErrorErase
echo.
echo.
echo MsgBox "Parece que o comando deu certo [ Erase concluido]                  Reescreva o sistema novamente, atraves da instalacao da stock rom.",vbInformation,"Atencao! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
timeout 5 >nul
goto Erase
:: Erase User Data
:EraseUserData
title Erase User Data
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Executando comando de erase system jasmine_sprout                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% erase userdata || @echo "erase userdata error" && goto ErrorErase
echo.
echo.
echo MsgBox "Parece que o comando deu certo [ Erase concluido]                  Reescreva o sistema novamente, atraves da instalacao da stock rom.",vbInformation,"Atencao! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
timeout 5 >nul
goto Erase
:: Erase Cache
:EraseCache
title Erase no cache do sistema 
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Executando comando de erase system jasmine_sprout                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% erase cache || @echo "erase cache error" && goto ErrorErase
echo.
echo.
echo MsgBox "Parece que o comando deu certo [ Erase concluido]                  Reescreva o sistema novamente, atraves da instalacao da stock rom.",vbInformation,"Atencao! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
timeout 5 >nul
goto Erase
:: Erase Cache
:EraseW
title Apagando dados e data do sistema
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Executando comando de erase system jasmine_sprout                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% -w || @echo "-w error" && goto ErrorErase
echo.
echo.
echo MsgBox "Parece que o comando deu certo [ Erase concluido]                  Reescreva o sistema novamente, atraves da instalacao da stock rom.",vbInformation,"Atencao! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
timeout 5 >nul
goto Erase
:: Error no erase 
:ErrorErase
title Erro ao aplicar o comando ERASE 
color 40
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Errooooooooooooooooooooooooooooooooooooooooooooo.                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo.
echo Deu erro, eu não sei direito o que pode ter acontecido, mas to aqui ! Posso te ajudar !
echo.
echo.
echo.
echo MsgBox " Deu erro amigo, clique em ok e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Tecle qualquer tecla para voltar para o Menu de Erase !
echo.
echo.
pause>nul
echo.
echo.
goto Erase
:: Menu de stock rom
:StockRom
title Menu Stock ROM v 10.0.9.0 OFFICIAL
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) DOWNLOAD DA STOCK (v10.0.9.0) anti 1  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DESCOMPACTAR ARQUIVO                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) FLASH DA STOCK ROM                    │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVOS                    │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) ABRIR PASTA DO ARQUIVO STOCK ROM      │                                                        │
echo      │      └───────────────────────────────────────────┘            ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
 if exist "%cd%\adb\stock\jasmine.tgz" ( call :cortexto 0a "Ok, encontrei o arquivo da rom.  ") else ( call :cortexto 04 "Voce ainda nao baixou a rom. ")
echo.
if exist "%cd%\adb\7Zip\"              ( call :cortexto 0a "Ok, encontrei a pasta 7Zip, preciso dela para extrair a rom.  ") else ( call :cortexto 04 "Parece que esta faltando a pasta 7Zip ")
echo.
if exist "%cd%\adb\stock\system.img"   ( call :cortexto 0a "Ok, o parece que voce ja extraiu a rom.  ") else ( call :cortexto 04 "Faca a extracao da rom ! ")
echo.
echo.
set nb=
set /p "nb=DIGITE A OPÇÃO QUE DESEJA > "

 if '%nb%' == '1' goto DownloadStock
 if '%nb%' == '2' goto ExtrairStock
 if '%nb%' == '3' goto FlashStock
 if '%nb%' == '4' goto VerificaStock
 if '%nb%' == '5' goto OpenStock
 if '%nb%' == 'e' goto Menu
 if '%nb%' == 'E' goto Menu
goto StockRom
:: Download da stock memo
:DownloadStock
 if exist "%cd%\adb\stock\jasmine.tgz" ( echo MsgBox "Deixa de ser besta, voce ja baixou a rom, agora vc precisa extrair ela.",vbInformation,"Presta atencao. " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockRom ) else ( echo. )
title Baixando a stock rom 10.0.9.0, aguarde !
color 30

cls
echo.                          Atualmente estou baixando a rom, agora vai demorar um pouco !
echo.                                      Mas quando terminar, vou te avisar !
echo.
mkdir "%cd%\adb\stock\"
timeout 3 > nul
powershell -command "& {&'Invoke-WebRequest' -Uri '%server_stock%' -OutFile '%cd%\adb\stock\jasmine.zip'}"
cls
 if exist "%cd%\adb\stock\jasmine.tgz" ( echo . ) else ( echo MsgBox "Epa, alguma coisa deu errado, o arquivo nao foi baixado !",16,"Presta atencao. " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockRom )
cls
echo MsgBox "Agora voce precisa extrair a stock rom.                                       Aguardo voce pressionar alguma tecla para que eu va para a extracao da stock rom.",16,"Parece que o download deu certo. " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo           Parece que seu download deu certo, tecle algo para que eu volte ao menu de opções da stock rom.
echo.
echo.
pause >nul
goto StockRom

:: Arquivos necessários para extração da stock rom.
:7zip
title Baixando os arquivos que farão a extração da rom stock !
color 30
cls
echo.	
echo.				Baixando arquivos necessários para extração!
echo.							Aguarde !
echo.
timeout 3 > nul
mkdir adb\7Zip\
mkdir adb\7Zip\Far\
mkdir adb\7Zip\x64\

powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/7za.exe' -OutFile '%cd%\adb\7Zip\7za.exe'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/7za.dll' -OutFile '%cd%\adb\7Zip\7za.dll'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/7zxa.dll' -OutFile '%cd%\adb\7Zip\7zxa.dll'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/x64/7za.exe' -OutFile '%cd%\adb\7Zip\X64\7za.exe'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/x64/7za.dll' -OutFile '%cd%\adb\7Zip\X64\7za.dll'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/x64/7zxa.dll' -OutFile '%cd%\adb\7Zip\X64\7zxa.dll'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/7-ZipEng.hlf' -OutFile '%cd%\adb\7Zip\Far\7-ZipEng.hlf'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/7-ZipRus.lng' -OutFile '%cd%\adb\7Zip\Far\7-ZipEng.lng'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/7-ZipFar.dll' -OutFile '%cd%\adb\7Zip\Far\7-ZipFar.dll'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/7-ZipFar64.dll' -OutFile '%cd%\adb\7Zip\Far\7-ZipFar64.dll'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/7-ZipRus.hlf' -OutFile '%cd%\adb\7Zip\Far\7-ZipRus.hlf'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/7zToFar.ini' -OutFile '%cd%\adb\7Zip\Far\7zToFar.ini'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/far7z.reg' -OutFile '%cd%\adb\7Zip\Far\far7z.reg'}"
powershell -command "& {&'Invoke-WebRequest' -Uri '%server%adb/7Zip/Far/far7z.txt' -OutFile '%cd%\adb\7Zip\Far\far7z.txt'}"
goto StockRom
:: Extrai stock 
:ExtrairStock
title Extraindo a stock rom 
color 03
 if exist "%cd%\adb\stock\system.img" ( echo MsgBox "Deixa de ser besta, voce ja extraiu a rom, agora vc pode flashear ela.",vbInformation,"Presta atencao. " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockRom ) else ( echo. )
if exist "%cd%\adb\7Zip\"     (echo.) else ( goto 7zip )
if exist "%cd%\adb\7Zip\Far\" (echo.) else ( goto 7zip )
if exist "%cd%\adb\7Zip\x64\" (echo.) else ( goto 7zip )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Executando extração da stock rom jasmine_sprout                                                 │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
"%cd%\adb\7Zip\7za.exe" e -o"%cd%\adb\stock" -bt -aoa "%cd%\adb\stock\jasmine.tgz"
"%cd%\adb\7Zip\7za.exe" e -o"%cd%\adb\stock" -bt -aoa "%cd%\adb\stock\jasmine.tar"
echo.
echo Tecle algo para voltar, sem você não sou ninguém...
pause > nul
goto StockRom
:: Flash da stock
:VerificaStock
title Verificando existencia dos arquivos da rom !
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Verificando arquivos da stock rom V10.0.9.0                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
 if exist "%cd%\adb\stock\"              ( call :cortexto 0a " Ok, a pasta foi criada. ")        else ( call :cortexto 04 " Ta faltando a pasta da rom. ")
 echo.
 if exist "%cd%\adb\stock\system.img"    ( call :cortexto 0a " Ok, o SYSTEM.IMG esta aqui.")     else ( call :cortexto 04 " Cade o SYSTEM.IMG")
 echo.
 if exist "%cd%\adb\stock\vendor.img"    ( call :cortexto 0a " Ok, o VENDOR.IMG esta aqui. ")    else ( call :cortexto 04 " Cade o VENDOR.IMG ")
 echo.
 if exist "%cd%\adb\stock\persist.img"   ( call :cortexto 0a " Ok, o PERSIST.img esta aqui. ")   else ( call :cortexto 04 " Cade o PERSIST.IMG  ")
 echo.
 if exist "%cd%\adb\stock\bluetooth.img" ( call :cortexto 0a " Ok, o BLUETOOTH.IMG esta aqui. ") else ( call :cortexto 04 " Cade o BLUETOOTH.IMG   ")
 echo.
 if exist "%cd%\adb\stock\devcfg.img"    ( call :cortexto 0a " Ok, o DEVCFG.IMG esta aqui. ")    else ( call :cortexto 04 " Cade o DEVCFG.IMG ")
 echo.
 if exist "%cd%\adb\stock\dsp.img"       ( call :cortexto 0a " Ok, o DSP.IMG esta aqui. ")       else ( call :cortexto 04 " Cade o DSP.IMG ")
 echo.
 if exist "%cd%\adb\stock\modem.img"     ( call :cortexto 0a " Ok, o MODEM.IMG esta aqui. ")     else ( call :cortexto 04 " Cade o MODEM.IMG ")
 echo.
 if exist "%cd%\adb\stock\xbl.img"       ( call :cortexto 0a " Ok, o XBL.IMG esta aqui. ")       else ( call :cortexto 04 " Cade o XBL.IMG ")
 echo.
 if exist "%cd%\adb\stock\pmic.img"      ( call :cortexto 0a " Ok, o PMIC.IMG esta aqui. ")      else ( call :cortexto 04 " Cade o PMIC.IMG ")
 echo.
 if exist "%cd%\adb\stock\rpm.img"       ( call :cortexto 0a " Ok, o RPM.IMG esta aqui. ")      else ( call :cortexto 04 " Cade o RPM.IMG  ")
 echo.
 if exist "%cd%\adb\stock\tz.img"        ( call :cortexto 0a " Ok, o TZ.IMG esta aqui. ")      else ( call :cortexto 04 " Cade o TZ.IMG  ")
 echo.
 if exist "%cd%\adb\stock\boot.img"        ( call :cortexto 0a " Ok, o BOOT.IMG esta aqui. ")      else ( call :cortexto 04 " Cade o BOOT.IMG  ")
echo.
echo.
echo.
echo.
call :cortexto 06 "Pressione qualquer tecla para voltar para o menu de instalacao da stock rom."
echo.
pause > nul 
goto StockRom
:: Flash da stock rom jasmine  
:FlashStock 
title Fazendo a instalação da stock rom através do Fastboot
color 03
if exist "%cd%\adb\stock\" ( echo . ) else ( goto AvisoDownloadStock )
if exist "%cd%\adb\stock\system.img" ( echo . ) else ( goto AvisoDownloadStock)
cls
echo.
echo.
echo.			Vamos aos erase !
echo.
echo.
timeout 2 > nul
		%fastboot% erase system_a || @echo "erase system_a error" && goto FlashStockError
		%fastboot% erase system_b || @echo "erase system_a error" && goto FlashStockError
		%fastboot% erase vendor_a || @echo "erase vendor_a error" && goto FlashStockError
		%fastboot% erase vendor_b || @echo "erase vendor_a error" && goto FlashStockError
		%fastboot% erase cache
		%fastboot% erase userdata
		%fastboot% -w 
cls
		%fastboot%  flash bluetooth_a "%~dp0\adb\stock\bluetooth.img" || @echo "Flash bluetooth_a error" && goto FlashStockError
		%fastboot%  flash bluetooth_b "%~dp0\adb\stock\bluetooth.img" || @echo "Flash bluetooth_b error" && goto FlashStockError
		%fastboot%  flash devcfg_a "%~dp0\adb\stock\devcfg.img" || @echo "Flash devcfg_a error" && goto FlashStockError
		%fastboot%  flash devcfg_b "%~dp0\adb\stock\devcfg.img" || @echo "Flash devcfg_b error" && goto FlashStockError
		%fastboot%  flash dsp_a "%~dp0\adb\stock\dsp.img" || @echo "Flash dsp_a error" && goto FlashStockError
		%fastboot%  flash dsp_b "%~dp0\adb\stock\dsp.img" || @echo "Flash dsp_b error" && goto FlashStockError
		%fastboot%  flash modem_a "%~dp0\adb\stock\modem.img" || @echo "Flash modem_a error" && goto FlashStockError
		%fastboot%  flash modem_b "%~dp0\adb\stock\modem.img" || @echo "Flash modem_b error" && goto FlashStockError
		%fastboot%  flash xbl_a "%~dp0\adb\stock\xbl.img" || @echo "Flash xbl_a error" && goto FlashStockError
		%fastboot%  flash xbl_b "%~dp0\adb\stock\xbl.img" || @echo "Flash xbl_b error" && goto FlashStockError
		%fastboot%  flash pmic_a "%~dp0\adb\stock\pmic.img" || @echo "Flash pmic_a error" && goto FlashStockError
		%fastboot%  flash pmic_b "%~dp0\adb\stock\pmic.img" || @echo "Flash pmic_b error" && goto FlashStockError
		%fastboot%  flash rpm_a "%~dp0\adb\stock\rpm.img" || @echo "Flash rpm_a error" && goto FlashStockError
		%fastboot%  flash rpm_b "%~dp0\adb\stock\rpm.img" || @echo "Flash rpm_b error" && goto FlashStockError
		%fastboot%  flash tz_a "%~dp0\adb\stock\tz.img" || @echo "Flash tz_a error" && goto FlashStockError
		%fastboot%  flash tz_b "%~dp0\adb\stock\tz.img" || @echo "Flash tz_b error" && goto FlashStockError
		%fastboot%  flash hyp_a "%~dp0\adb\stock\hyp.img" || @echo "Flash hyp_a error" && goto FlashStockError
		%fastboot%  flash hyp_b "%~dp0\adb\stock\hyp.img" || @echo "Flash hyp_b error" && goto FlashStockError
		%fastboot%  flash keymaster_a "%~dp0\adb\stock\keymaster.img" || @echo "Flash keymaster_a error" && goto FlashStockError
		%fastboot%  flash keymaster_b "%~dp0\adb\stock\keymaster.img" || @echo "Flash keymaster_b error" && goto FlashStockError
		%fastboot%  flash cmnlib64_a "%~dp0\adb\stock\cmnlib64.img" || @echo "Flash cmnlib64_a error" && goto FlashStockError
		%fastboot%  flash cmnlib64_b "%~dp0\adb\stock\cmnlib64.img" || @echo "Flash cmnlib64_b error" && goto FlashStockError
		%fastboot%  flash cmnlib_a "%~dp0\adb\stock\cmnlib.img" || @echo "Flash cmnlib_a error" && goto FlashStockError
		%fastboot%  flash cmnlib_b "%~dp0\adb\stock\cmnlib.img" || @echo "Flash cmnlib_b error" && goto FlashStockError
		%fastboot%  flash abl_a "%~dp0\adb\stock\abl.elf" || @echo "Flash abl_a error" && goto FlashStockError
		%fastboot%  flash abl_b "%~dp0\adb\stock\abl.elf" || @echo "Flash abl_b error" && goto FlashStockError
		%fastboot%  flash boot_a "%~dp0\adb\stock\boot.img" || @echo "Flash boot_a error" && goto FlashStockError
		%fastboot%  flash boot_b "%~dp0\adb\stock\boot.img" || @echo "Flash boot_b error" && goto FlashStockError
		%fastboot%  flash system_a "%~dp0\adb\stock\system.img" || @echo "Flash system_a error" && goto FlashStockError
		%fastboot%  flash system_b "%~dp0\adb\stock\system.img" || @echo "Flash system_b error" && goto FlashStockError
		%fastboot%  flash vendor_a "%~dp0\adb\stock\vendor.img" || @echo "Flash vendor_a error" && goto FlashStockError
		%fastboot%  flash vendor_b "%~dp0\adb\stock\vendor.img" || @echo "Flash vendor_b error" && goto FlashStockError
		%fastboot%  flash mdtp_a "%~dp0\adb\stock\mdtp.img" || @echo "Flash mdtp_a error" && goto FlashStockError
		%fastboot%  flash mdtp_b "%~dp0\adb\stock\mdtp.img" || @echo "Flash mdtp_b error" && goto FlashStockError
		%fastboot%  flash splash "%~dp0\adb\stock\splash.img" || @echo "Flash splash error" && goto FlashStockError
		%fastboot%  flash mdtpsecapp_a "%~dp0\adb\stock\mdtpsecapp.img" || @echo "Flash mdtpsecapp_a error" && goto FlashStockError
		%fastboot%  flash mdtpsecapp_b "%~dp0\adb\stock\mdtpsecapp.img" || @echo "Flash mdtpsecapp_b error" && goto FlashStockError
		%fastboot%  flash storsec "%~dp0\adb\stock\storsec.mbn" || @echo "Flash storsec error" && goto FlashStockError
		%fastboot% reboot-bootloader
		%fastboot% -w
		%fastboot% reboot 
cls
title Deu certo !
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Deu certo, parece que vc conseguiu, parabéns                                                    │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto StockRom
:: Erro no flash da stock rom 
:FlashStockError
title ERROOOOOOOOOOOOOOOOOOOOOOOOOOOooooo !
color 40
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Errooooooooooooooooooooooooooooooooooooooooooooo.                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo.
echo.
echo Deu erro, eu não sei direito o que pode ter acontecido, mas to aqui ! Posso te ajudar !
echo.
echo.
echo.
echo MsgBox " Deu erro amigo, clique em ok e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Tecle qualquer tecla para voltar para o Menu da stock rom !
echo.
echo.
pause>nul
echo.
echo.
goto StockRom
:: Aviso de que é necessario baixar a stock rom antes de qualquer coisa
:AvisoDownloadStock
title Tecle algo para avançar !
color 03
cls
echo MsgBox "Voce precisa baixar a stock rom.                                               Aguardo voce pressionar alguma tecla para que eu va para o download da stock rom.",vbInformation,"Epa, perai. " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo.
echo.
echo                                   Tecla alguma coisa ai, vou baixar a stock rom pra você.
echo.
echo.
echo.
echo.
pause > nul
goto DownloadStock
:: Download Adb 
:Adb 
title Baixando ADB para que o Noob Master funcione corretamente.
color 30
cls
echo.
echo                    Estou baixando o Adb para que tudo funcione corretamente.
echo.
echo                               Fique tranquilo, vou te avisar quando acabar !
mkdir adb
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/adb.exe', 'adb\adb.exe') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/rleimager.exe', 'adb\rleimager.exe') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/AdbWinUsbApi.dll', 'adb\AdbWinUsbApi.dll') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/AdbWinApi.dll', 'adb\AdbWinApi.dll') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/unins000.exe', 'adb\unins000.exe') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/unins000.dat', 'adb\unins000.dat') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/fastboot.exe', 'adb\fastboot.exe') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/cmd-here.exe', 'adb\cmd-here.exe') }"
echo MsgBox "Ok, o Adb foi baixado! ",vbInformation,"Agora vai :) " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto Menu

:: SEM PAUSA, VÁ DIRETO PARA O MENU DE VERIFICAÇÃO DE ARQUIVOS
:VerAdb
title Verificando existencia dos arquivos do ADB
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │      Essas são as pastas que foram criadas durante os procedimentos, você deve saber o que criamos        │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
tree
echo.
echo Pressione qualquer tecla para voltar para o menu 
pause > nul
goto Menu
goto Menu
:OpenStock
cls
start %cd%\adb\stock\
goto StockRom
:Twrp
title Menu TWRP
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐            ┌───────────────────────────────────────────┤
echo      ├──────┤            Twrp jasmine_sprout            ├────────────┤                Twrp wayne                 │
echo      │      └───────────────────────────────────────────┤    M  i    └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤  (A2  6X)  ┌───────────────────────────────────────────┤
echo      ├──────┤ 1 ) TWRP 3.2.3-0                          ├────────────┤ 4 ) TWRP 3.2.3-0                          │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 2 ) TWRP 3.3.0-0                          ├────────────┤ 5 ) TWRP 3.2.3-1                          │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 3 ) TWRP 3.3.1-0                          ├────────────┤ 6 ) TWRP 3.3.0-0                          │
echo      │      └───────────────────────────────────────────┘            └───────────────────────────────────────────┤
echo      │                                                               ┌───────────────────────────────────────────┤
echo      ├───────────────────────────────────────────────────────────────┤ 7 ) TWRP 3.3.1-0                          │
echo      │                                                               └───────────────────────────────────────────┤
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
set nb=
set /p "nb=Digite o numero da opção que deseja %username% > "
 if '%nb%' == '1' goto TwrpBaguvix
 if '%nb%' == '2' goto TwrpHesoyan
 if '%nb%' == '3' goto TwrpUzumymw
 if '%nb%' == '4' goto TwrpOneway
 if '%nb%' == '5' goto TwrpRunway
 if '%nb%' == '6' goto TwrpKicogeco
 if '%nb%' == '7' goto TwrpAezakmi

 
 if '%nb%' == 'E' goto Menu
 if '%nb%' == 'e' goto Menu
goto Twrp
:Twrpbaguvix
title Twrp jasmine Versão 3.2.3-0 !
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO TWRP 3.2.3-0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PARA CASO ESTAR CORROMPIDO   │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpbaguvix
if '%nb%' == '2' goto DownTwrpbaguvix
if '%nb%' == '3' goto DelTwrpbaguvix
if '%nb%' == '4' goto VerTwrpbaguvix
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto Twrpbaguvix
:: Boot no Twrp 
:GotoTwrpbaguvix
color 03
title Boot no Twrp 3.2.3-0 jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Twrpbaguvix  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot no twrp jasmine_sprout  v 3.2.3-0                                                          │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\jasmine\3.2.3-0.img" || @echo "boot error" && goto TwrpbaguvixError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto Twrpbaguvix
:DownTwrpbaguvix
color 30
title Download Twrp 3.2.3-0 jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Twrpbaguvix ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando twrp jasmine_sprout v 3.2.3-0 aguarde...                                │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\jasmine\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%baguvix%', 'adb\file\twrp\jasmine\3.2.3-0.img') }"
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Twrpbaguvix )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto Twrpbaguvix
:DelTwrpbaguvix
title Deletando Twrp 3.2.3-0
color 03
cls
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Twrpbaguvix )
del adb\file\twrp\jasmine\3.2.3-0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Twrpbaguvix
:VerTwrpbaguvix
cls
start %cd%\adb\file\twrp\jasmine\
goto Twrpbaguvix
:TwrpbaguvixError
title ERROOOOOOOOOOOOOOOOOOOOOOOOOOOooooo !
color 40
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Errooooooooooooooooooooooooooooooooooooooooooooo.                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo.
echo.
echo Deu erro, eu não sei direito o que pode ter acontecido, mas to aqui ! Posso te ajudar !
echo.
echo.
echo.
echo MsgBox " Deu erro amigo, clique em ok e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Pressione qualquer tecla para voltar !
echo.
echo.
pause>nul
echo.
echo.
goto Twrpbaguvix
:TwrpHesoyan
title Twrp jasmine Versão 3.3.0-0 !
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO TWRP 3.3.0-0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PARA CASO ESTAR CORROMPIDO   │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpHesoyan
if '%nb%' == '2' goto DownTwrpHesoyan
if '%nb%' == '3' goto DelTwrpHesoyan
if '%nb%' == '4' goto VerTwrpHesoyan
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpHesoyan
:: Boot no Twrp 
:GotoTwrpHesoyan
color 03
title Boot no Twrp 3.3.0-0 jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpHesoyan  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot no twrp jasmine_sprout  v 3.3.0-0                                                          │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\jasmine\3.3.0-0.img" || @echo "boot error" && goto TwrpHesoyanError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpHesoyan
:DownTwrpHesoyan
color 30
title Download Twrp 3.3.0-0 jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpHesoyan ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando twrp jasmine_sprout v 3.3.0-0 aguarde...                                │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\jasmine\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%hesoyan%', 'adb\file\twrp\jasmine\3.3.0-0.img') }"
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpHesoyan )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpHesoyan
:DelTwrpHesoyan
title Deletando Twrp 3.3.0-0
color 03
cls
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpHesoyan )
del adb\file\twrp\jasmine\3.3.0-0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpHesoyan
:VerTwrpHesoyan
cls
start %cd%\adb\file\twrp\jasmine\
goto TwrpHesoyan
:TwrpHesoyanError
title ERROOOOOOOOOOOOOOOOOOOOOOOOOOOooooo !
color 40
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Errooooooooooooooooooooooooooooooooooooooooooooo.                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo.
echo.
echo Deu erro, eu não sei direito o que pode ter acontecido, mas to aqui ! Posso te ajudar !
echo.
echo.
echo.
echo MsgBox " Deu erro amigo, clique em ok e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Pressione qualquer tecla para voltar !
echo.
echo.
pause>nul
echo.
echo.
goto TwrpHesoyan
:TwrpUzumymw
title Twrp jasmine Versão 3.3.1-0 !
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO TWRP 3.3.1-0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PARA CASO ESTAR CORROMPIDO   │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpUzumymw
if '%nb%' == '2' goto DownTwrpUzumymw
if '%nb%' == '3' goto DelTwrpUzumymw
if '%nb%' == '4' goto VerTwrpUzumymw
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpUzumymw
:: Boot no Twrp 
:GotoTwrpUzumymw
color 03
title Boot no Twrp 3.3.1-0 jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpUzumymw  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot no twrp jasmine_sprout  v 3.3.1-0                                                          │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\jasmine\3.3.1-0.img" || @echo "boot error" && goto TwrpUzumymwError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpUzumymw
:DownTwrpUzumymw
color 30
title Download Twrp 3.3.1-0 jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpUzumymw ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando twrp jasmine_sprout v 3.3.1-0 aguarde...                                │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\jasmine\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%Uzumymw%', 'adb\file\twrp\jasmine\3.3.1-0.img') }"
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpUzumymw )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpUzumymw
:DelTwrpUzumymw
title Deletando Twrp 3.3.1-0
color 03
cls
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpUzumymw )
del adb\file\twrp\jasmine\3.3.1-0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpUzumymw
:VerTwrpUzumymw
cls
start %cd%\adb\file\twrp\jasmine\
goto TwrpUzumymw
:TwrpUzumymwError
title ERROOOOOOOOOOOOOOOOOOOOOOOOOOOooooo !
color 40
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Errooooooooooooooooooooooooooooooooooooooooooooo.                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo.
echo.
echo Deu erro, eu não sei direito o que pode ter acontecido, mas to aqui ! Posso te ajudar !
echo.
echo.
echo.
echo MsgBox " Deu erro amigo, clique em ok e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Pressione qualquer tecla para voltar !
echo.
echo.
pause>nul
echo.
echo.
goto TwrpUzumymw
:TwrpOneway
title Twrp wayne Versão 3.2.3-0 !
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO TWRP 3.2.3-0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PARA CASO ESTAR CORROMPIDO   │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO TWRP 3.2.3-0 WAYNE           │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpOneway
if '%nb%' == '2' goto DownTwrpOneway
if '%nb%' == '3' goto DelTwrpOneway
if '%nb%' == '4' goto VerTwrpOneway
if '%nb%' == '5' goto FlashTwrpOneway
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpOneway
:: Boot no Twrp 
:GotoTwrpOneway
color 03
title Boot no Twrp 3.2.3-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpOneway  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot no twrp wayne  v 3.2.3-0                                                                   │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\wayne\3.2.3-0.img" || @echo "boot error" && goto TwrpOnewayError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpOneway
:DownTwrpOneway
color 30
title Download Twrp 3.2.3-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpOneway ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando twrp wayne v 3.2.3-0 aguarde...                                         │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\wayne\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%Oneway%', 'adb\file\twrp\wayne\3.2.3-0.img') }"
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpOneway )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpOneway
:DelTwrpOneway
title Deletando Twrp 3.2.3-0
color 03
cls
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpOneway )
del adb\file\twrp\wayne\3.2.3-0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpOneway
:VerTwrpOneway
cls
start %cd%\adb\file\twrp\wayne\
goto TwrpOneway
:TwrpOnewayError
title ERROOOOOOOOOOOOOOOOOOOOOOOOOOOooooo !
color 40
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Errooooooooooooooooooooooooooooooooooooooooooooo.                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo.
echo.
echo Deu erro, eu não sei direito o que pode ter acontecido, mas to aqui ! Posso te ajudar !
echo.
echo.
echo.
echo MsgBox " Deu erro amigo, clique em ok e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Pressione qualquer tecla para voltar !
echo.
echo.
pause>nul
echo.
echo.
goto TwrpOneway
:FlashTwrpOneway
color 03
title Flash do Twrp 3.2.3-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpOneway  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do twrp wayne  v 3.2.3-0                                                                  │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash recovery "%~dp0\adb\file\twrp\wayne\3.2.3-0.img" || @echo "flash recovery error" && goto TwrpOnewayError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpOneway
:TwrpRunway
title Twrp wayne Versão 3.2.3-1 !
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO TWRP 3.2.3-1                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PARA CASO ESTAR CORROMPIDO   │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO TWRP 3.2.3-1 WAYNE           │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpRunway
if '%nb%' == '2' goto DownTwrpRunway
if '%nb%' == '3' goto DelTwrpRunway
if '%nb%' == '4' goto VerTwrpRunway
if '%nb%' == '5' goto FlashTwrpRunway
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpRunway
:: Boot no Twrp 
:GotoTwrpRunway
color 03
title Boot no Twrp 3.2.3-1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpRunway  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot no twrp wayne  v 3.2.3-1                                                                   │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\wayne\3.2.3-1.img" || @echo "boot error" && goto TwrpRunwayError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpRunway
:DownTwrpRunway
color 30
title Download Twrp 3.2.3-1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpRunway ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando twrp wayne v 3.2.3-1 aguarde...                                         │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\wayne\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%Runway%', 'adb\file\twrp\wayne\3.2.3-1.img') }"
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpRunway )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpRunway
:DelTwrpRunway
title Deletando Twrp 3.2.3-1
color 03
cls
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpRunway )
del adb\file\twrp\wayne\3.2.3-1.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpRunway
:VerTwrpRunway
cls
start %cd%\adb\file\twrp\wayne\
goto TwrpRunway
:TwrpRunwayError
title ERROOOOOOOOOOOOOOOOOOOOOOOOOOOooooo !
color 40
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Errooooooooooooooooooooooooooooooooooooooooooooo.                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo.
echo.
echo Deu erro, eu não sei direito o que pode ter acontecido, mas to aqui ! Posso te ajudar !
echo.
echo.
echo.
echo MsgBox " Deu erro amigo, clique em ok e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Pressione qualquer tecla para voltar !
echo.
echo.
pause>nul
echo.
echo.
goto TwrpRunway
:FlashTwrpRunway
color 03
title Flash do Twrp 3.2.3-1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpRunway  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do twrp wayne  v 3.2.3-1                                                                  │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash recovery "%~dp0\adb\file\twrp\wayne\3.2.3-1.img" || @echo "flash recovery error" && goto TwrpRunwayError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpRunway
:TwrpKicogeco
title Twrp wayne Versão 3.3.0-0 !
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO TWRP 3.3.0-0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PARA CASO ESTAR CORROMPIDO   │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO TWRP 3.3.0-0 WAYNE           │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpKicogeco
if '%nb%' == '2' goto DownTwrpKicogeco
if '%nb%' == '3' goto DelTwrpKicogeco
if '%nb%' == '4' goto VerTwrpKicogeco
if '%nb%' == '5' goto FlashTwrpKicogeco
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpKicogeco
:: Boot no Twrp 
:GotoTwrpKicogeco
color 03
title Boot no Twrp 3.3.0-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpKicogeco  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot no twrp wayne  v 3.3.0-0                                                                   │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0adb\file\twrp\wayne\3.3.0-0.img" || @echo "boot error" && goto TwrpKicogecoError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpKicogeco
:DownTwrpKicogeco
color 30
title Download Twrp 3.3.0-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpKicogeco ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando twrp wayne v 3.3.0-0 aguarde...                                         │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\wayne\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%Kicogeco%', 'adb\file\twrp\wayne\3.3.0-0.img') }"
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpKicogeco )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpKicogeco
:DelTwrpKicogeco
title Deletando Twrp 3.3.0-0
color 03
cls
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpKicogeco )
del adb\file\twrp\wayne\3.3.0-0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpKicogeco
:VerTwrpKicogeco
cls
start %cd%\adb\file\twrp\wayne\
goto TwrpKicogeco
:TwrpKicogecoError
title ERROOOOOOOOOOOOOOOOOOOOOOOOOOOooooo !
color 40
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Errooooooooooooooooooooooooooooooooooooooooooooo.                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo.
echo.
echo Deu erro, eu não sei direito o que pode ter acontecido, mas to aqui ! Posso te ajudar !
echo.
echo.
echo.
echo MsgBox " Deu erro amigo, clique em ok e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Pressione qualquer tecla para voltar !
echo.
echo.
pause>nul
echo.
echo.
goto TwrpKicogeco
:FlashTwrpKicogeco
color 03
title Flash do Twrp 3.3.0-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpKicogeco  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do twrp wayn v 3.3.0-0                                                                    │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash recovery "%~dp0adb\file\twrp\wayne\3.3.0-0.img" || @echo "flash recovery error" && goto TwrpKicogecoError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpKicogeco
:TwrpAezakmi
title Twrp wayne Versão 3.3.1 !
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO TWRP 3.3.1                    │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PARA CASO ESTAR CORROMPIDO   │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO TWRP 3.3.1 WAYNE             │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\wayne\3.3.1.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpAezakmi
if '%nb%' == '2' goto DownTwrpAezakmi
if '%nb%' == '3' goto DelTwrpAezakmi
if '%nb%' == '4' goto VerTwrpAezakmi
if '%nb%' == '5' goto FlashTwrpAezakmi

if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpAezakmi
:: Boot no Twrp 
:GotoTwrpAezakmi
color 03
title Boot no Twrp 3.3.1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.1.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpAezakmi  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot no twrp wayne  v 3.3.1                                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0adb\file\twrp\wayne\3.3.1.img" || @echo "boot error" && goto TwrpAezakmiError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpAezakmi
:DownTwrpAezakmi
color 30
title Download Twrp 3.3.1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.1.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpAezakmi ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando twrp wayne v 3.3.1 aguarde...                                           │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\wayne\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%Aezakmi%', 'adb\file\twrp\wayne\3.3.1.img') }"
if exist "%cd%\adb\file\twrp\wayne\3.3.1.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpAezakmi )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpAezakmi
:DelTwrpAezakmi
title Deletando Twrp 3.3.1
color 03
cls
if exist "%cd%\adb\file\twrp\wayne\3.3.1.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpAezakmi )
del adb\file\twrp\wayne\3.3.1.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpAezakmi
:VerTwrpAezakmi
cls
start %cd%\adb\file\twrp\wayne\
goto TwrpAezakmi
:TwrpAezakmiError
title ERROOOOOOOOOOOOOOOOOOOOOOOOOOOooooo !
color 40
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Errooooooooooooooooooooooooooooooooooooooooooooo.                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo.
echo.
echo Deu erro, eu não sei direito o que pode ter acontecido, mas to aqui ! Posso te ajudar !
echo.
echo.
echo.
echo MsgBox " Deu erro amigo, clique em ok e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Pressione qualquer tecla para voltar !
echo.
echo.
pause>nul
echo.
echo.
goto TwrpAezakmi
:FlashTwrpAezakmi
color 03
title Flash do Twrp 3.3.1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.1.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpAezakmi  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do twrp wayn v 3.3.1                                                                      │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash recovery "%~dp0adb\file\twrp\wayne\3.3.1.img" || @echo "flash recovery error" && goto TwrpAezakmiError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpAezakmi
