@echo off
@echo off
chcp 65001
cls
set server=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/
set server_stock=https://bigota.d.miui.com/V11.0.22.0.QDIMIXM/jasmine_global_images_V11.0.22.0.QDIMIXM_20210309.0000.00_10.0_2f25e8fd87.tgz
:::: Links Twrp Jasmine
set JasmineUm=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine/3.2.3-0.img
set JasmineDois=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine/3.3.0-0.img
set JasmineTres=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine/3.3.1-0.img
set JasmineQuatro=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine/3.3.1-5.img
set JasmineCinco=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine/3.4.0-0.img
set JasmineSeis=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine/3.5.0-0.img
:::: Links Twrp Wayne
set WayneUm=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/wayne/3.2.3-0.img
set WayneDois=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine/3.2.3-1.img
set WayneTres=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine/3.3.0-0.img
set WayneQuatro=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine/3.3.1-0.img
::::: vou excluir
set PatchedDez=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/patched/11.0.22.0/11.0.22.0.img
set PatchedDoze=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/patched/10.0.12.0/10.0.12.0.img
set PatchedTreze=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/patched/10.0.13.0/10.0.13.0.img
set PatchedQuatorze=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/patched/10.0.14.0/10.0.14.0.img
set StockBootDez=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/stockboot/11.0.22.0/11.0.22.0.img
set StockBootDoze=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/stockboot/10.0.12.0/10.0.12.0.img
set StockBootTreze=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/stockboot/10.0.13.0/10.0.13.0.img
set StockBootQuatorze=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/stockboot/10.0.14.0/10.0.14.0.img
set GappsMicro=https://phoenixnap.dl.sourceforge.net/project/noobmaster/NoobMaster/adb/file/gapps/gapps.zip
set SplashMIUI=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/splash/miui/splash.img
set SplashOne=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/splash/one/splash.img
set SplashAnonimous=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/splash/anonimous/splash.img
set Splashmiui_white=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/splash/miui_white/splash.img
set Orange=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/Orange/unnoficial.img
set core=color 0E
mode 120,35
setlocal EnableDelayedExpansion
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
pushd "%~dp0"
set adb="%cd%\adb\adb.exe"
set fastboot="%cd%\adb\fastboot.exe"
set "nome= Noob Master "
set "ver= 7.2.2.0 "
cls
@echo off
:Menu
title %nome% v%ver%
%core%
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
echo      ├──────┤ 1 ) OPÇÕES PARA O BOOTLOADER              ├────────────┤ 8 ) FLASH SPLASH ( STOCK/CUSTOM )         │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 2 ) OPÇÕES DE ERASE (SYSTEM/VENDOR)       ├────────────┤ 9 ) CHECAR ARB ( ANTI ROLL BACK )         │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 3 ) INSTALAÇÃO DA STOCK ROM ( A2 JASMINE )├────────────┤ 10 ) MENU REBOOT/BOOTLOADER ( FASTBOOT )  │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 4 ) TWRP (A2/6X )                         ├────────────┤ 11 ) CRIE SEU PRÓPRIO SPLASH              │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 5 ) PATCHED BOOT ( ROOT STOCK ROM )       │            │ Dispositivos suportados: MI A2 / 6X       │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 6 ) STOCK BOOT ( REMOVE ROOT STOCK ROM )  ├────────────┤ A ) ATUALIZAR O NOOB MASTER               │
echo      │      └───────────────────────────────────────────┤  E) EXIT   └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      └──────┤ 7 ) GAPPS MICRO 01/2019                   ├────────────┤ V ) VERIFICA RAIZ DE ARQUIVOS             │
echo             └───────────────────────────────────────────┘            └───────────────────────────────────────────┘
echo.
echo.
set nb=
set /p "nb=Digite o numero da opção que deseja %username% > "
 if '%nb%' == '1' goto Bootloader
 if '%nb%' == '2' goto Erase
 if '%nb%' == '3' goto StockRom
 if '%nb%' == '4' goto Twrp
 if '%nb%' == '5' goto Patched
 if '%nb%' == '6' goto StockBoot
 if '%nb%' == '7' goto GappsMicro
 if '%nb%' == '8' goto Splash
 if '%nb%' == '9' goto CheckArb
 if '%nb%' == '10' goto GotoFastboot
 if '%nb%' == '11' goto GenerateSplash
 if '%nb%' == 'a' goto AttOta
 if '%nb%' == 'A' goto AttOta
 if '%nb%' == 'V' goto VerAdb
 if '%nb%' == 'v' goto VerAdb
 if '%nb%' == 'e' goto eof
 if '%nb%' == 'E' goto eof
goto Menu
:AttOta
cls
if exist "%cd%\NoobMaster_OTA.exe" ( echo . ) else ( echo MsgBox "O arquivo nao existe ou foi removido, baixe o novamente",16,"Atencao! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs 
goto Menu )
start %cd%\NoobMaster_OTA.exe
echo
echo
echo
echo
echo
goto MENU
:Bootloader
title Menu Bootloader
%core%
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
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) Reboot system                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
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
set /p "nb=DIGITE A OPÇÃO QUE DESEJA > "
 if '%nb%' == '1' goto BloqBoot
 if '%nb%' == '2' goto DesbloquearOEM
 if '%nb%' == '3' goto DesbloquearCritical
 if '%nb%' == '4' goto RebootBoot
 if '%nb%' == 'e' goto Menu
 if '%nb%' == 'E' goto Menu
goto Bootloader
:RebootBoot
cls
%fastboot% reboot 
goto Bootloader
:BloqBoot
title Bloqueando bootloader
cls
%core%
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
:DesbloquearOEM
title Desbloqueando OEM
%core%
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
:DesbloquearCritical
title Desbloqueando Critical
%core%
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
start %cd%\adb\.vbs 
echo.
echo.
echo Tecle qualquer tecla para voltar para o Menu de Bootloader !
echo.
echo.
pause>nul
echo.
echo.
goto Bootloader
:Erase
title Menu Erase 
%core%
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
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 2 ) ERASE VENDOR JASMINE                  ├────────────┤ 8 ) Reboot System                         │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
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
set /p "nb=DIGITE A OPÇÃO QUE DESEJA > "
 if '%nb%' == '1' goto EraseSystemA2
 if '%nb%' == '2' goto EraseVendorA2
 if '%nb%' == '3' goto EraseSystem6X
 if '%nb%' == '4' goto EraseVendor6X
 if '%nb%' == '5' goto EraseUserData
 if '%nb%' == '6' goto EraseCache
 if '%nb%' == '7' goto EraseW
 if '%nb%' == '8' goto RebootErase
 if '%nb%' == 'e' goto Menu
 if '%nb%' == 'E' goto Menu
goto Erase
:RebootErase
cls 
%fastboot% reboot
goto Erase
:EraseSystemA2
title Erase no system jasmine
%core%
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
:EraseVendorA2
title Erase no vendor jasmine 
%core%
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
:EraseSystem6X
title Erase no system wayne
%core%
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
:EraseVendor6X
title Erase no vendor do wayne
%core%
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
:EraseUserData
title Erase User Data
%core%
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
:EraseCache
title Erase no cache do sistema 
%core%
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
:EraseW
title Apagando dados e data do sistema
%core%
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
:StockRom
title Menu Stock ROM v 11.0.19.0 OFFICIAL
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) DOWNLOAD DA STOCK (v11.0.19.0) anti 1 │                                                        │
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
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
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
 if '%nb%' == '6' goto RebootStock
 if '%nb%' == 'e' goto Menu
 if '%nb%' == 'E' goto Menu
goto StockRom
:RebootStock
cls
%fastboot% reboot
goto StockRom
:DownloadStock
 if exist "%cd%\adb\stock\jasmine.tgz" ( echo MsgBox "Deixa de ser besta, voce ja baixou a rom, agora vc precisa extrair ela.",vbInformation,"Presta atencao. " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockRom ) else ( echo. )
title Baixando a stock rom 11.0.19.0, aguarde !
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
echo.       Baixando arquivos necessários para extração!
echo.             Aguarde !
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
%core%
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
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Verificando arquivos da stock rom V11.0.19.0                                                    │
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
%core%
if exist "%cd%\adb\stock\" ( echo . ) else ( goto AvisoDownloadStock )
if exist "%cd%\adb\stock\system.img" ( echo . ) else ( goto AvisoDownloadStock)
cls
echo.
echo.
echo.     Vamos aos erase !
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
%core%
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
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/wyz.vbs', 'adb\wyz.vbs') }"
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
%core%
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
%core%
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
echo      ├──────┤ 1 ) TWRP 3.2.3-0                          ├────────────┤ 7 ) TWRP 3.2.3-0                          │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 2 ) TWRP 3.3.0-0                          ├────────────┤ 8 ) TWRP 3.2.3-1                          │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 3 ) TWRP 3.3.1-0                          ├────────────┤ 9 ) TWRP 3.3.0-0                          │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 4 ) TWRP 3.3.1-5                          ├────────────┤ 10 ) TWRP 3.3.1-0                         │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) TWRP 3.4.0-0                          │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) TWRP 3.5.0-0                          │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
set nb=
set /p "nb=Digite o numero da opção que deseja %username% > "
 if '%nb%' == '1' goto TwrpJasmineUm
 if '%nb%' == '2' goto TwrpJasmineDois
 if '%nb%' == '3' goto TwrpJasmineTres
 if '%nb%' == '4' goto TwrpJasmineQuatro
 if '%nb%' == '5' goto TwrpJasmineCinco
 if '%nb%' == '6' goto TwrpJasmineSeis
 if '%nb%' == '7' goto TwrpWayneUm
 if '%nb%' == '8' goto TwrpWayneDois
 if '%nb%' == '9' goto TwrpWayneTres
 if '%nb%' == '10' goto TwrpWayneQuatro
 if '%nb%' == 'E' goto Menu
 if '%nb%' == 'e' goto Menu
goto Twrp
:TwrpJasmineUm
title Twrp jasmine Versão 3.2.3-0
%core%
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
echo      ├──────┤ 5 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpJasmineUm
if '%nb%' == '2' goto DownTwrpJasmineUm
if '%nb%' == '3' goto DelTwrpJasmineUm
if '%nb%' == '4' goto VerTwrpJasmineUm
if '%nb%' == '5' goto RebootJasmineUm
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpJasmineUm
:RebootJasmineUm
cls
%fastboot% reboot
goto TwrpJasmineUm

:: Boot no Twrp 
:GotoTwrpJasmineUm
%core%
title Boot no Twrp 3.2.3-0jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineUm  )
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
%fastboot% boot "%~dp0\adb\file\twrp\jasmine\3.2.3-0.img" || @echo "boot error" && goto TwrpJasmineUmError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpJasmineUm
:DownTwrpJasmineUm
color 30
title Download Twrp 3.2.3-0jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineUm ) else ( echo . )
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
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%JasmineUm%', 'adb\file\twrp\jasmine\3.2.3-0.img') }"
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineUm )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpJasmineUm
:DelTwrpJasmineUm
title Deletando Twrp 3.2.3-0
%core%
cls
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineUm )
del adb\file\twrp\jasmine\3.2.3-0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineUm
:VerTwrpJasmineUm
cls
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineUm )
start %cd%\adb\file\twrp\jasmine\
goto TwrpJasmineUm
:TwrpJasmineUmError
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
goto TwrpJasmineUm
:TwrpJasmineDois
title Twrp jasmine Versão 3.3.0-0
%core%
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
echo      ├──────┤ 5 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpJasmineDois
if '%nb%' == '2' goto DownTwrpJasmineDois
if '%nb%' == '3' goto DelTwrpJasmineDois
if '%nb%' == '4' goto VerTwrpJasmineDois
if '%nb%' == '5' goto RebootJasmineDois
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpJasmineDois
:RebootJasmineDois
cls
%fastboot% reboot
goto TwrpJasmineDois

:: Boot no Twrp 
:GotoTwrpJasmineDois
%core%
title Boot no Twrp 3.3.0-0jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineDois  )
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
%fastboot% boot "%~dp0\adb\file\twrp\jasmine\3.3.0-0.img" || @echo "boot error" && goto TwrpJasmineDoisError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpJasmineDois
:DownTwrpJasmineDois
color 30
title Download Twrp 3.3.0-0jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineDois ) else ( echo . )
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
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%JasmineDois%', 'adb\file\twrp\jasmine\3.3.0-0.img') }"
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineDois )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpJasmineDois
:DelTwrpJasmineDois
title Deletando Twrp 3.3.0-0
%core%
cls
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineDois )
del adb\file\twrp\jasmine\3.3.0-0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineDois
:VerTwrpJasmineDois
cls
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineDois )
start %cd%\adb\file\twrp\jasmine\
goto TwrpJasmineDois
:TwrpJasmineDoisError
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
goto TwrpJasmineDois
:TwrpJasmineTres
title Twrp jasmine Versão 3.3.1-0
%core%
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
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpJasmineTres
if '%nb%' == '2' goto DownTwrpJasmineTres
if '%nb%' == '3' goto DelTwrpJasmineTres
if '%nb%' == '4' goto VerTwrpJasmineTres
if '%nb%' == '5' goto RebootJasmineTres
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpJasmineTres
:RebootJasmineTres
cls
%fastboot% reboot
goto TwrpJasmineTres

:: Boot no Twrp 
:GotoTwrpJasmineTres
%core%
title Boot no Twrp 3.3.1-0jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineTres  )
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
%fastboot% boot "%~dp0\adb\file\twrp\jasmine\3.3.1-0.img" || @echo "boot error" && goto TwrpJasmineTresError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpJasmineTres
:DownTwrpJasmineTres
color 30
title Download Twrp 3.3.1-0jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineTres ) else ( echo . )
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
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%JasmineTres%', 'adb\file\twrp\jasmine\3.3.1-0.img') }"
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineTres )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpJasmineTres
:DelTwrpJasmineTres
title Deletando Twrp 3.3.1-0
%core%
cls
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineTres )
del adb\file\twrp\jasmine\3.3.1-0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineTres
:VerTwrpJasmineTres
cls
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineTres )
start %cd%\adb\file\twrp\jasmine\
goto TwrpJasmineTres
:TwrpJasmineTresError
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
goto TwrpJasmineTres
:TwrpJasmineQuatro
title Twrp jasmine Versão 3.3.1-5
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO TWRP 3.3.1-5                  │                                                        │
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
echo      ├──────┤ 5 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-5.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpJasmineQuatro
if '%nb%' == '2' goto DownTwrpJasmineQuatro
if '%nb%' == '3' goto DelTwrpJasmineQuatro
if '%nb%' == '4' goto VerTwrpJasmineQuatro
if '%nb%' == '5' goto RebootJasmineQuatro
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpJasmineQuatro
:RebootJasmineQuatro
cls
%fastboot% reboot
goto TwrpJasmineQuatro

:: Boot no Twrp 
:GotoTwrpJasmineQuatro
%core%
title Boot no Twrp 3.3.1-5jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-5.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineQuatro  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot no twrp jasmine_sprout  v 3.3.1-5                                                          │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\jasmine\3.3.1-5.img" || @echo "boot error" && goto TwrpJasmineQuatroError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpJasmineQuatro
:DownTwrpJasmineQuatro
color 30
title Download Twrp 3.3.1-5jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-5.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineQuatro ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando twrp jasmine_sprout v 3.3.1-5 aguarde...                                │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\jasmine\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%JasmineQuatro%', 'adb\file\twrp\jasmine\3.3.1-5.img') }"
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-5.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineQuatro )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpJasmineQuatro
:DelTwrpJasmineQuatro
title Deletando Twrp 3.3.1-5
%core%
cls
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-5.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineQuatro )
del adb\file\twrp\jasmine\3.3.1-5.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineQuatro
:VerTwrpJasmineQuatro
cls
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-5.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineQuatro )
start %cd%\adb\file\twrp\jasmine\
goto TwrpJasmineQuatro
:TwrpJasmineQuatroError
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
goto TwrpJasmineQuatro
:TwrpJasmineCinco
title Twrp jasmine Versão 3.4.0-0
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO TWRP 3.4.0-0                  │                                                        │
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
echo      ├──────┤ 5 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\jasmine\3.4.0-0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpJasmineCinco
if '%nb%' == '2' goto DownTwrpJasmineCinco
if '%nb%' == '3' goto DelTwrpJasmineCinco
if '%nb%' == '4' goto VerTwrpJasmineCinco
if '%nb%' == '5' goto RebootJasmineCinco
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpJasmineCinco
:RebootJasmineCinco
cls
%fastboot% reboot
goto TwrpJasmineCinco

:: Boot no Twrp 
:GotoTwrpJasmineCinco
%core%
title Boot no Twrp 3.4.0-0jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.4.0-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineCinco  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot no twrp jasmine_sprout  v 3.4.0-0                                                          │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\jasmine\3.4.0-0.img" || @echo "boot error" && goto TwrpJasmineCincoError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpJasmineCinco
:DownTwrpJasmineCinco
color 30
title Download Twrp 3.4.0-0jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.4.0-0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineCinco ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando twrp jasmine_sprout v 3.4.0-0 aguarde...                                │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\jasmine\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%JasmineCinco%', 'adb\file\twrp\jasmine\3.4.0-0.img') }"
if exist "%cd%\adb\file\twrp\jasmine\3.4.0-0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineCinco )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpJasmineCinco
:DelTwrpJasmineCinco
title Deletando Twrp 3.4.0-0
%core%
cls
if exist "%cd%\adb\file\twrp\jasmine\3.4.0-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineCinco )
del adb\file\twrp\jasmine\3.4.0-0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineCinco
:VerTwrpJasmineCinco
cls
if exist "%cd%\adb\file\twrp\jasmine\3.4.0-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineCinco )
start %cd%\adb\file\twrp\jasmine\
goto TwrpJasmineCinco
:TwrpJasmineCincoError
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
goto TwrpJasmineCinco
:TwrpJasmineSeis
title Twrp jasmine Versão 3.5.0-0
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO TWRP 3.5.0-0                  │                                                        │
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
echo      ├──────┤ 5 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\jasmine\3.5.0-0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpJasmineSeis
if '%nb%' == '2' goto DownTwrpJasmineSeis
if '%nb%' == '3' goto DelTwrpJasmineSeis
if '%nb%' == '4' goto VerTwrpJasmineSeis
if '%nb%' == '5' goto RebootJasmineSeis
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpJasmineSeis
:RebootJasmineSeis
cls
%fastboot% reboot
goto TwrpJasmineSeis

:: Boot no Twrp 
:GotoTwrpJasmineSeis
%core%
title Boot no Twrp 3.5.0-0jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.5.0-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineSeis  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot no twrp jasmine_sprout  v 3.5.0-0                                                          │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\jasmine\3.5.0-0.img" || @echo "boot error" && goto TwrpJasmineSeisError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpJasmineSeis
:DownTwrpJasmineSeis
color 30
title Download Twrp 3.5.0-0jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.5.0-0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineSeis ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando twrp jasmine_sprout v 3.5.0-0 aguarde...                                │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\jasmine\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%JasmineSeis%', 'adb\file\twrp\jasmine\3.5.0-0.img') }"
if exist "%cd%\adb\file\twrp\jasmine\3.5.0-0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineSeis )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpJasmineSeis
:DelTwrpJasmineSeis
title Deletando Twrp 3.5.0-0
%core%
cls
if exist "%cd%\adb\file\twrp\jasmine\3.5.0-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineSeis )
del adb\file\twrp\jasmine\3.5.0-0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineSeis
:VerTwrpJasmineSeis
cls
if exist "%cd%\adb\file\twrp\jasmine\3.5.0-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpJasmineSeis )
start %cd%\adb\file\twrp\jasmine\
goto TwrpJasmineSeis
:TwrpJasmineSeisError
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
goto TwrpJasmineSeis
:TwrpWayneUm
title Twrp wayne Versão 3.2.3-0 !
%core%
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
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
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
if '%nb%' == '1' goto GotoTwrpWayneUm
if '%nb%' == '2' goto DownTwrpWayneUm
if '%nb%' == '3' goto DelTwrpWayneUm
if '%nb%' == '4' goto VerTwrpWayneUm
if '%nb%' == '5' goto FlashTwrpWayneUm
if '%nb%' == '6' goto RebootWayneUm
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpWayneUm
:RebootWayneUm
cls 
%fastboot% reboot 
goto TwrpWayneUm

:: Boot no Twrp 
:GotoTwrpWayneUm
%core%
title Boot no Twrp 3.2.3-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneUm  )
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
%fastboot% boot "%~dp0\adb\file\twrp\wayne\3.2.3-0.img" || @echo "boot error" && goto TwrpWayneUmError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpWayneUm
:DownTwrpWayneUm
color 30
title Download Twrp 3.2.3-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneUm ) else ( echo . )
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
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%WayneUm%', 'adb\file\twrp\wayne\3.2.3-0.img') }"
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneUm )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpWayneUm
:DelTwrpWayneUm
title Deletando Twrp 3.2.3-0
%core%
cls
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneUm )
del adb\file\twrp\wayne\3.2.3-0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneUm
:VerTwrpWayneUm
cls
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneUm )
start %cd%\adb\file\twrp\wayne\
goto TwrpWayneUm
:TwrpWayneUmError
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
goto TwrpWayneUm
:FlashTwrpWayneUm
%core%
title Flash do Twrp 3.2.3-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneUm  )
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
%fastboot% flash recovery "%~dp0\adb\file\twrp\wayne\3.2.3-0.img" || @echo "flash recovery error" && goto TwrpWayneUmError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpWayneUm
:TwrpWayneDois
title Twrp wayne Versão 3.2.3-1 !
%core%
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
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
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
if '%nb%' == '1' goto GotoTwrpWayneDois
if '%nb%' == '2' goto DownTwrpWayneDois
if '%nb%' == '3' goto DelTwrpWayneDois
if '%nb%' == '4' goto VerTwrpWayneDois
if '%nb%' == '5' goto FlashTwrpWayneDois
if '%nb%' == '6' goto RebootWayneDois
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpWayneDois
:RebootWayneDois
cls 
%fastboot% reboot 
goto TwrpWayneDois

:: Boot no Twrp 
:GotoTwrpWayneDois
%core%
title Boot no Twrp 3.2.3-1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois  )
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
%fastboot% boot "%~dp0\adb\file\twrp\wayne\3.2.3-1.img" || @echo "boot error" && goto TwrpWayneDoisError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpWayneDois
:DownTwrpWayneDois
color 30
title Download Twrp 3.2.3-1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois ) else ( echo . )
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
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%WayneDois%', 'adb\file\twrp\wayne\3.2.3-1.img') }"
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpWayneDois
:DelTwrpWayneDois
title Deletando Twrp 3.2.3-1
%core%
cls
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois )
del adb\file\twrp\wayne\3.2.3-1.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois
:VerTwrpWayneDois
cls
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois )
start %cd%\adb\file\twrp\wayne\
goto TwrpWayneDois
:TwrpWayneDoisError
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
goto TwrpWayneDois
:FlashTwrpWayneDois
%core%
title Flash do Twrp 3.2.3-1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneDois  )
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
%fastboot% flash recovery "%~dp0\adb\file\twrp\wayne\3.2.3-1.img" || @echo "flash recovery error" && goto TwrpWayneDoisError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpWayneDois

:TwrpWayneTres
title Twrp wayne Versão 3.3.0-0 !
%core%
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
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
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
if '%nb%' == '1' goto GotoTwrpWayneTres
if '%nb%' == '2' goto DownTwrpWayneTres
if '%nb%' == '3' goto DelTwrpWayneTres
if '%nb%' == '4' goto VerTwrpWayneTres
if '%nb%' == '5' goto FlashTwrpWayneTres
if '%nb%' == '6' goto RebootWayneTres
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpWayneTres
:RebootWayneTres
cls 
%fastboot% reboot 
goto TwrpWayneTres

:: Boot no Twrp 
:GotoTwrpWayneTres
%core%
title Boot no Twrp 3.3.0-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneTres  )
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
%fastboot% boot "%~dp0\adb\file\twrp\wayne\3.3.0-0.img" || @echo "boot error" && goto TwrpWayneTresError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpWayneTres
:DownTwrpWayneTres
color 30
title Download Twrp 3.3.0-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneTres ) else ( echo . )
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
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%WayneTres%', 'adb\file\twrp\wayne\3.3.0-0.img') }"
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneTres )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpWayneTres
:DelTwrpWayneTres
title Deletando Twrp 3.3.0-0
%core%
cls
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneTres )
del adb\file\twrp\wayne\3.3.0-0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneTres
:VerTwrpWayneTres
cls
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneTres )
start %cd%\adb\file\twrp\wayne\
goto TwrpWayneTres
:TwrpWayneTresError
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
goto TwrpWayneTres
:FlashTwrpWayneTres
%core%
title Flash do Twrp 3.3.0-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneTres  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do twrp wayne  v 3.3.0-0                                                                  │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash recovery "%~dp0\adb\file\twrp\wayne\3.3.0-0.img" || @echo "flash recovery error" && goto TwrpWayneTresError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpWayneTres

:TwrpWayneQuatro
title Twrp wayne Versão 3.3.1-0 !
%core%
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
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO TWRP 3.3.1-0 WAYNE           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\wayne\3.3.1-0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoTwrpWayneQuatro
if '%nb%' == '2' goto DownTwrpWayneQuatro
if '%nb%' == '3' goto DelTwrpWayneQuatro
if '%nb%' == '4' goto VerTwrpWayneQuatro
if '%nb%' == '5' goto FlashTwrpWayneQuatro
if '%nb%' == '6' goto RebootWayneQuatro
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpWayneQuatro
:RebootWayneQuatro
cls 
%fastboot% reboot 
goto TwrpWayneQuatro

:: Boot no Twrp 
:GotoTwrpWayneQuatro
%core%
title Boot no Twrp 3.3.1-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.1-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneQuatro  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot no twrp wayne  v 3.3.1-0                                                                   │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\wayne\3.3.1-0.img" || @echo "boot error" && goto TwrpWayneQuatroError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpWayneQuatro
:DownTwrpWayneQuatro
color 30
title Download Twrp 3.3.1-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.1-0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneQuatro ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando twrp wayne v 3.3.1-0 aguarde...                                         │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\wayne\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%WayneQuatro%', 'adb\file\twrp\wayne\3.3.1-0.img') }"
if exist "%cd%\adb\file\twrp\wayne\3.3.1-0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneQuatro )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpWayneQuatro
:DelTwrpWayneQuatro
title Deletando Twrp 3.3.1-0
%core%
cls
if exist "%cd%\adb\file\twrp\wayne\3.3.1-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneQuatro )
del adb\file\twrp\wayne\3.3.1-0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneQuatro
:VerTwrpWayneQuatro
cls
if exist "%cd%\adb\file\twrp\wayne\3.3.1-0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneQuatro )
start %cd%\adb\file\twrp\wayne\
goto TwrpWayneQuatro
:TwrpWayneQuatroError
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
goto TwrpWayneQuatro
:FlashTwrpWayneQuatro
%core%
title Flash do Twrp 3.3.1-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.1-0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpWayneQuatro  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do twrp wayne  v 3.3.1-0                                                                  │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash recovery "%~dp0\adb\file\twrp\wayne\3.3.1-0.img" || @echo "flash recovery error" && goto TwrpWayneQuatroError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto TwrpWayneQuatro
:Patched
title Patched boot para root na stock rom !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) PATCHED BOOT 11.0.19.0                │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) PATCHED BOOT 10.0.12.0                │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) PATCHED BOOT 10.0.13.0                │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) PATCHED BOOT 10.0.14.0                │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
echo.
echo.
set nb= 
set /p "nb=Digite uma opção aqui >"
if '%nb%' == '1' goto PatchedDez
if '%nb%' == '2' goto PatchedDoze
if '%nb%' == '3' goto PatchedTreze
if '%nb%' == '4' goto PatchedQuatorze
if '%nb%' == '5' goto Patched
if '%nb%' == 'E' goto Menu
if '%nb%' == 'e' goto Menu
goto Patched
:PatchedDez
title Patched Boot 11.0.19.0 !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO PATCHED BOOT 11.0.19.0        │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PATCHED BOOT 11.0.19.0       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO PATCHED BOOT 11.0.19.0       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\patched\11.0.19.0\11.0.19.0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoPatchedDez
if '%nb%' == '2' goto DownPatchedDez
if '%nb%' == '3' goto DelPatchedDez
if '%nb%' == '4' goto VerPatchedDez
if '%nb%' == '5' goto FlashPatchedDez
if '%nb%' == '6' goto RebootPatchedDez
if '%nb%' == 'E' goto Patched
if '%nb%' == 'e' goto Patched
goto PatchedDez
:RebootPatchedDez
cls
%fastboot% reboot 
goto PatchedDez
:DownPatchedDez
color 30
title Download patched boot 11.0.19.0!
if exist "%cd%\adb\file\patched\11.0.19.0\11.0.19.0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDez ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando patched boot da versão 11.0.19.0...                                     │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\patched\11.0.19.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%PatchedDez%', 'adb\file\patched\11.0.19.0\11.0.19.0.img') }"
if exist "%cd%\adb\file\patched\11.0.19.0\11.0.19.0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDez )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto PatchedDez
:DelPatchedDez
title Deletando Patched boot 11.0.19.0
%core%
cls
if exist "%cd%\adb\file\patched\11.0.19.0\11.0.19.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDez )
del adb\file\patched\11.0.19.0\11.0.19.0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir patched" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDez
:FlashPatchedDez
%core%
title Flash do Patched boot 11.0.19.0
if exist "%cd%\adb\file\patched\11.0.19.0\11.0.19.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDez  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do patched boot 11.0.19.0                                                                 │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0\adb\file\patched\11.0.19.0\11.0.19.0.img" || @echo "flash recovery error" && goto PatchedDezError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto PatchedDez
:GotoPatchedDez
%core%
title Boot no patched boot 11.0.19.0
if exist "%cd%\adb\file\patched\11.0.19.0\11.0.19.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDez  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot do patched boot 11.0.19.0                                                                  │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\patched\11.0.19.0\11.0.19.0.img" || @echo "boot error" && goto PatchedDezError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto PatchedDez
:VerPatchedDez
cls
if exist "%cd%\adb\file\patched\11.0.19.0\11.0.19.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDez )
start %cd%\adb\file\patched\11.0.19.0\
goto PatchedDez
:PatchedDezError
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
goto PatchedDez
:PatchedDoze
title Patched Boot 10.0.12.0 !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO PATCHED BOOT 10.0.12.0        │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PATCHED BOOT 10.0.12.0       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO PATCHED BOOT 10.0.12.0       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoPatchedDoze
if '%nb%' == '2' goto DownPatchedDoze
if '%nb%' == '3' goto DelPatchedDoze
if '%nb%' == '4' goto VerPatchedDoze
if '%nb%' == '5' goto FlashPatchedDoze
if '%nb%' == '6' goto RebootPatchedDoze
if '%nb%' == 'E' goto Patched
if '%nb%' == 'e' goto Patched
goto PatchedDoze
:RebootPatchedDoze
cls
%fastboot% reboot 
goto PatchedDoze
:DownPatchedDoze
color 30
title Download patched boot 10.0.12.0!
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDoze ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando patched boot da versão 10.0.12.0...                                     │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\patched\10.0.12.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%PatchedDoze%', 'adb\file\patched\10.0.12.0\10.0.12.0.img') }"
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDoze )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto PatchedDoze
:DelPatchedDoze
title Deletando Patched boot 10.0.12.0
%core%
cls
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDoze )
del adb\file\patched\10.0.12.0\10.0.12.0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir patched" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDoze
:FlashPatchedDoze
%core%
title Flash do Patched boot 10.0.12.0
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDoze  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do patched boot 10.0.12.0                                                                 │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0adb\file\patched\10.0.12.0\10.0.12.0.img" || @echo "flash recovery error" && goto PatchedDozeError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto PatchedDoze
:GotoPatchedDoze
%core%
title Boot no patched boot 10.0.12.0
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDoze  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot do patched boot 10.0.12.0                                                                  │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0adb\file\patched\10.0.12.0\10.0.12.0.img" || @echo "boot error" && goto PatchedDozeError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto PatchedDoze
:VerPatchedDoze
cls
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDoze )
start %cd%\adb\file\patched\10.0.12.0\
goto PatchedDoze
:PatchedDozeError
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
goto PatchedDoze
:PatchedTreze
title Patched Boot 10.0.13.0 !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO PATCHED BOOT 10.0.13.0        │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PATCHED BOOT 10.0.13.0       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO PATCHED BOOT 10.0.13.0       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoPatchedTreze
if '%nb%' == '2' goto DownPatchedTreze
if '%nb%' == '3' goto DelPatchedTreze
if '%nb%' == '4' goto VerPatchedTreze
if '%nb%' == '5' goto FlashPatchedTreze
if '%nb%' == '6' goto RebootPatchedTreze
if '%nb%' == 'E' goto Patched
if '%nb%' == 'e' goto Patched
goto PatchedTreze
:RebootPatchedTreze
cls
%fastboot% reboot
goto PatchedTreze

:DownPatchedTreze
color 30
title Download patched boot 10.0.13.0!
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedTreze ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando patched boot da versão 10.0.13.0...                                     │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\patched\10.0.13.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%PatchedTreze%', 'adb\file\patched\10.0.13.0\10.0.13.0.img') }"
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedTreze )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto PatchedTreze
:DelPatchedTreze
title Deletando Patched boot 10.0.13.0
%core%
cls
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedTreze )
del adb\file\patched\10.0.13.0\10.0.13.0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir patched" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedTreze
:FlashPatchedTreze
%core%
title Flash do Patched boot 10.0.13.0
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedTreze  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do patched boot 10.0.13.0                                                                 │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0\adb\file\patched\10.0.13.0\10.0.13.0.img" || @echo "flash recovery error" && goto PatchedTrezeError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto PatchedTreze
:GotoPatchedTreze
%core%
title Boot no patched boot 10.0.13.0
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedTreze  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot do patched boot 10.0.13.0                                                                  │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\patched\10.0.13.0\10.0.13.0.img" || @echo "boot error" && goto PatchedTrezeError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto PatchedTreze
:VerPatchedTreze
cls
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedTreze )
start %cd%\adb\file\patched\10.0.13.0\
goto PatchedTreze
:PatchedTrezeError
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
goto PatchedTreze
:PatchedQuatorze
title Patched Boot 10.0.14.0 !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO PATCHED BOOT 10.0.14.0        │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PATCHED BOOT 10.0.14.0       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO PATCHED BOOT 10.0.14.0       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\patched\10.0.14.0\10.0.14.0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoPatchedQuatorze
if '%nb%' == '2' goto DownPatchedQuatorze
if '%nb%' == '3' goto DelPatchedQuatorze
if '%nb%' == '4' goto VerPatchedQuatorze
if '%nb%' == '5' goto FlashPatchedQuatorze
if '%nb%' == '6' goto RebootPatchedQuatorze
if '%nb%' == 'E' goto Patched
if '%nb%' == 'e' goto Patched
goto PatchedQuatorze
:RebootPatchedQuatorze
cls
%fastboot% reboot
goto PatchedQuatorze

:DownPatchedQuatorze
color 30
title Download patched boot 10.0.14.0!
if exist "%cd%\adb\file\patched\10.0.14.0\10.0.14.0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedQuatorze ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando patched boot da versão 10.0.14.0...                                     │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\patched\10.0.14.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%PatchedQuatorze%', 'adb\file\patched\10.0.14.0\10.0.14.0.img') }"
if exist "%cd%\adb\file\patched\10.0.14.0\10.0.14.0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedQuatorze )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto PatchedQuatorze
:DelPatchedQuatorze
title Deletando Patched boot 10.0.14.0
%core%
cls
if exist "%cd%\adb\file\patched\10.0.14.0\10.0.14.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedQuatorze )
del adb\file\patched\10.0.14.0\10.0.14.0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir patched" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedQuatorze
:FlashPatchedQuatorze
%core%
title Flash do Patched boot 10.0.14.0
if exist "%cd%\adb\file\patched\10.0.14.0\10.0.14.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedQuatorze  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do patched boot 10.0.14.0                                                                 │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0\adb\file\patched\10.0.14.0\10.0.14.0.img" || @echo "flash recovery error" && goto PatchedQuatorzeError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto PatchedQuatorze
:GotoPatchedQuatorze
%core%
title Boot no patched boot 10.0.14.0
if exist "%cd%\adb\file\patched\10.0.14.0\10.0.14.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedQuatorze  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot do patched boot 10.0.14.0                                                                  │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\patched\10.0.14.0\10.0.14.0.img" || @echo "boot error" && goto PatchedQuatorzeError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto PatchedQuatorze
:VerPatchedQuatorze
cls
if exist "%cd%\adb\file\patched\10.0.14.0\10.0.14.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedQuatorze )
start %cd%\adb\file\patched\10.0.14.0\
goto PatchedQuatorze
:PatchedQuatorzeError
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
goto PatchedQuatorze
:StockBoot
title Stock boot para a stock rom !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) STOCK BOOT 11.0.19.0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) STOCK BOOT 10.0.12.0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) STOCK BOOT 10.0.13.0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) STOCK BOOT 10.0.14.0                  │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
echo.
echo.
set nb= 
set /p "nb=Digite uma opção aqui >"
if '%nb%' == '1' goto StockBootDez
if '%nb%' == '2' goto StockBootDoze
if '%nb%' == '3' goto StockBootTreze
if '%nb%' == '4' goto StockBootQuatorze
if '%nb%' == 'E' goto Menu
if '%nb%' == 'e' goto Menu
goto StockBoot
:StockBootDez
title STOCK Boot 11.0.19.0 !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO STOCK BOOT 11.0.19.0          │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD STOCK BOOT 11.0.19.0         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO STOCK BOOT 11.0.19.0         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\stockboot\11.0.19.0\11.0.19.0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoStockBootDez
if '%nb%' == '2' goto DownStockBootDez
if '%nb%' == '3' goto DelStockBootDez
if '%nb%' == '4' goto VerStockBootDez
if '%nb%' == '5' goto FlashStockBootDez
if '%nb%' == '6' goto RebootStockBootDez
if '%nb%' == 'E' goto StockBoot
if '%nb%' == 'e' goto StockBoot
goto StockBootDez
:RebootStockBootDez
cls 
%fastboot% reboot 
goto StockBootDez
:DownStockBootDez
color 30
title Download STOCK boot 11.0.19.0!
if exist "%cd%\adb\file\stockboot\11.0.19.0\11.0.19.0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDez ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando STOCK boot da versão 11.0.19.0...                                       │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\stockboot\11.0.19.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%StockBootDez%', 'adb\file\stockboot\11.0.19.0\11.0.19.0.img') }"
if exist "%cd%\adb\file\stockboot\11.0.19.0\11.0.19.0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDez )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto StockBootDez
:DelStockBootDez
title Deletando STOCK boot 11.0.19.0
%core%
cls
if exist "%cd%\adb\file\stockboot\11.0.19.0\11.0.19.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDez )
del adb\file\stockboot\11.0.19.0\11.0.19.0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir STOCK" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDez
:FlashStockBootDez
%core%
title Flash do STOCK boot 11.0.19.0
if exist "%cd%\adb\file\stockboot\11.0.19.0\11.0.19.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDez  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do STOCK boot 11.0.19.0                                                                   │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0\adb\file\stockboot\11.0.19.0\11.0.19.0.img" || @echo "flash recovery error" && goto StockBootDezError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto StockBootDez
:GotoStockBootDez
%core%
title Boot no STOCK boot 11.0.19.0
if exist "%cd%\adb\file\stockboot\11.0.19.0\11.0.19.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDez  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot do STOCK boot 11.0.19.0                                                                    │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\stockboot\11.0.19.0\11.0.19.0.img" || @echo "boot error" && goto StockBootDezError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto StockBootDez
:VerStockBootDez
cls
if exist "%cd%\adb\file\stockboot\11.0.19.0\11.0.19.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDez )
start %cd%\adb\file\stockboot\11.0.19.0\
goto StockBootDez
:StockBootDezError
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
goto StockBootDez
:StockBootDoze
title STOCK Boot 10.0.12.0 !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO STOCK BOOT 10.0.12.0          │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD STOCK BOOT 10.0.12.0         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO STOCK BOOT 10.0.12.0         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoStockBootDoze
if '%nb%' == '2' goto DownStockBootDoze
if '%nb%' == '3' goto DelStockBootDoze
if '%nb%' == '4' goto VerStockBootDoze
if '%nb%' == '5' goto FlashStockBootDoze
if '%nb%' == '6' goto RebootStockBootDoze
if '%nb%' == 'E' goto StockBoot
if '%nb%' == 'e' goto StockBoot
goto StockBootDoze
:RebootStockBootDoze
cls
%fastboot% reboot
goto StockBootDoze

:DownStockBootDoze
color 30
title Download STOCK boot 10.0.12.0!
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDoze ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando STOCK boot da versão 10.0.12.0...                                       │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\stockboot\10.0.12.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%StockBootDoze%', 'adb\file\stockboot\10.0.12.0\10.0.12.0.img') }"
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDoze )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto StockBootDoze
:DelStockBootDoze
title Deletando STOCK boot 10.0.12.0
%core%
cls
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDoze )
del adb\file\stockboot\10.0.12.0\10.0.12.0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir STOCK" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDoze
:FlashStockBootDoze
%core%
title Flash do STOCK boot 10.0.12.0
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDoze  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do STOCK boot 10.0.12.0                                                                   │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0adb\file\stockboot\10.0.12.0\10.0.12.0.img" || @echo "flash recovery error" && goto StockBootDozeError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto StockBootDoze
:GotoStockBootDoze
%core%
title Boot no STOCK boot 10.0.12.0
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDoze  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot do STOCK boot 10.0.12.0                                                                    │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0adb\file\stockboot\10.0.12.0\10.0.12.0.img" || @echo "boot error" && goto StockBootDozeError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto StockBootDoze
:VerStockBootDoze
cls
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDoze )
start %cd%\adb\file\stockboot\10.0.12.0\
goto StockBootDoze
:StockBootDozeError
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
goto StockBootDoze
:StockBootTreze
title STOCK Boot 10.0.13.0 !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO STOCK BOOT 10.0.13.0          │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD STOCK BOOT 10.0.13.0         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO STOCK BOOT 10.0.13.0         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoStockBootTreze
if '%nb%' == '2' goto DownStockBootTreze
if '%nb%' == '3' goto DelStockBootTreze
if '%nb%' == '4' goto VerStockBootTreze
if '%nb%' == '5' goto FlashStockBootTreze
if '%nb%' == '6' goto RebootStockBootTreze
if '%nb%' == 'E' goto StockBoot
if '%nb%' == 'e' goto StockBoot
goto StockBootTreze
:RebootStockBootTreze
cls
%fastboot% reboot
goto StockBootTreze

:DownStockBootTreze
color 30
title Download STOCK boot 10.0.13.0!
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootTreze ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando STOCK boot da versão 10.0.13.0...                                       │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\stockboot\10.0.13.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%StockBootTreze%', 'adb\file\stockboot\10.0.13.0\10.0.13.0.img') }"
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootTreze )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto StockBootTreze
:DelStockBootTreze
title Deletando STOCK boot 10.0.13.0
%core%
cls
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootTreze )
del adb\file\stockboot\10.0.13.0\10.0.13.0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir STOCK" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootTreze
:FlashStockBootTreze
%core%
title Flash do STOCK boot 10.0.13.0
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootTreze  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do STOCK boot 10.0.13.0                                                                   │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0adb\file\stockboot\10.0.13.0\10.0.13.0.img" || @echo "flash recovery error" && goto StockBootTrezeError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto StockBootTreze
:GotoStockBootTreze
%core%
title Boot no STOCK boot 10.0.13.0
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootTreze  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot do STOCK boot 10.0.13.0                                                                    │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0adb\file\stockboot\10.0.13.0\10.0.13.0.img" || @echo "boot error" && goto StockBootTrezeError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto StockBootTreze
:VerStockBootTreze
cls
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootTreze )
start %cd%\adb\file\stockboot\10.0.13.0\
goto StockBootTreze
:StockBootTrezeError
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
goto StockBootTreze
:StockBootQuatorze
title STOCK Boot 10.0.14.0 !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) BOOT NO STOCK BOOT 10.0.14.0          │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD STOCK BOOT 10.0.14.0         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO STOCK BOOT 10.0.14.0         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 6 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\stockboot\10.0.14.0\10.0.14.0.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoStockBootQuatorze
if '%nb%' == '2' goto DownStockBootQuatorze
if '%nb%' == '3' goto DelStockBootQuatorze
if '%nb%' == '4' goto VerStockBootQuatorze
if '%nb%' == '5' goto FlashStockBootQuatorze
if '%nb%' == '6' goto RebootStockBootQuatorze
if '%nb%' == 'E' goto StockBoot
if '%nb%' == 'e' goto StockBoot
goto StockBootQuatorze
:RebootStockBootQuatorze
cls 
%fastboot% reboot 
goto StockBootQuatorze
:DownStockBootQuatorze
color 30
title Download STOCK boot 10.0.14.0!
if exist "%cd%\adb\file\stockboot\10.0.14.0\10.0.14.0.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootQuatorze ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando STOCK boot da versão 10.0.14.0...                                       │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\stockboot\10.0.14.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%StockBootQuatorze%', 'adb\file\stockboot\10.0.14.0\10.0.14.0.img') }"
if exist "%cd%\adb\file\stockboot\10.0.14.0\10.0.14.0.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootQuatorze )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto StockBootQuatorze
:DelStockBootQuatorze
title Deletando STOCK boot 10.0.14.0
%core%
cls
if exist "%cd%\adb\file\stockboot\10.0.14.0\10.0.14.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootQuatorze )
del adb\file\stockboot\10.0.14.0\10.0.14.0.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir STOCK" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootQuatorze
:FlashStockBootQuatorze
%core%
title Flash do STOCK boot 10.0.14.0
if exist "%cd%\adb\file\stockboot\10.0.14.0\10.0.14.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootQuatorze  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do STOCK boot 10.0.14.0                                                                   │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0\adb\file\stockboot\10.0.14.0\10.0.14.0.img" || @echo "flash recovery error" && goto StockBootQuatorzeError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto StockBootQuatorze
:GotoStockBootQuatorze
%core%
title Boot no STOCK boot 10.0.14.0
if exist "%cd%\adb\file\stockboot\10.0.14.0\10.0.14.0.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootQuatorze  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot do STOCK boot 10.0.14.0                                                                    │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\stockboot\10.0.14.0\10.0.14.0.img" || @echo "boot error" && goto StockBootQuatorzeError
echo.
echo.
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto StockBootQuatorze
:VerStockBootQuatorze
cls
if exist "%cd%\adb\file\stockboot\10.0.14.0\10.0.14.0.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootQuatorze )
start %cd%\adb\file\stockboot\10.0.14.0\
goto StockBootQuatorze
:StockBootQuatorzeError
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
goto StockBootQuatorze
:GappsMicro
title Gapps Micro  ( 01/19 )
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) FLASH DO GAPPS MICRO                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\gappsmicro\gappsmicro.zip" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto GotoGappsMicro
if '%nb%' == '2' goto DownGappsMicro
if '%nb%' == '3' goto DelGappsMicro
if '%nb%' == '4' goto VerGappsMicro
if '%nb%' == '5' goto RebootGapps
if '%nb%' == 'E' goto Menu
if '%nb%' == 'e' goto Menu
goto GappsMicro
:RebootGapps
cls
%fastboot% reboot
goto GappsMicro
:: Boot no Gapps 
:GotoGappsMicro
%core%
title Servindo Gapps através do Adb Sideload
if exist "%cd%\adb\file\gappsmicro\gappsmicro.zip" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GappsMicro  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do Gapps via Adb Sideload                                                                 │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%adb% sideload %cd%\adb\file\gappsmicro\gappsmicro.zip || @echo "sideload error" && goto GappsMicroError
echo.
echo.
echo.
echo Tecle qualquer coisa para voltar !
echo.
pause >nul
goto GappsMicro
:DownGappsMicro
color 30
title Download Gapps Micro
if exist "%cd%\adb\file\gappsmicro\gappsmicro.zip" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GappsMicro ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando Gapps aguarde...                                                        │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\gappsmicro\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%GappsMicro%', 'adb\file\gappsmicro\gappsmicro.zip') }"
if exist "%cd%\adb\file\gappsmicro\gappsmicro.zip" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GappsMicro )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto GappsMicro
:DelGappsMicro
title Deletando Gapps 
%core%
cls
if exist "%cd%\adb\file\gappsmicro\gappsmicro.zip" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GappsMicro )
del adb\file\gappsmicro\gappsmicro.zip
echo MsgBox "Ok, arquivo excluido ",16,"Excluir Gapps" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GappsMicro
:VerGappsMicro
cls
if exist "%cd%\adb\file\gappsmicro\gappsmicro.zip" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GappsMicro )
start %cd%\adb\file\gappsmicro\
goto GappsMicro
:GappsMicroError
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
goto GappsMicro
:Splash
title Menu seleciona Splash!
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) SPLASH MIUI STOCK                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) SPLASH ONE STOCK                      │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) SPLASH MIUI WHITE                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) SPLASH ANONIMOUS                      │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto SplashMiui
if '%nb%' == '2' goto SplashOne
if '%nb%' == '3' goto SplashMiui_white
if '%nb%' == '4' goto SplashAnonimous
if '%nb%' == 'E' goto Menu
if '%nb%' == 'e' goto Menu
goto Splash
:SplashOne
title Splash Android One Stock !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) FLASH DO SPLASH ANDROID ONE STOCK     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\splash\one\splash.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto FlashSplashOne
if '%nb%' == '2' goto DownSplashOne
if '%nb%' == '3' goto DelSplashOne
if '%nb%' == '4' goto VerSplashOne
if '%nb%' == '5' goto RebootAnonimous
if '%nb%' == 'E' goto Splash
if '%nb%' == 'e' goto Splash
goto SplashOne
:RebootAnonimous
cls
%fasboot% reboot
goto SplashAnonimous

:DownSplashOne
color 30
title Download Splash Android One Stock!
if exist "%cd%\adb\file\splash\one\splash.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashOne ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando Splash Android One Stock ...                                            │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\splash\one\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%SplashOne%', 'adb\file\splash\one\splash.img') }"
if exist "%cd%\adb\file\splash\one\splash.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashOne )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto SplashOne
:DelSplashOne
title Deletando Splash Android One Stock
%core%
cls
if exist "%cd%\adb\file\splash\one\splash.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashOne )
del adb\file\splash\one\splash.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir STOCK" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashOne
:FlashSplashOne
%core%
title Flash do Splash Android One Stock
if exist "%cd%\adb\file\splash\one\splash.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashOne  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do Splash Android One Stock                                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash splash "%~dp0adb\file\splash\one\splash.img" || @echo "flash splash error" && goto SplashOneError
echo.
echo.
echo MsgBox "Ok, parece que deu tudo certo ",16,"Sucesso no flash " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
%fastboot% reboot bootloader
echo.
echo Pressione qualquer tecla para voltar
echo.
pause >nul
goto SplashOne
:VerSplashOne
cls
if exist "%cd%\adb\file\splash\one\splash.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashOne )
start %cd%\adb\file\splash\one\
goto SplashOne
:SplashOneError
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
goto SplashOne
:SplashMIUI
title Splash Android MIUI Stock !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) FLASH DO SPLASH ANDROID MIUI STOCK    │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\splash\MIUI\splash.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto FlashSplashMIUI
if '%nb%' == '2' goto DownSplashMIUI
if '%nb%' == '3' goto DelSplashMIUI
if '%nb%' == '4' goto VerSplashMIUI
if '%nb%' == '5' goto RebootSplashMIUI
if '%nb%' == 'E' goto Splash
if '%nb%' == 'e' goto Splash
goto SplashMIUI
:RebootSplashMIUI
cls
%fastboot% reboot
goto SplashMIUI
:DownSplashMIUI
color 30
title Download Splash Android MIUI Stock!
if exist "%cd%\adb\file\splash\MIUI\splash.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashMIUI ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando Splash Android MIUI Stock ...                                           │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\splash\MIUI\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%SplashMIUI%', 'adb\file\splash\MIUI\splash.img') }"
if exist "%cd%\adb\file\splash\MIUI\splash.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashMIUI )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto SplashMIUI
:DelSplashMIUI
title Deletando Splash Android MIUI Stock
%core%
cls
if exist "%cd%\adb\file\splash\MIUI\splash.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashMIUI )
del adb\file\splash\MIUI\splash.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir STOCK" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashMIUI
:FlashSplashMIUI
%core%
title Flash do Splash Android MIUI Stock
if exist "%cd%\adb\file\splash\MIUI\splash.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashMIUI  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do Splash Android MIUI Stock                                                              │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash splash "%~dp0adb\file\splash\MIUI\splash.img" || @echo "flash splash error" && goto SplashMIUIError
echo.
echo.
echo MsgBox "Ok, parece que deu tudo certo ",16,"Sucesso no flash " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
%fastboot% reboot bootloader
echo.
echo PressiMIUI qualquer tecla para voltar
echo.
pause >nul
goto SplashMIUI
Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? 
:VerSplashMIUI
cls
if exist "%cd%\adb\file\splash\MIUI\splash.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashMIUI )
start %cd%\adb\file\splash\MIUI\
goto SplashMIUI
:SplashMIUIError
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
echo PressiMIUI qualquer tecla para voltar !
echo.
echo.
pause>nul
echo.
echo.
goto SplashMIUI
:Splashmiui_white
title Splash Android miui_white  !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) FLASH DO SPLASH ANDROID miui_white    │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\splash\miui_white\splash.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto FlashSplashmiui_white
if '%nb%' == '2' goto DownSplashmiui_white
if '%nb%' == '3' goto DelSplashmiui_white
if '%nb%' == '4' goto VerSplashmiui_white
if '%nb%' == '5' goto RebootSplashmiui_white
if '%nb%' == 'E' goto Splash
if '%nb%' == 'e' goto Splash
goto Splashmiui_white
:RebootSplashmiui_white
cls
%fastboot% reboot
goto Splashmiui_white
:DownSplashmiui_white
color 30
title Download Splash Android miui_white !
if exist "%cd%\adb\file\splash\miui_white\splash.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Splashmiui_white ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando Splash Android miui_white ...                                           │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\splash\miui_white\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%Splashmiui_white%', 'adb\file\splash\miui_white\splash.img') }"
if exist "%cd%\adb\file\splash\miui_white\splash.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Splashmiui_white )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto Splashmiui_white
:DelSplashmiui_white
title Deletando Splash Android miui_white 
%core%
cls
if exist "%cd%\adb\file\splash\miui_white\splash.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Splashmiui_white )
del adb\file\splash\miui_white\splash.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Splashmiui_white
:FlashSplashmiui_white
%core%
title Flash do Splash Android miui_white 
if exist "%cd%\adb\file\splash\miui_white\splash.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Splashmiui_white  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do Splash Android miui_white                                                              │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash splash "%~dp0adb\file\splash\miui_white\splash.img" || @echo "flash splash error" && goto Splashmiui_whiteError
echo.
echo.
echo MsgBox "Ok, parece que deu tudo certo ",16,"Sucesso no flash " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
%fastboot% reboot bootloader
echo.
echo Pressimiui_white qualquer tecla para voltar
echo.
pause >nul
goto Splashmiui_white
:VerSplashmiui_white
cls
if exist "%cd%\adb\file\splash\miui_white\splash.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Splashmiui_white )
start %cd%\adb\file\splash\miui_white\
goto Splashmiui_white
:Splashmiui_whiteError
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
echo Pressimiui_white qualquer tecla para voltar !
echo.
echo.
pause>nul
echo.
echo.
goto Splashmiui_white
:SplashAnonimous
title Splash Android Anonimous  !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) FLASH DO SPLASH ANDROID Anonimous     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR ARQUIVO                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) VERIFICAR ARQUIVO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) REBOOT SYSTEM                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\splash\Anonimous\splash.img" ( call :cortexto 0a " Ok, parece que o arquivo existe. " ) else ( call :cortexto 0c "Baixe o arquivo. " )
echo.
echo.
echo.
set nb= 
set /p "nb=Digite algo aqui %username% >"
if '%nb%' == '1' goto FlashSplashAnonimous
if '%nb%' == '2' goto DownSplashAnonimous
if '%nb%' == '3' goto DelSplashAnonimous
if '%nb%' == '4' goto VerSplashAnonimous
if '%nb%' == '5' goto RebootSplashAnonimous
if '%nb%' == 'E' goto Splash
if '%nb%' == 'e' goto Splash
goto SplashAnonimous
:RebootSplashAnonimous
cls
%fastboot% reboot 
goto SplashAnonimous
:DownSplashAnonimous
color 30
title Download Splash Android Anonimous !
if exist "%cd%\adb\file\splash\Anonimous\splash.img" (  echo MsgBox "Pare de frescura, ce ja baixou o negocio e ta ai querendo baixar denovo, vai flashea isso ai rapa! ",16,"Vai canta seu bosta " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashAnonimous ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando Splash Android Anonimous ...                                            │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\splash\Anonimous\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%SplashAnonimous%', 'adb\file\splash\Anonimous\splash.img') }"
if exist "%cd%\adb\file\splash\Anonimous\splash.img" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashAnonimous )
echo.
echo MsgBox "Ok, arquivo baixado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto SplashAnonimous
:DelSplashAnonimous
title Deletando Splash Android Anonimous 
%core%
cls
if exist "%cd%\adb\file\splash\Anonimous\splash.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashAnonimous )
del adb\file\splash\Anonimous\splash.img
echo MsgBox "Ok, arquivo excluido ",16,"Excluir " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashAnonimous
:FlashSplashAnonimous
%core%
title Flash do Splash Android Anonimous 
if exist "%cd%\adb\file\splash\Anonimous\splash.img" ( echo . ) else ( echo MsgBox " Baixe o arquivo e tente novamente ! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashAnonimous  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do Splash Android Anonimous                                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash splash "%~dp0adb\file\splash\Anonimous\splash.img" || @echo "flash splash error" && goto SplashAnonimousError
echo.
echo.
echo MsgBox "Ok, parece que deu tudo certo ",16,"Sucesso no flash " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
%fastboot% reboot bootloader
echo.
echo PressiAnonimous qualquer tecla para voltar
echo.
pause >nul
goto SplashAnonimous
:VerSplashAnonimous
cls
if exist "%cd%\adb\file\splash\Anonimous\splash.img" ( echo.) else ( echo MsgBox "Pare ome, o arquivo ja foi excluido, nao tem nada aqui.",16,"Tu ja excluiu carai ? " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashAnonimous )
start %cd%\adb\file\splash\Anonimous\
goto SplashAnonimous
:SplashAnonimousError
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
echo PressiAnonimous qualquer tecla para voltar !
echo.
echo.
pause>nul
echo.
echo.
goto SplashAnonimous
:CheckArb
title Checando arb !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Checando arb...                                                                                 │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
%fastboot% getvar anti 
pause >nul 
goto Menu
:: Menu de bootloader
:GotoFastboot
title Menu Reboot !
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) Va para EDL                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) Renicie novamente em FASTBOOT         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) Reinicie o sistema                    │                                                        │
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
set /p "nb=DIGITE A OPÇÃO QUE DESEJA > "
 if '%nb%' == '1' goto GoEdl
 if '%nb%' == '2' goto GoFastboot
 if '%nb%' == '3' goto GoReboot
 if '%nb%' == 'e' goto Menu
 if '%nb%' == 'E' goto Menu
 goto GotoFastboot
:GoEdl
cls
%fastboot% oem edl  || @echo "oem edl error" && goto EdlError
echo MsgBox "Ok, se desligou a tela nao se desespere, o modo EDL e assim mesmo. ",16,"Vai canta, guentai!" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GotoFastboot
:EdlError
cls
echo MsgBox "Opa, nao consegui entrar em EDL, certifique se de ter desbloquado o critical tambem e tente novamente... ",16,"Vai canta, guentai!" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GotoFastboot
:GoFastboot
cls
%fastboot% reboot bootloader  || @echo "reboot bootloader error" && goto FastbootError
echo MsgBox "Ok, estou fazendo seu device Reiniciar em FASTBOOT ",16,"Vai canta, guentai!" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GotoFastboot
:FastbootError
cls
echo MsgBox "Opa, nao consegui reiniciar em fastboot, tente novamente... ",16,"Vai canta, guentai!" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GotoFastboot
:GoReboot
cls
%fastboot% reboot || @echo "reboot error" && goto RebootError
echo MsgBox "Ok, agora seu celular ira reniciar. ",16,"Vai canta, guentai!" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GotoFastboot
:RebootError
cls
echo MsgBox "Opa, nao consegui reiniciar atraves do fastboot, tente novamente. ",16,"Vai canta, guentai!" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GotoFastboot
:: Gerador de splash customizado
:GenerateSplash
title Gerador de Splash Customizado
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┐                                                        │
echo      ├──────┤ 1 ) Edite os arq. BMP para gerar o splash │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) Gerar Splash Customizado              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) Flash do Splash Customizado           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) Deletar arquivo criado                │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) Reboot system                         │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) VOLTAR                                │
echo                                                                      └───────────────────────────────────────────┘
echo.
echo.
if exist %cd%\adb\file\splash\newsplash\newsplash.img ( call :cortexto 0a "Ok, parece que o arquivo existe " ) else (  call :cortexto 04 "Nenhum arquivo foi criado ainda." )
echo.
echo.
set nb=
set /p "nb=DIGITE A OPÇÃO QUE DESEJA > "
 if '%nb%' == '1' goto EditBMP
 if '%nb%' == '2' goto GerSplash
 if '%nb%' == '3' goto FlashNewSplash
 if '%nb%' == '4' goto DelSplashCus
 if '%nb%' == '5' goto RebootSystem
 if '%nb%' == 'e' goto Menu
 if '%nb%' == 'E' goto Menu
goto GenerateSplash
:DelSplashCus
del adb\file\splash\newsplash\newsplash.img
if exist %cd%\adb\file\splash\newsplash\newsplash.img ( echo. ) else ( echo MsgBox "O arquivo foi deletado ! ",16,"Basta voce crialo denovo." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs )
goto GenerateSplash
:EditBMP
if exist %cd%\adb\file\splash\newsplash\img\1.bmp ( echo. ) else (echo MsgBox "O arquivo foi deletado ou nunca foi baixado, vou baixalo para voce ",16,"Aguarde." >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\2.bmp ( echo. ) else ( echo MsgBox "O arquivo foi deletado ou nunca foi baixado, vou baixalo para voce ",16,"Aguarde." >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\3.bmp ( echo. ) else ( echo MsgBox "O arquivo foi deletado ou nunca foi baixado, vou baixalo para voce ",16,"Aguarde." >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\4.bmp ( echo. ) else ( echo MsgBox "O arquivo foi deletado ou nunca foi baixado, vou baixalo para voce ",16,"Aguarde." >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
start adb\file\splash\newsplash\img\
goto GenerateSplash
:GerSplash
title Criando splash customizado !
if exist %cd%\adb\file\splash\newsplash\empty.img ( echo. ) else (echo MsgBox "O arquivo foi deletado ou nunca foi baixado, vou baixalo para voce ",16,"Aguarde." >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\header.img ( echo. ) else (echo MsgBox "O arquivo foi deletado ou nunca foi baixado, vou baixalo para voce ",16,"Aguarde." >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\1.bmp ( echo. ) else (echo MsgBox "O arquivo foi deletado ou nunca foi baixado, vou baixalo para voce ",16,"Aguarde." >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\2.bmp ( echo. ) else ( echo MsgBox "O arquivo foi deletado ou nunca foi baixado, vou baixalo para voce ",16,"Aguarde." >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\3.bmp ( echo. ) else ( echo MsgBox "O arquivo foi deletado ou nunca foi baixado, vou baixalo para voce ",16,"Aguarde." >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\4.bmp ( echo. ) else ( echo MsgBox "O arquivo foi deletado ou nunca foi baixado, vou baixalo para voce ",16,"Aguarde." >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\newsplash.img (
 echo MsgBox "O arquivo ja existe, exclua o arquivo ja existente ! ",16,"Calma que vai dar certo " >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto GenerateSplash  )
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Gerando splash customizado, observe                                                             │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
copy /b %cd%\adb\file\splash\newsplash\header.img+%cd%\adb\file\splash\newsplash\img\1.bmp+%cd%\adb\file\splash\newsplash\empty.img+%cd%\adb\file\splash\newsplash\img\2.bmp+%cd%\adb\file\splash\newsplash\img\3.bmp+%cd%\adb\file\splash\newsplash\img\4.bmp+%cd%\adb\file\splash\newsplash\empty.img %cd%\adb\file\splash\newsplash\newsplash.img
echo.
echo.
if exist %cd%\adb\file\splash\newsplash\newsplash.img (
 echo MsgBox "O arquivo foi criado, que legal ! ",16,"TOOOOOOOPPPPP " >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
) else ( echo MsgBox "Pare ome, o arquivo nem foi criado, nao tem nada aqui.",16,"Tu excluiu o arquivo carai ? " >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
)
pause>nul
goto GenerateSplash
:FlashNewSplash
if exist %cd%\adb\file\splash\newsplash\newsplash.img ( echo. ) else ( echo MsgBox "Pare ome, o arquivo nem foi criado, nao tem nada aqui, selecione primeiro a opcao numero 2 ) Gerar Splash Customizado .",16,"Tu nem crio o arquivo ainda... " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs 
goto GenerateSplash )
title Flash do splash customizado 
%core%
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash do splash customizado, aguarde                                                            │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash splash "%~dp0\adb\file\splash\newsplash\newsplash.img" || @echo "flash splash error" && goto SplashCusError
echo.
echo.
pause>nul
goto GenerateSplash
:RebootSystem
%fastboot% reboot 
goto GenerateSplash
:Download
title Download dos arquivos necessarios para personalizar seu splash.
cls
color 30
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Baixando Splash Customizador Noob Master                                         │
echo      │                                                                                                           │
echo      │               Eu vou te avisar quando o Download terminar, apenas aguarde e relaxa a ppk.                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\splash\newsplash\
mkdir adb\file\splash\newsplash\img\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/file/splash/newsplash/empty.img', 'adb\file\splash\newsplash\empty.img') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/file/splash/newsplash/header.img', 'adb\file\splash\newsplash\header.img') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/file/splash/newsplash/img/1.bmp', 'adb\file\splash\newsplash\img\1.bmp') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/file/splash/newsplash/img/2.bmp', 'adb\file\splash\newsplash\img\2.bmp') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/file/splash/newsplash/img/3.bmp', 'adb\file\splash\newsplash\img\3.bmp') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%adb/file/splash/newsplash/img/4.bmp', 'adb\file\splash\newsplash\img\4.bmp') }"
echo.
if exist %cd%\adb\file\splash\newsplash\empty.img ( echo Ok, arquivos baixados. ) else ( echo MsgBox "Os arquivos nao foram baixados. ",16,"Tente novamente..." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs )
echo MsgBox "Ok, arquivos baixados, agora selecione novamente a opcao para gerar seu splash  ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto GenerateSplash