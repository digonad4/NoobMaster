@echo off
title Noob Master v 7.0.0.5
chcp 65001
cls
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::: This tool developed by me, Rodrigo Pires da Silva.                                                                                                         :::
::: It was born of curiosity and because we needed a toolkit in our language, well in January I started a script study of other dev.                           :::
::: I confess that in the beginning I copied some functions exactly as they were in the first script I found, I was studying how it worked and I was learning. :::
::: Today, Noob Master has a limited range for Windows 10 users, for automatic download reasons.                                                               :::
::: And for the end user does not have to download a 1.5gb zip with the files, which are hosted on the cloud and accessible by the script.                     :::
::: Next to the downloads are all functions available via command by FASTBOOT / ADB.                                                                           :::
::: You find in this script the following functions:                                                                                                           :::
::: *** Bootloader unlock and lock                                                                                                                             :::
::: *** Download, extract and flash stock rom via FASTBOOT                                                                                                     :::
::: *** Download all versions of Twrp and all available functions for jasmine and wayne (wayne has flash recovery function)                                    :::
::: *** Patched boot and stock boot download and flash (Root / UnRoot)                                                                                         :::
::: Today it has a small "artificial intelligence" that allows it to recognize if the file is in its proper place, thus avoiding errors.                       :::
::: We are in version 7.0.0.5 and this seems to me to be the last version in bash, soon we will be in C #, wait ...                                            :::
::: Rodrigo Pires da Silva, 25/08/2019 - 15:00                                                                                                                 :::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: Links 
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Noob Master repository link available on GitHub
set server=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/
:: Link from where the stock rom file is taken!
set server_stock=http://bigota.d.miui.com/V10.0.9.0.PDIMIXM/jasmine_global_images_V10.0.9.0.PDIMIXM_20190513.0000.00_9.0_bbaa8993fe.tgz
::::::::::::::::::::::::: Links Twrp
set Baguvix=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine/3.2.3-0.img
set Hesoyan=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine/3.3.0-0.img
set Uzumymw=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/jasmine/3.3.1-0.img
set Oneway=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/wayne/3.2.3-0.img
set Runway=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/wayne/3.2.3-1.img
set Kicogeco=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/wayne/3.3.0-0.img
set Aezakmi=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/twrp/wayne/3.3.1.img
:::::::::::::::::::::::::: Link patched boot 
set PatchedOito=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/patched/10.0.8.0/10.0.8.0.img
set PatchedNove=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/patched/10.0.9.0/10.0.9.0.img
set PatchedDez=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/patched/10.0.10.0/10.0.10.0.img
set PatchedDoze=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/patched/10.0.12.0/10.0.12.0.img
set PatchedTreze=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/patched/10.0.13.0/10.0.13.0.img
:::::::::::::::::::::::::: Link Stock Boot
set StockBootOito=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/stockboot/10.0.8.0/10.0.8.0.img
set StockBootNove=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/stockboot/10.0.9.0/10.0.9.0.img
set StockBootDez=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/stockboot/10.0.10.0/10.0.10.0.img
set StockBootDoze=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/stockboot/10.0.12.0/10.0.12.0.img
set StockBootTreze=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/stockboot/10.0.13.0/10.0.13.0.img
:::::::::::::::::::::::::: Gapps download
set GappsMicro=https://phoenixnap.dl.sourceforge.net/project/noobmaster/NoobMaster/adb/file/gapps/gapps.zip
:::::::::::::::::::::::::: Splash Download
set SplashMIUI=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/splash/miui/splash.img
set SplashOne=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/splash/one/splash.img
set SplashAnonimous=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/splash/anonimous/splash.img
set Splashmiui_white=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/splash/miui_white/splash.img
:::::::::::::::::::::::::: Orange Fox Wayne 
set Orange=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/adb/file/Orange/unnoficial.img
:: Arrow screen size value
mode 120,35
setlocal EnableDelayedExpansion
:: Script that sets colors on lines specified in the script by command (call: cortext 02)
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
:: Set adb and fastboot 
pushd "%~dp0"
set adb="%cd%\adb\adb.exe"
set fastboot="%cd%\adb\fastboot.exe"
:: Maximum 14 characters
set "nome= Noob Master "
:: Keep sequence pattern
set "ver= 7.0.0.5 "
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
echo                                               Welcome %username% !
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
echo      ├──────┤ 1 ) BOOTLOADER OPTIONS                    ├────────────┤ 8 ) FLASH SPLASH ( STOCK/CUSTOM )         │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 2 ) ERASE OPTIONS (SYSTEM / VENDOR)       ├────────────┤ 9 ) CHECK ARB ( ANTI ROLL BACK )          │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 3 ) STOCK ROM INSTALLATION (A2 JASMINE)   ├────────────┤ 10 ) MENU REBOOT/BOOTLOADER ( FASTBOOT )  │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 4 ) TWRP (A2/6X )                         ├────────────┤ 11 ) CREATE YOUR OWN SPLASH               │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 5 ) PATCHED BOOT ( ROOT STOCK ROM )       │            │ Supported Devices: MI A2 / 6X             │
echo      │      └───────────────────────────────────────────┤            └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      ├──────┤ 6 ) STOCK BOOT ( REMOVE ROOT STOCK ROM )  ├────────────┤ A )UPDATE NOOB MASTER                     │
echo      │      └───────────────────────────────────────────┤  E) EXIT   └───────────────────────────────────────────┤
echo      │      ┌───────────────────────────────────────────┤            ┌───────────────────────────────────────────┤
echo      └──────┤ 7 ) GAPPS MICRO 01/2019                   ├────────────┤ V ) CHECK FILE ROOT                       │
echo             └───────────────────────────────────────────┘            └───────────────────────────────────────────┘
echo.
echo.
set nb=
set /p "nb=Enter the option number you want %username% > "
:dec
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
if exist "%cd%\NoobMaster_OTA.exe" ( echo . ) else ( echo MsgBox "File does not exist or has been removed, download again",16,"Attention! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs 
goto Menu )
start %cd%\NoobMaster_OTA.exe
echo
echo
echo
echo
echo
goto MENU
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
echo      ├──────┤ 1 ) Block bootloader                      │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) Unlock OEM                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) Unlock critical                       │                                                        │
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
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
set nb=
set /p "nb=Enter the option number you want %username% >"
 if '%nb%' == '1' goto BloqBoot
 if '%nb%' == '2' goto DesbloquearOEM
 if '%nb%' == '3' goto DesbloquearCritical
 if '%nb%' == 'e' goto Menu
 if '%nb%' == 'E' goto Menu
goto Bootloader
:: Seta função para bloqueio de bootloader
:BloqBoot
title Bootloader Blocking
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
echo      │           Running bootloader lock command                                                                 │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% oem lock || @echo "oem lock error" && goto ErrorBoot
echo.
echo.
echo MsgBox "For your device to turn on, you must be in stock rom.",16,"Remember if! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
cls
echo Press any key to return
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
echo      │           Running bootloader unlock command                                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% oem unlock || @echo "oem unlock error" && goto ErrorBoot
cls
echo.
echo.
echo MsgBox " Looks like the command worked                                                    Look at the phone and select [ Unlock The bootloader ]",16,"Attention! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
cls
echo Press any key to return
echo.
pause >nul 
goto Bootloader
:: Desblqueando bootloader critical
:DesbloquearCritical
title Unlocking Critical
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
echo      │           Running bootloader unlock command                                                               │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% flashing unlock_critical || @echo "flashing unlock_critical error" && goto ErrorBoot
cls
echo.
echo.
echo MsgBox " Looks like the command worked                                                    Look at the phone and select [ Unlock The bootloader ]",16,"Attention! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
cls
echo Press any key to return
echo.
pause >nul 
goto Bootloader
:: Mensagem de erro no desbloqueio e bloqueio do bootloader
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox "Looks like you already unlocked the bootloader! ",16,"Erro">%cd%\adb\wyz.vbs 
start %cd%\adb\.vbs 
echo.
echo.
echo Press any key to return to the Bootloader Menu!
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
echo      ├──────┤ 1 ) ERASE SYSTEM JASMINE                  ├────────────┤ 7 ) DELETE ALL YOUR DATA                  │
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
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
set nb=
set /p "nb=Enter the option number you want %username% >"
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
title Erase system jasmine
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
echo      │           Running jasmine_sprout erase system command                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% erase system_a || @echo "erase system_a error" && goto ErrorErase
%fastboot% erase system_b || @echo "erase system_b error" && goto ErrorErase
echo.
echo.
echo MsgBox "Looks like the command worked out [Erase concluded]                  Rewrite the system again by installing stock rom.",vbInformation,"Attention! " >%cd%\adb\wyz.vbs  start %cd%\adb\wyz.vbs  
timeout 5 >nul
goto Erase
:: Erase do vendor A2 jasmine_sprout
:EraseVendorA2
title Erase vendor jasmine 
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
echo      │           Running jasmine_sprout erase system command                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% erase vendor_a || @echo "erase vendor_a error" && goto ErrorErase
%fastboot% erase vendor_b || @echo "erase vendor_b error" && goto ErrorErase
echo.
echo.
echo MsgBox "Looks like the command worked out [Erase concluded]                  Rewrite the system again by installing stock rom.",vbInformation,"Attention! " >%cd%\adb\wyz.vbs  start %cd%\adb\wyz.vbs  
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
echo      │           Running erase system wayne command                                                              │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% erase system || @echo "erase system error" && goto ErrorErase
echo.
echo.
echo MsgBox "Looks like the command worked out [Erase concluded]                  Rewrite the system again by installing stock rom.",16,"Attention! " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
timeout 5 >nul
goto Erase
:: Erase no vendor wayne 
:EraseVendor6X
title Erase vendor do wayne
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
echo      │           Running erase system wayne command                                                              │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% erase vendor || @echo "erase vendor error" && goto ErrorErase
echo.
echo.
echo MsgBox "Looks like the command worked out [Erase concluded]                  Rewrite the system again by installing stock rom.",vbInformation,"Attention! " >%cd%\adb\wyz.vbs  start %cd%\adb\wyz.vbs  
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
echo      │           Running jasmine_sprout erase system command                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% erase userdata || @echo "erase userdata error" && goto ErrorErase
echo.
echo.
echo MsgBox "Looks like the command worked out [Erase concluded]                  Rewrite the system again by installing stock rom.",vbInformation,"Attention! " >%cd%\adb\wyz.vbs  start %cd%\adb\wyz.vbs  
timeout 5 >nul
goto Erase
:: Erase Cache
:EraseCache
title Erase cache system 
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
echo      │           Running jasmine_sprout erase system command                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% erase cache || @echo "erase cache error" && goto ErrorErase
echo.
echo.
echo MsgBox "Looks like the command worked out [Erase concluded]                  Rewrite the system again by installing stock rom.",vbInformation,"Attention! " >%cd%\adb\wyz.vbs  start %cd%\adb\wyz.vbs  
timeout 5 >nul
goto Erase
:: Erase Cache
:EraseW
title Erasing System Data and Date
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
echo      │          Running jasmine_sprout erase system command                                                      │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
%fastboot% -w || @echo "-w error" && goto ErrorErase
echo.
echo.
echo MsgBox "Looks like the command worked out [Erase concluded]                  Rewrite the system again by installing stock rom.",vbInformation,"Attention! " >%cd%\adb\wyz.vbs  start %cd%\adb\wyz.vbs  
timeout 5 >nul
goto Erase
:: Error no erase 
:ErrorErase
title Error applying ERASE command 
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return to the Erase Menu!
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
echo      ├──────┤ 1 ) STOCK DOWNLOAD (v10.0.9.0) anti 1     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) UNPACK FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) STOCK ROM FLASH                       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 )OPEN FOLDER OF STOCK ROM FILE          │                                                        │
echo      │      └───────────────────────────────────────────┘            ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
 if exist "%cd%\adb\stock\jasmine.tgz" ( call :cortexto 0a "Ok, I found the rom file.  ") else ( call :cortexto 04 "You have not downloaded the rom yet. ")
echo.
if exist "%cd%\adb\7Zip\"              ( call :cortexto 0a "Ok, I found the 7Zip folder, I need it to extract the rom.") else ( call :cortexto 04 "Looks like 7Zip folder is missing")
echo.
if exist "%cd%\adb\stock\system.img"   ( call :cortexto 0a "Okay, looks like you already extracted the rom.") else ( call :cortexto 04 "Do the extraction!")
echo.
echo.
set nb=
set /p "nb=Enter the option number you want %username% >"

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
 if exist "%cd%\adb\stock\jasmine.tgz" ( echo MsgBox "Stop being stupid, you already downloaded the rom, now you need to extract it.",vbInformation,"Pay attention" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockRom ) else ( echo. )
title Downloading stock rom 10.0.9.0, wait!
color 30

cls
echo.                          I am currently downloading the rom, now it will take a while!
echo.                                      But when it's over, I'll let you know!
echo.
mkdir "%cd%\adb\stock\"
timeout 3 > nul
powershell -command "& {&'Invoke-WebRequest' -Uri '%server_stock%' -OutFile '%cd%\adb\stock\jasmine.zip'}"
cls
 if exist "%cd%\adb\stock\jasmine.tgz" ( echo . ) else ( echo MsgBox "Oops, something went wrong, the file was not downloaded!",16,"Pay attention" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockRom )
cls
echo MsgBox "Now you need to extract the stock ROM.                                       I wait for you to press some key so that I go to the extraction of stock rom.",16,"It looks like the download worked." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo           It looks like your download worked, hit something so I can go BACK   to the stock options menu.
echo.
echo.
pause >nul
goto StockRom

:: Arquivos necessários para extração da stock rom.
:7zip
title Downloading the files that will extract the rom stock!
color 30
cls
echo.	
echo.				Downloading files needed for extraction!
echo.							Wait !
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
title Extracting the stock rom
color 03
 if exist "%cd%\adb\stock\system.img" ( echo MsgBox "Stop being stupid, you already extracted the rom, now you can flash it.",vbInformation,"Pay attention" >%cd%\adb\wyz.vbs  
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
echo      │           Performing jasmine_sprout stock rom extraction                                                  │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
"%cd%\adb\7Zip\7za.exe" e -o"%cd%\adb\stock" -bt -aoa "%cd%\adb\stock\jasmine.tgz"
"%cd%\adb\7Zip\7za.exe" e -o"%cd%\adb\stock" -bt -aoa "%cd%\adb\stock\jasmine.tar"
echo.
echo Hit something to go BACK  , without you I'm nobody ...
pause > nul
goto StockRom
:: Flash da stock
:VerificaStock
title Checking for ROM files!
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
echo      │           Checking stock rom files V10.0.9.0                                                              │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
 if exist "%cd%\adb\stock\"              ( call :cortexto 0a " Ok, a pasta foi criada. ")        else ( call :cortexto 04 " The rom folder is missing.")
 echo.
 if exist "%cd%\adb\stock\system.img"    ( call :cortexto 0a " Ok, SYSTEM.IMG this one.")     else ( call :cortexto 04 " Where is it  SYSTEM.IMG")
 echo.
 if exist "%cd%\adb\stock\vendor.img"    ( call :cortexto 0a " Ok, VENDOR.IMG this one. ")    else ( call :cortexto 04 " Where is it  VENDOR.IMG ")
 echo.
 if exist "%cd%\adb\stock\persist.img"   ( call :cortexto 0a " Ok, PERSIST.img this one. ")   else ( call :cortexto 04 " Where is it  PERSIST.IMG  ")
 echo.
 if exist "%cd%\adb\stock\bluetooth.img" ( call :cortexto 0a " Ok, BLUETOOTH.IMG this one. ") else ( call :cortexto 04 " Where is it  BLUETOOTH.IMG   ")
 echo.
 if exist "%cd%\adb\stock\devcfg.img"    ( call :cortexto 0a " Ok, DEVCFG.IMG this one. ")    else ( call :cortexto 04 " Where is it  DEVCFG.IMG ")
 echo.
 if exist "%cd%\adb\stock\dsp.img"       ( call :cortexto 0a " Ok, DSP.IMG this one. ")       else ( call :cortexto 04 " Where is it  DSP.IMG ")
 echo.
 if exist "%cd%\adb\stock\modem.img"     ( call :cortexto 0a " Ok, MODEM.IMG this one. ")     else ( call :cortexto 04 " Where is it  MODEM.IMG ")
 echo.
 if exist "%cd%\adb\stock\xbl.img"       ( call :cortexto 0a " Ok, XBL.IMG this one. ")       else ( call :cortexto 04 " Where is it  XBL.IMG ")
 echo.
 if exist "%cd%\adb\stock\pmic.img"      ( call :cortexto 0a " Ok, PMIC.IMG this one. ")      else ( call :cortexto 04 " Where is it  PMIC.IMG ")
 echo.
 if exist "%cd%\adb\stock\rpm.img"       ( call :cortexto 0a " Ok, RPM.IMG this one. ")      else ( call :cortexto 04 " Where is it  RPM.IMG  ")
 echo.
 if exist "%cd%\adb\stock\tz.img"        ( call :cortexto 0a " Ok, TZ.IMG this one. ")      else ( call :cortexto 04 " Where is it  TZ.IMG  ")
 echo.
 if exist "%cd%\adb\stock\boot.img"        ( call :cortexto 0a " Ok, BOOT.IMG this one. ")      else ( call :cortexto 04 " Where is it  BOOT.IMG  ")
echo.
echo.
echo.
echo.
call :cortexto 06 "Press any key for BACK   to the stock rom installation menu."
echo.
pause > nul 
goto StockRom
:: Flash da stock rom jasmine  
:FlashStock 
title Installing stock rom through Fastboot
color 03
if exist "%cd%\adb\stock\" ( echo . ) else ( goto AvisoDownloadStock )
if exist "%cd%\adb\stock\system.img" ( echo . ) else ( goto AvisoDownloadStock)
cls
echo.
echo.
echo.			Let's go to erase!
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
title It worked!
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           It worked, it looks like you did it, congratulations                                            │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
echo.
echo Press any key to return
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return to the stock rom Menu!
echo.
echo.
pause>nul
echo.
echo.
goto StockRom
:: Aviso de que é necessario baixar a stock rom antes de qualquer coisa
:AvisoDownloadStock
title Hit something to advance!
color 03
cls
echo MsgBox "You need to download stock rom.                                               I wait for you to press some key for me to go to stock rom download.",vbInformation,"Whoa, wait. " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo.
echo.
echo                                   Something there, I'll download the stock rom for you.
echo.
echo.
echo.
echo.
pause > nul
goto DownloadStock
:: Download Adb 
:Adb 
title Download ADB for Noobmaster work properly.
color 30
cls
echo.
echo                    I am downloading Adb so that everything works correctly.
echo.
echo                               Rest assured, I'll let you know when it's over!
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
echo MsgBox "Ok, the Adb has been downloaded! ",vbInformation,"Now go :) " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto Menu
:: SEM PAUSA, VÁ DIRETO PARA O MENU DE VERIFICAÇÃO DE ARQUIVOS
:VerAdb
title Checking ADB File Existence
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
echo      │      These are the folders that were created during the procedures, you should know what we created.      │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
tree
echo.
echo Press any key to return to the menu. 
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
echo      │                                                               ┌───────────────────────────────────────────┤
echo      ├───────────────────────────────────────────────────────────────┤ 8 ) ORANGE FOX UNNOFICIAL                 │
echo      │                                                               └───────────────────────────────────────────┤
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
set nb=
set /p "nb=Enter the option number you want %username% > "
 if '%nb%' == '1' goto TwrpBaguvix
 if '%nb%' == '2' goto TwrpHesoyan
 if '%nb%' == '3' goto TwrpUzumymw
 if '%nb%' == '4' goto TwrpOneway
 if '%nb%' == '5' goto TwrpRunway
 if '%nb%' == '6' goto TwrpKicogeco
 if '%nb%' == '7' goto TwrpAezakmi
 if '%nb%' == '8' goto Orange
 if '%nb%' == 'E' goto Menu
 if '%nb%' == 'e' goto Menu
goto Twrp
:Twrpbaguvix
title Twrp jasmine Version 3.2.3-0!
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
echo      ├──────┤ 1 ) BOOT ON TWRP 3.2.3-0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoTwrpbaguvix
if '%nb%' == '2' goto DownTwrpbaguvix
if '%nb%' == '3' goto DelTwrpbaguvix
if '%nb%' == '4' goto VerTwrpbaguvix
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto Twrpbaguvix
:: Boot on Twrp 
:GotoTwrpbaguvix
color 03
title Boot on Twrp 3.2.3-0 jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Boot on twrp jasmine_sprout  v 3.2.3-0                                                          │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\jasmine\3.2.3-0.img" || @echo "boot error" && goto TwrpbaguvixError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto Twrpbaguvix
:DownTwrpbaguvix
color 30
title Download Twrp 3.2.3-0 jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading twrp jasmine_sprout v 3.2.3-0 wait ...                               │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\jasmine\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%baguvix%', 'adb\file\twrp\jasmine\3.2.3-0.img') }"
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Twrpbaguvix )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto Twrpbaguvix
:DelTwrpbaguvix
title Deleting Twrp 3.2.3-0
color 03
cls
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Twrpbaguvix )
del adb\file\twrp\jasmine\3.2.3-0.img
echo MsgBox "Ok, deleted file",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Twrpbaguvix
:VerTwrpbaguvix
cls
if exist "%cd%\adb\file\twrp\jasmine\3.2.3-0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Twrpbaguvix )
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto Twrpbaguvix
:TwrpHesoyan
title Twrp jasmine version 3.3.0-0 !
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
echo      ├──────┤ 1 ) Boot on TWRP 3.3.0-0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoTwrpHesoyan
if '%nb%' == '2' goto DownTwrpHesoyan
if '%nb%' == '3' goto DelTwrpHesoyan
if '%nb%' == '4' goto VerTwrpHesoyan
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpHesoyan
:: Boot on Twrp 
:GotoTwrpHesoyan
color 03
title Boot on Twrp 3.3.0-0 jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Boot on twrp jasmine_sprout  v 3.3.0-0                                                          │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\jasmine\3.3.0-0.img" || @echo "boot error" && goto TwrpHesoyanError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto TwrpHesoyan
:DownTwrpHesoyan
color 30
title Download Twrp 3.3.0-0 jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Baixando twrp jasmine_sprout v 3.3.0-0 Wait!..                                │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                 │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\jasmine\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%hesoyan%', 'adb\file\twrp\jasmine\3.3.0-0.img') }"
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpHesoyan )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpHesoyan
:DelTwrpHesoyan
title Deleting Twrp 3.3.0-0
color 03
cls
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpHesoyan )
del adb\file\twrp\jasmine\3.3.0-0.img
echo MsgBox "Ok, deleted file",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpHesoyan
:VerTwrpHesoyan
cls
if exist "%cd%\adb\file\twrp\jasmine\3.3.0-0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpHesoyan )
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto TwrpHesoyan
:TwrpUzumymw
title Twrp jasmine version 3.3.1-0 !
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
echo      ├──────┤ 1 ) Boot on TWRP 3.3.1-0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoTwrpUzumymw
if '%nb%' == '2' goto DownTwrpUzumymw
if '%nb%' == '3' goto DelTwrpUzumymw
if '%nb%' == '4' goto VerTwrpUzumymw
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpUzumymw
:: Boot on Twrp 
:GotoTwrpUzumymw
color 03
title Boot on Twrp 3.3.1-0 jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Boot on twrp jasmine_sprout  v 3.3.1-0                                                          │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\jasmine\3.3.1-0.img" || @echo "boot error" && goto TwrpUzumymwError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto TwrpUzumymw
:DownTwrpUzumymw
color 30
title Download Twrp 3.3.1-0 jasmine_sprout
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                         Downloading twrp jasmine_sprout v 3.3.1-0 wait ...                                │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\jasmine\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%Uzumymw%', 'adb\file\twrp\jasmine\3.3.1-0.img') }"
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpUzumymw )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpUzumymw
:DelTwrpUzumymw
title Deleting Twrp 3.3.1-0
color 03
cls
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpUzumymw )
del adb\file\twrp\jasmine\3.3.1-0.img
echo MsgBox "Ok, deleted file",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpUzumymw
:VerTwrpUzumymw
cls
if exist "%cd%\adb\file\twrp\jasmine\3.3.1-0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpUzumymw )
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!
echo.
echo.
pause>nul
echo.
echo.
goto TwrpUzumymw
:TwrpOneway
title Twrp wayne version 3.2.3-0 !
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
echo      ├──────┤ 1 ) Boot on TWRP 3.2.3-0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH TWRP 3.2.3-0 WAYNE              │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoTwrpOneway
if '%nb%' == '2' goto DownTwrpOneway
if '%nb%' == '3' goto DelTwrpOneway
if '%nb%' == '4' goto VerTwrpOneway
if '%nb%' == '5' goto FlashTwrpOneway
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpOneway
:: Boot on Twrp 
:GotoTwrpOneway
color 03
title Boot on Twrp 3.2.3-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Boot on twrp wayne  v 3.2.3-0                                                                   │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\wayne\3.2.3-0.img" || @echo "boot error" && goto TwrpOnewayError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto TwrpOneway
:DownTwrpOneway
color 30
title Download Twrp 3.2.3-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading twrp wayne v 3.2.3-0 please wait ...                                 │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\wayne\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%Oneway%', 'adb\file\twrp\wayne\3.2.3-0.img') }"
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpOneway )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpOneway
:DelTwrpOneway
title Deleting Twrp 3.2.3-0
color 03
cls
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpOneway )
del adb\file\twrp\wayne\3.2.3-0.img
echo MsgBox "Ok, deleted file",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpOneway
:VerTwrpOneway
cls
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpOneway )
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!
echo.
echo.
pause>nul
echo.
echo.
goto TwrpOneway
:FlashTwrpOneway
color 03
title Flash do Twrp 3.2.3-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Flash twrp wayne  v 3.2.3-0                                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash recovery "%~dp0\adb\file\twrp\wayne\3.2.3-0.img" || @echo "flash recovery error" && goto TwrpOnewayError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto TwrpOneway
:TwrpRunway
title Twrp wayne version 3.2.3-1 !
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
echo      ├──────┤ 1 ) Boot on TWRP 3.2.3-1                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH TWRP 3.2.3-1 WAYNE              │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoTwrpRunway
if '%nb%' == '2' goto DownTwrpRunway
if '%nb%' == '3' goto DelTwrpRunway
if '%nb%' == '4' goto VerTwrpRunway
if '%nb%' == '5' goto FlashTwrpRunway
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpRunway
:: Boot on Twrp 
:GotoTwrpRunway
color 03
title Boot on Twrp 3.2.3-1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Boot on twrp wayne  v 3.2.3-1                                                                   │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\wayne\3.2.3-1.img" || @echo "boot error" && goto TwrpRunwayError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto TwrpRunway
:DownTwrpRunway
color 30
title Download Twrp 3.2.3-1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading twrp wayne v 3.2.3-1 please wait ...                                 │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax.                              │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\wayne\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%Runway%', 'adb\file\twrp\wayne\3.2.3-1.img') }"
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpRunway )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpRunway
:DelTwrpRunway
title Deleting Twrp 3.2.3-1
color 03
cls
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpRunway )
del adb\file\twrp\wayne\3.2.3-1.img
echo MsgBox "Ok, deleted file",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpRunway
:VerTwrpRunway
cls
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpRunway )
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto TwrpRunway
:FlashTwrpRunway
color 03
title Flash do Twrp 3.2.3-1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.2.3-1.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Flash twrp wayne  v 3.2.3-1                                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash recovery "%~dp0\adb\file\twrp\wayne\3.2.3-1.img" || @echo "flash recovery error" && goto TwrpRunwayError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto TwrpRunway
:TwrpKicogeco
title Twrp wayne version 3.3.0-0 !
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
echo      ├──────┤ 1 ) Boot on TWRP 3.3.0-0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH TWRP 3.3.0-0 WAYNE              │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoTwrpKicogeco
if '%nb%' == '2' goto DownTwrpKicogeco
if '%nb%' == '3' goto DelTwrpKicogeco
if '%nb%' == '4' goto VerTwrpKicogeco
if '%nb%' == '5' goto FlashTwrpKicogeco
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpKicogeco
:: Boot on Twrp 
:GotoTwrpKicogeco
color 03
title Boot on Twrp 3.3.0-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Boot on twrp wayne  v 3.3.0-0                                                                   │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\wayne\3.3.0-0.img" || @echo "boot error" && goto TwrpKicogecoError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto TwrpKicogeco
:DownTwrpKicogeco
color 30
title Download Twrp 3.3.0-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                      Downloading twrp wayne v 3.3.0-0 please wait ...                                     │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\wayne\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%Kicogeco%', 'adb\file\twrp\wayne\3.3.0-0.img') }"
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpKicogeco )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpKicogeco
:DelTwrpKicogeco
title Deleting Twrp 3.3.0-0
color 03
cls
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpKicogeco )
del adb\file\twrp\wayne\3.3.0-0.img
echo MsgBox "Ok, deleted file",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpKicogeco
:VerTwrpKicogeco
cls
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpKicogeco )
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!
echo.
echo.
pause>nul
echo.
echo.
goto TwrpKicogeco
:FlashTwrpKicogeco
color 03
title Flash Twrp 3.3.0-0 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.0-0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Flash twrp wayn v 3.3.0-0                                                                       │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash recovery "%~dp0\adb\file\twrp\wayne\3.3.0-0.img" || @echo "flash recovery error" && goto TwrpKicogecoError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto TwrpKicogeco
:TwrpAezakmi
title Twrp wayne version 3.3.1 !
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
echo      ├──────┤ 1 ) Boot on TWRP 3.3.1                    │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH TWRP 3.3.1 WAYNE                │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\twrp\wayne\3.3.1.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoTwrpAezakmi
if '%nb%' == '2' goto DownTwrpAezakmi
if '%nb%' == '3' goto DelTwrpAezakmi
if '%nb%' == '4' goto VerTwrpAezakmi
if '%nb%' == '5' goto FlashTwrpAezakmi
if '%nb%' == 'E' goto Twrp
if '%nb%' == 'e' goto Twrp
goto TwrpAezakmi
:: Boot on Twrp 
:GotoTwrpAezakmi
color 03
title Boot on Twrp 3.3.1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.1.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Boot on twrp wayne  v 3.3.1                                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\twrp\wayne\3.3.1.img" || @echo "boot error" && goto TwrpAezakmiError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto TwrpAezakmi
:DownTwrpAezakmi
color 30
title Download Twrp 3.3.1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.1.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading twrp wayne v 3.3.1 please wait ...                                   │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\twrp\wayne\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%Aezakmi%', 'adb\file\twrp\wayne\3.3.1.img') }"
if exist "%cd%\adb\file\twrp\wayne\3.3.1.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpAezakmi )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto TwrpAezakmi
:DelTwrpAezakmi
title Deleting Twrp 3.3.1
color 03
cls
if exist "%cd%\adb\file\twrp\wayne\3.3.1.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpAezakmi )
del adb\file\twrp\wayne\3.3.1.img
echo MsgBox "Ok, deleted file",16,"Excluir Twrp" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpAezakmi
:VerTwrpAezakmi
cls
if exist "%cd%\adb\file\twrp\wayne\3.3.1.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto TwrpAezakmi )
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto TwrpAezakmi
:FlashTwrpAezakmi
color 03
title Flash Twrp 3.3.1 wayne
if exist "%cd%\adb\file\twrp\wayne\3.3.1.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Flash twrp wayn v 3.3.1                                                                         │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash recovery "%~dp0\adb\file\twrp\wayne\3.3.1.img" || @echo "flash recovery error" && goto TwrpAezakmiError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto TwrpAezakmi
:Orange
title Orange wayne version UNNOFICIAL !
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
echo      ├──────┤ 1 ) Boot on ORANGEFOX UNNOFICIAL          │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETAR                               │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH ORANGEFOX UNNOFICIAL WAYNE      │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\Orange\wayne\unnoficial.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoOrange
if '%nb%' == '2' goto DownOrange
if '%nb%' == '3' goto DelOrange
if '%nb%' == '4' goto VerOrange
if '%nb%' == '5' goto FlashOrange

if '%nb%' == 'E' goto Menu
if '%nb%' == 'e' goto Menu
goto Orange
:: Boot on Orange 
:GotoOrange
color 03
title Boot on Orange unnoficial wayne
if exist "%cd%\adb\file\Orange\wayne\unnoficial.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Orange  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot on Orange wayne unnoficial                                                                 │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\Orange\wayne\unnoficial.img" || @echo "boot error" && goto OrangeError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto Orange
:DownOrange
color 30
title Download Orange unnoficial wayne
if exist "%cd%\adb\file\Orange\wayne\unnoficial.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Orange ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                         Downloading Orange wayne unnoficial please wait ...                               │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\Orange\wayne\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%Orange%', 'adb\file\Orange\wayne\unnoficial.img') }"
if exist "%cd%\adb\file\Orange\wayne\unnoficial.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Orange )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto Orange
:DelOrange
title Deleting Orange unnoficial
color 03
cls
if exist "%cd%\adb\file\Orange\wayne\unnoficial.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Orange )
del adb\file\Orange\wayne\unnoficial.img
echo MsgBox "Ok, deleted file",16,"Excluir Orange" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Orange
:VerOrange
cls
if exist "%cd%\adb\file\Orange\wayne\unnoficial.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Orange )
start %cd%\adb\file\Orange\wayne\
goto Orange
:OrangeError
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto Orange
:FlashOrange
color 03
title Flash do Orange unnoficial wayne
if exist "%cd%\adb\file\Orange\wayne\unnoficial.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Orange  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash Orange wayne unnoficial                                                                   │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash recovery "%~dp0\adb\file\Orange\wayne\unnoficial.img" || @echo "flash recovery error" && goto OrangeError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto Orange
:Patched
title Patched boot para root na stock rom !
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
echo      ├──────┤ 1 ) PATCHED BOOT 10.0.8.0                 │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) PATCHED BOOT 10.0.9.0                 │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) PATCHED BOOT 10.0.10.0                │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) PATCHED BOOT 10.0.12.0                │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) PATCHED BOOT 10.0.13.0                │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto PatchedOito
if '%nb%' == '2' goto PatchedNove
if '%nb%' == '3' goto PatchedDez
if '%nb%' == '4' goto PatchedDoze
if '%nb%' == '5' goto PatchedTreze
if '%nb%' == 'E' goto Menu
if '%nb%' == 'e' goto Menu
goto Patched
:PatchedOito
title Patched Boot 10.0.8.0 !
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
echo      ├──────┤ 1 ) Boot on PATCHED BOOT 10.0.8.0         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PATCHED BOOT 10.0.8.0        │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH DO PATCHED BOOT 10.0.8.0        │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\patched\10.0.8.0\10.0.8.0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoPatchedOito
if '%nb%' == '2' goto DownPatchedOito
if '%nb%' == '3' goto DelPatchedOito
if '%nb%' == '4' goto VerPatchedOito
if '%nb%' == '5' goto FlashPatchedOito
if '%nb%' == 'E' goto Patched
if '%nb%' == 'e' goto Patched
goto PatchedOito
:DownPatchedOito
color 30
title Download patched boot 10.0.8.0!
if exist "%cd%\adb\file\patched\10.0.8.0\10.0.8.0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedOito ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Downloading patched boot from version 10.0.8.0 ...                               │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\patched\10.0.8.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%patchedoito%', 'adb\file\patched\10.0.8.0\10.0.8.0.img') }"
if exist "%cd%\adb\file\patched\10.0.8.0\10.0.8.0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedOito )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto PatchedOito
:DelPatchedOito
title Deleting Patched boot 10.0.8.0
color 03
cls
if exist "%cd%\adb\file\patched\10.0.8.0\10.0.8.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedOito )
del adb\file\patched\10.0.8.0\10.0.8.0.img
echo MsgBox "Ok, deleted file",16,"Excluir patched" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedOito
:FlashPatchedOito
color 03
title Flash do Patched boot 10.0.8.0
if exist "%cd%\adb\file\patched\10.0.8.0\10.0.8.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedOito  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash patched boot 10.0.8.0                                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0\adb\file\patched\10.0.8.0\10.0.8.0.img" || @echo "flash recovery error" && goto PatchedOitoError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto PatchedOito
:GotoPatchedOito
color 03
title Boot on patched boot 10.0.8.0
if exist "%cd%\adb\file\patched\10.0.8.0\10.0.8.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedOito  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot patched boot 10.0.8.0                                                                      │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\patched\10.0.8.0\10.0.8.0.img" || @echo "boot error" && goto PatchedOitoError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto PatchedOito
:VerPatchedOito
cls
if exist "%cd%\adb\file\patched\10.0.8.0\10.0.8.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedOito )
start %cd%\adb\file\patched\10.0.8.0\
goto PatchedOito
:PatchedOitoError
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto PatchedOito
:PatchedNove
title Patched Boot 10.0.9.0 !
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
echo      ├──────┤ 1 ) Boot on PATCHED BOOT 10.0.9.0         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PATCHED BOOT 10.0.9.0        │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH PATCHED BOOT 10.0.9.0           │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\patched\10.0.9.0\10.0.9.0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoPatchedNove
if '%nb%' == '2' goto DownPatchedNove
if '%nb%' == '3' goto DelPatchedNove
if '%nb%' == '4' goto VerPatchedNove
if '%nb%' == '5' goto FlashPatchedNove
if '%nb%' == 'E' goto Patched
if '%nb%' == 'e' goto Patched
goto PatchedNove
:DownPatchedNove
color 30
title Download patched boot 10.0.9.0!
if exist "%cd%\adb\file\patched\10.0.9.0\10.0.9.0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedNove ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Downloading patched boot from version 10.0.9.0...                                │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\patched\10.0.9.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%PatchedNove%', 'adb\file\patched\10.0.9.0\10.0.9.0.img') }"
if exist "%cd%\adb\file\patched\10.0.9.0\10.0.9.0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedNove )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto PatchedNove
:DelPatchedNove
title Deleting Patched boot 10.0.9.0
color 03
cls
if exist "%cd%\adb\file\patched\10.0.9.0\10.0.9.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedNove )
del adb\file\patched\10.0.9.0\10.0.9.0.img
echo MsgBox "Ok, deleted file",16,"Excluir patched" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedNove
:FlashPatchedNove
color 03
title Flash do Patched boot 10.0.9.0
if exist "%cd%\adb\file\patched\10.0.9.0\10.0.9.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedNove  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash patched boot 10.0.9.0                                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0\adb\file\patched\10.0.9.0\10.0.9.0.img" || @echo "flash recovery error" && goto PatchedNoveError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto PatchedNove
:GotoPatchedNove
color 03
title Boot on patched boot 10.0.9.0
if exist "%cd%\adb\file\patched\10.0.9.0\10.0.9.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedNove  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot patched boot 10.0.9.0                                                                      │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\patched\10.0.9.0\10.0.9.0.img" || @echo "boot error" && goto PatchedNoveError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto PatchedNove
:VerPatchedNove
cls
if exist "%cd%\adb\file\patched\10.0.9.0\10.0.9.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedNove )
start %cd%\adb\file\patched\10.0.9.0\
goto PatchedNove
:PatchedNoveError
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto PatchedNove
:PatchedDez
title Patched Boot 10.0.10.0 !
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
echo      ├──────┤ 1 ) Boot on PATCHED BOOT 10.0.10.0        │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PATCHED BOOT 10.0.10.0       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH PATCHED BOOT 10.0.10.0          │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\patched\10.0.10.0\10.0.10.0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoPatchedDez
if '%nb%' == '2' goto DownPatchedDez
if '%nb%' == '3' goto DelPatchedDez
if '%nb%' == '4' goto VerPatchedDez
if '%nb%' == '5' goto FlashPatchedDez
if '%nb%' == 'E' goto Patched
if '%nb%' == 'e' goto Patched
goto PatchedDez
:DownPatchedDez
color 30
title Download patched boot 10.0.10.0!
if exist "%cd%\adb\file\patched\10.0.10.0\10.0.10.0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading patched boot from version 10.0.10.0...                               │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\patched\10.0.10.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%PatchedDez%', 'adb\file\patched\10.0.10.0\10.0.10.0.img') }"
if exist "%cd%\adb\file\patched\10.0.10.0\10.0.10.0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDez )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto PatchedDez
:DelPatchedDez
title Deleting Patched boot 10.0.10.0
color 03
cls
if exist "%cd%\adb\file\patched\10.0.10.0\10.0.10.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDez )
del adb\file\patched\10.0.10.0\10.0.10.0.img
echo MsgBox "Ok, deleted file",16,"Excluir patched" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDez
:FlashPatchedDez
color 03
title Flash do Patched boot 10.0.10.0
if exist "%cd%\adb\file\patched\10.0.10.0\10.0.10.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Flash patched boot 10.0.10.0                                                                    │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0\adb\file\patched\10.0.10.0\10.0.10.0.img" || @echo "flash recovery error" && goto PatchedDezError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto PatchedDez
:GotoPatchedDez
color 03
title Boot on patched boot 10.0.10.0
if exist "%cd%\adb\file\patched\10.0.10.0\10.0.10.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Boot patched boot 10.0.10.0                                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\patched\10.0.10.0\10.0.10.0.img" || @echo "boot error" && goto PatchedDezError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto PatchedDez
:VerPatchedDez
cls
if exist "%cd%\adb\file\patched\10.0.10.0\10.0.10.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDez )
start %cd%\adb\file\patched\10.0.10.0\
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto PatchedDez
:PatchedDoze
title Patched Boot 10.0.12.0 !
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
echo      ├──────┤ 1 ) Boot on PATCHED BOOT 10.0.12.0        │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PATCHED BOOT 10.0.12.0       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH PATCHED BOOT 10.0.12.0          │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoPatchedDoze
if '%nb%' == '2' goto DownPatchedDoze
if '%nb%' == '3' goto DelPatchedDoze
if '%nb%' == '4' goto VerPatchedDoze
if '%nb%' == '5' goto FlashPatchedDoze
if '%nb%' == 'E' goto Patched
if '%nb%' == 'e' goto Patched
goto PatchedDoze
:DownPatchedDoze
color 30
title Download patched boot 10.0.12.0!
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading patched boot from version 10.0.12.0...                               │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\patched\10.0.12.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%PatchedDoze%', 'adb\file\patched\10.0.12.0\10.0.12.0.img') }"
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDoze )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto PatchedDoze
:DelPatchedDoze
title Deleting Patched boot 10.0.12.0
color 03
cls
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"Tu ja excluiu carai." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDoze )
del adb\file\patched\10.0.12.0\10.0.12.0.img
echo MsgBox "Ok, deleted file",16,"Excluir patched" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedDoze
:FlashPatchedDoze
color 03
title Flash do Patched boot 10.0.12.0
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Flash patched boot 10.0.12.0                                                                    │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0adb\file\patched\10.0.12.0\10.0.12.0.img" || @echo "flash recovery error" && goto PatchedDozeError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto PatchedDoze
:GotoPatchedDoze
color 03
title Boot on patched boot 10.0.12.0
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Boot patched boot 10.0.12.0                                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0adb\file\patched\10.0.12.0\10.0.12.0.img" || @echo "boot error" && goto PatchedDozeError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto PatchedDoze
:VerPatchedDoze
cls
if exist "%cd%\adb\file\patched\10.0.12.0\10.0.12.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto PatchedDoze
:PatchedTreze
title Patched Boot 10.0.13.0 !
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
echo      ├──────┤ 1 ) Boot on PATCHED BOOT 10.0.13.0        │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD PATCHED BOOT 10.0.13.0       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH PATCHED BOOT 10.0.13.0          │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoPatchedTreze
if '%nb%' == '2' goto DownPatchedTreze
if '%nb%' == '3' goto DelPatchedTreze
if '%nb%' == '4' goto VerPatchedTreze
if '%nb%' == '5' goto FlashPatchedTreze
if '%nb%' == 'E' goto Patched
if '%nb%' == 'e' goto Patched
goto PatchedTreze
:DownPatchedTreze
color 30
title Download patched boot 10.0.13.0!
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading patched boot from version 10.0.13.0...                               │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\patched\10.0.13.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%PatchedTreze%', 'adb\file\patched\10.0.13.0\10.0.13.0.img') }"
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedTreze )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto PatchedTreze
:DelPatchedTreze
title Deleting Patched boot 10.0.13.0
color 03
cls
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedTreze )
del adb\file\patched\10.0.13.0\10.0.13.0.img
echo MsgBox "Ok, deleted file",16,"Excluir patched" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto PatchedTreze
:FlashPatchedTreze
color 03
title Flash do Patched boot 10.0.13.0
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Flash patched boot 10.0.13.0                                                                    │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0\adb\file\patched\10.0.13.0\10.0.13.0.img" || @echo "flash recovery error" && goto PatchedTrezeError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto PatchedTreze
:GotoPatchedTreze
color 03
title Boot on patched boot 10.0.13.0
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Boot patched boot 10.0.13.0                                                                     │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\patched\10.0.13.0\10.0.13.0.img" || @echo "boot error" && goto PatchedTrezeError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto PatchedTreze
:VerPatchedTreze
cls
if exist "%cd%\adb\file\patched\10.0.13.0\10.0.13.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto PatchedTreze
:StockBoot
title Stock boot para a stock rom !
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
echo      ├──────┤ 1 ) STOCK BOOT 10.0.8.0                   │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) STOCK BOOT 10.0.9.0                   │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) STOCK BOOT 10.0.10.0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) STOCK BOOT 10.0.12.0                  │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) STOCK BOOT 10.0.13.0                  │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto StockBootOito
if '%nb%' == '2' goto StockBootNove
if '%nb%' == '3' goto StockBootDez
if '%nb%' == '4' goto StockBootDoze
if '%nb%' == '5' goto StockBootTreze
if '%nb%' == 'E' goto Menu
if '%nb%' == 'e' goto Menu
goto StockBoot
:StockBootOito
title STOCK Boot 10.0.8.0 !
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
echo      ├──────┤ 1 ) Boot on STOCK BOOT 10.0.8.0           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD STOCK BOOT 10.0.8.0          │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH STOCK BOOT 10.0.8.0             │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\stockboot\10.0.8.0\10.0.8.0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoStockBootOito
if '%nb%' == '2' goto DownStockBootOito
if '%nb%' == '3' goto DelStockBootOito
if '%nb%' == '4' goto VerStockBootOito
if '%nb%' == '5' goto FlashStockBootOito
if '%nb%' == 'E' goto StockBoot
if '%nb%' == 'e' goto StockBoot
goto StockBootOito
:DownStockBootOito
color 30
title Download STOCK boot 10.0.8.0!
if exist "%cd%\adb\file\stockboot\10.0.8.0\10.0.8.0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootOito ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Downloading STOCK boot from version 10.0.8.0...                                  │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\stockboot\10.0.8.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%StockBootOito%', 'adb\file\stockboot\10.0.8.0\10.0.8.0.img') }"
if exist "%cd%\adb\file\stockboot\10.0.8.0\10.0.8.0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootOito )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto StockBootOito
:DelStockBootOito
title Deleting STOCK boot 10.0.8.0
color 03
cls
if exist "%cd%\adb\file\stockboot\10.0.8.0\10.0.8.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootOito )
del adb\file\stockboot\10.0.8.0\10.0.8.0.img
echo MsgBox "Ok, deleted file",16,"Excluir STOCK" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootOito
:FlashStockBootOito
color 03
title Flash do STOCK boot 10.0.8.0
if exist "%cd%\adb\file\stockboot\10.0.8.0\10.0.8.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootOito  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash STOCK boot 10.0.8.0                                                                       │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0\adb\file\stockboot\10.0.8.0\10.0.8.0.img" || @echo "flash recovery error" && goto StockBootOitoError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto StockBootOito
:GotoStockBootOito
color 03
title Boot on STOCK boot 10.0.8.0
if exist "%cd%\adb\file\stockboot\10.0.8.0\10.0.8.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootOito  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot STOCK boot 10.0.8.0                                                                        │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\stockboot\10.0.8.0\10.0.8.0.img" || @echo "boot error" && goto StockBootOitoError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto StockBootOito
:VerStockBootOito
cls
if exist "%cd%\adb\file\stockboot\10.0.8.0\10.0.8.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootOito )
start %cd%\adb\file\stockboot\10.0.8.0\
goto StockBootOito
:StockBootOitoError
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto StockBootOito
:StockBootNove
title STOCK Boot 10.0.9.0 !
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
echo      ├──────┤ 1 ) Boot on STOCK BOOT 10.0.9.0           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD STOCK BOOT 10.0.9.0          │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH STOCK BOOT 10.0.9.0             │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\stockboot\10.0.9.0\10.0.9.0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoStockBootNove
if '%nb%' == '2' goto DownStockBootNove
if '%nb%' == '3' goto DelStockBootNove
if '%nb%' == '4' goto VerStockBootNove
if '%nb%' == '5' goto FlashStockBootNove
if '%nb%' == 'E' goto StockBoot
if '%nb%' == 'e' goto StockBoot
goto StockBootNove
:DownStockBootNove
color 30
title Download STOCK boot 10.0.9.0!
if exist "%cd%\adb\file\stockboot\10.0.9.0\10.0.9.0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootNove ) else ( echo . )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █   
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                          Downloading STOCK boot from version 10.0.9.0...                                  │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\stockboot\10.0.9.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%StockBootNove%', 'adb\file\stockboot\10.0.9.0\10.0.9.0.img') }"
if exist "%cd%\adb\file\stockboot\10.0.9.0\10.0.9.0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootNove )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto StockBootNove
:DelStockBootNove
title Deleting STOCK boot 10.0.9.0
color 03
cls
if exist "%cd%\adb\file\stockboot\10.0.9.0\10.0.9.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootNove )
del adb\file\stockboot\10.0.9.0\10.0.9.0.img
echo MsgBox "Ok, deleted file",16,"Excluir STOCK" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootNove
:FlashStockBootNove
color 03
title Flash do STOCK boot 10.0.9.0
if exist "%cd%\adb\file\stockboot\10.0.9.0\10.0.9.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootNove  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Flash STOCK boot 10.0.9.0                                                                       │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0\adb\file\stockboot\10.0.9.0\10.0.9.0.img" || @echo "flash recovery error" && goto StockBootNoveError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto StockBootNove
:GotoStockBootNove
color 03
title Boot on STOCK boot 10.0.9.0
if exist "%cd%\adb\file\stockboot\10.0.9.0\10.0.9.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootNove  )
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │           Boot STOCK boot 10.0.9.0                                                                        │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\stockboot\10.0.9.0\10.0.9.0.img" || @echo "boot error" && goto StockBootNoveError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto StockBootNove
:VerStockBootNove
cls
if exist "%cd%\adb\file\stockboot\10.0.9.0\10.0.9.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootNove )
start %cd%\adb\file\stockboot\10.0.9.0\
goto StockBootNove
:StockBootNoveError
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto StockBootNove
:StockBootDez
title STOCK Boot 10.0.10.0 !
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
echo      ├──────┤ 1 ) Boot on STOCK BOOT 10.0.10.0          │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD STOCK BOOT 10.0.10.0         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH STOCK BOOT 10.0.10.0            │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\stockboot\10.0.10.0\10.0.10.0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoStockBootDez
if '%nb%' == '2' goto DownStockBootDez
if '%nb%' == '3' goto DelStockBootDez
if '%nb%' == '4' goto VerStockBootDez
if '%nb%' == '5' goto FlashStockBootDez
if '%nb%' == 'E' goto StockBoot
if '%nb%' == 'e' goto StockBoot
goto StockBootDez
:DownStockBootDez
color 30
title Download STOCK boot 10.0.10.0!
if exist "%cd%\adb\file\stockboot\10.0.10.0\10.0.10.0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading STOCK boot from version 10.0.10.0...                                 │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\stockboot\10.0.10.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%StockBootDez%', 'adb\file\stockboot\10.0.10.0\10.0.10.0.img') }"
if exist "%cd%\adb\file\stockboot\10.0.10.0\10.0.10.0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDez )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto StockBootDez
:DelStockBootDez
title Deleting STOCK boot 10.0.10.0
color 03
cls
if exist "%cd%\adb\file\stockboot\10.0.10.0\10.0.10.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDez )
del adb\file\stockboot\10.0.10.0\10.0.10.0.img
echo MsgBox "Ok, deleted file",16,"Excluir STOCK" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDez
:FlashStockBootDez
color 03
title Flash do STOCK boot 10.0.10.0
if exist "%cd%\adb\file\stockboot\10.0.10.0\10.0.10.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Flash STOCK boot 10.0.10.0                                                                      │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0\adb\file\stockboot\10.0.10.0\10.0.10.0.img" || @echo "flash recovery error" && goto StockBootDezError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto StockBootDez
:GotoStockBootDez
color 03
title Boot on STOCK boot 10.0.10.0
if exist "%cd%\adb\file\stockboot\10.0.10.0\10.0.10.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Boot STOCK boot 10.0.10.0                                                                       │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0\adb\file\stockboot\10.0.10.0\10.0.10.0.img" || @echo "boot error" && goto StockBootDezError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto StockBootDez
:VerStockBootDez
cls
if exist "%cd%\adb\file\stockboot\10.0.10.0\10.0.10.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDez )
start %cd%\adb\file\stockboot\10.0.10.0\
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto StockBootDez
:StockBootDoze
title STOCK Boot 10.0.12.0 !
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
echo      ├──────┤ 1 ) Boot on STOCK BOOT 10.0.12.0          │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD STOCK BOOT 10.0.12.0         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH STOCK BOOT 10.0.12.0            │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoStockBootDoze
if '%nb%' == '2' goto DownStockBootDoze
if '%nb%' == '3' goto DelStockBootDoze
if '%nb%' == '4' goto VerStockBootDoze
if '%nb%' == '5' goto FlashStockBootDoze
if '%nb%' == 'E' goto StockBoot
if '%nb%' == 'e' goto StockBoot
goto StockBootDoze
:DownStockBootDoze
color 30
title Download STOCK boot 10.0.12.0!
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading STOCK boot from version 10.0.12.0...                                 │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\stockboot\10.0.12.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%StockBootDoze%', 'adb\file\stockboot\10.0.12.0\10.0.12.0.img') }"
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDoze )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto StockBootDoze
:DelStockBootDoze
title Deleting STOCK boot 10.0.12.0
color 03
cls
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"Tu ja excluiu carai." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDoze )
del adb\file\stockboot\10.0.12.0\10.0.12.0.img
echo MsgBox "Ok, deleted file",16,"Excluir STOCK" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootDoze
:FlashStockBootDoze
color 03
title Flash do STOCK boot 10.0.12.0
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Flash STOCK boot 10.0.12.0                                                                      │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0adb\file\stockboot\10.0.12.0\10.0.12.0.img" || @echo "flash recovery error" && goto StockBootDozeError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto StockBootDoze
:GotoStockBootDoze
color 03
title Boot on STOCK boot 10.0.12.0
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Boot STOCK boot 10.0.12.0                                                                       │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0adb\file\stockboot\10.0.12.0\10.0.12.0.img" || @echo "boot error" && goto StockBootDozeError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto StockBootDoze
:VerStockBootDoze
cls
if exist "%cd%\adb\file\stockboot\10.0.12.0\10.0.12.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto StockBootDoze
:StockBootTreze
title STOCK Boot 10.0.13.0 !
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
echo      ├──────┤ 1 ) Boot on STOCK BOOT 10.0.13.0          │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD STOCK BOOT 10.0.13.0         │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 5 ) FLASH STOCK BOOT 10.0.13.0            │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoStockBootTreze
if '%nb%' == '2' goto DownStockBootTreze
if '%nb%' == '3' goto DelStockBootTreze
if '%nb%' == '4' goto VerStockBootTreze
if '%nb%' == '5' goto FlashStockBootTreze
if '%nb%' == 'E' goto StockBoot
if '%nb%' == 'e' goto StockBoot
goto StockBootTreze
:DownStockBootTreze
color 30
title Download STOCK boot 10.0.13.0!
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading STOCK boot from version 10.0.13.0...                                 │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\stockboot\10.0.13.0\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%StockBootTreze%', 'adb\file\stockboot\10.0.13.0\10.0.13.0.img') }"
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootTreze )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto StockBootTreze
:DelStockBootTreze
title Deleting STOCK boot 10.0.13.0
color 03
cls
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"Tu ja excluiu carai." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootTreze )
del adb\file\stockboot\10.0.13.0\10.0.13.0.img
echo MsgBox "Ok, deleted file",16,"Excluir STOCK" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto StockBootTreze
:FlashStockBootTreze
color 03
title Flash do STOCK boot 10.0.13.0
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Flash STOCK boot 10.0.13.0                                                                      │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash boot "%~dp0adb\file\stockboot\10.0.13.0\10.0.13.0.img" || @echo "flash recovery error" && goto StockBootTrezeError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto StockBootTreze
:GotoStockBootTreze
color 03
title Boot on STOCK boot 10.0.13.0
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Boot STOCK boot 10.0.13.0                                                                       │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% boot "%~dp0adb\file\stockboot\10.0.13.0\10.0.13.0.img" || @echo "boot error" && goto StockBootTrezeError
echo.
echo.
echo.
echo Press any key to return
echo.
pause >nul
goto StockBootTreze
:VerStockBootTreze
cls
if exist "%cd%\adb\file\stockboot\10.0.13.0\10.0.13.0.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto StockBootTreze
:GappsMicro
title Gapps Micro  ( 01/19 )
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
echo      ├──────┤ 1 ) FLASH GAPPS MICRO                     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\gappsmicro\gappsmicro.zip" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto GotoGappsMicro
if '%nb%' == '2' goto DownGappsMicro
if '%nb%' == '3' goto DelGappsMicro
if '%nb%' == '4' goto VerGappsMicro
if '%nb%' == 'E' goto Menu
if '%nb%' == 'e' goto Menu
goto GappsMicro
:: Boot on Gapps 
:GotoGappsMicro
color 03
title Servindo Gapps através do Adb Sideload
if exist "%cd%\adb\file\gappsmicro\gappsmicro.zip" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Gapps Flash via Adb Sideload                                                                    │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%adb% sideload %cd%\adb\file\gappsmicro\gappsmicro.zip || @echo "sideload error" && goto GappsMicroError
echo.
echo.
echo.
echo Hit anything to go back!
echo.
pause >nul
goto GappsMicro
:DownGappsMicro
color 30
title Download Gapps Micro
if exist "%cd%\adb\file\gappsmicro\gappsmicro.zip" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading Gapps please wait ...                                                │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\gappsmicro\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%GappsMicro%', 'adb\file\gappsmicro\gappsmicro.zip') }"
if exist "%cd%\adb\file\gappsmicro\gappsmicro.zip" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GappsMicro )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto GappsMicro
:DelGappsMicro
title Deleting Gapps 
color 03
cls
if exist "%cd%\adb\file\gappsmicro\gappsmicro.zip" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GappsMicro )
del adb\file\gappsmicro\gappsmicro.zip
echo MsgBox "Ok, deleted file",16,"Excluir Gapps" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GappsMicro
:VerGappsMicro
cls
if exist "%cd%\adb\file\gappsmicro\gappsmicro.zip" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!
echo.
echo.
pause>nul
echo.
echo.
goto GappsMicro
:Splash
title Menu selects Splash!
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
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto SplashMiui
if '%nb%' == '2' goto SplashOne
if '%nb%' == '3' goto SplashMiui_white
if '%nb%' == '4' goto SplashAnonimous
if '%nb%' == 'E' goto Menu
if '%nb%' == 'e' goto Menu
goto Splash
:SplashOne
title Splash Android One Stock !
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
echo      ├──────┤ 1 ) FLASH SPLASH ANDROID ONE STOCK        │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\splash\one\splash.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto FlashSplashOne
if '%nb%' == '2' goto DownSplashOne
if '%nb%' == '3' goto DelSplashOne
if '%nb%' == '4' goto VerSplashOne
if '%nb%' == 'E' goto Splash
if '%nb%' == 'e' goto Splash
goto SplashOne
:DownSplashOne
color 30
title Download Splash Android One Stock!
if exist "%cd%\adb\file\splash\one\splash.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading Splash Android One Stock ...                                         │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\splash\one\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%SplashOne%', 'adb\file\splash\one\splash.img') }"
if exist "%cd%\adb\file\splash\one\splash.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashOne )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto SplashOne
:DelSplashOne
title Deleting Splash Android One Stock
color 03
cls
if exist "%cd%\adb\file\splash\one\splash.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashOne )
del adb\file\splash\one\splash.img
echo MsgBox "Ok, deleted file",16,"Excluir STOCK" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashOne
:FlashSplashOne
color 03
title Flash do Splash Android One Stock
if exist "%cd%\adb\file\splash\one\splash.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Flash Splash Android One Stock                                                                  │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash splash "%~dp0adb\file\splash\one\splash.img" || @echo "flash splash error" && goto SplashOneError
echo.
echo.
echo MsgBox "Ok, looks like everything went well",16,"Flash Success" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
%fastboot% reboot bootloader
echo.
echo Press any key to return
echo.
pause >nul
goto SplashOne
:VerSplashOne
cls
if exist "%cd%\adb\file\splash\one\splash.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!  !
echo.
echo.
pause>nul
echo.
echo.
goto SplashOne
:SplashMIUI
title Splash Android MIUI Stock !
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
echo      ├──────┤ 1 ) FLASH SPLASH ANDROID MIUI STOCK       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\splash\MIUI\splash.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto FlashSplashMIUI
if '%nb%' == '2' goto DownSplashMIUI
if '%nb%' == '3' goto DelSplashMIUI
if '%nb%' == '4' goto VerSplashMIUI
if '%nb%' == 'E' goto Splash
if '%nb%' == 'e' goto Splash
goto SplashMIUI
:DownSplashMIUI
color 30
title Download Splash Android MIUI Stock!
if exist "%cd%\adb\file\splash\MIUI\splash.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading Splash Android MIUI Stock ...                                        │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\splash\MIUI\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%SplashMIUI%', 'adb\file\splash\MIUI\splash.img') }"
if exist "%cd%\adb\file\splash\MIUI\splash.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashMIUI )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto SplashMIUI
:DelSplashMIUI
title Deleting Splash Android MIUI Stock
color 03
cls
if exist "%cd%\adb\file\splash\MIUI\splash.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashMIUI )
del adb\file\splash\MIUI\splash.img
echo MsgBox "Ok, deleted file",16,"Excluir STOCK" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashMIUI
:FlashSplashMIUI
color 03
title Flash do Splash Android MIUI Stock
if exist "%cd%\adb\file\splash\MIUI\splash.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo      │           Flash Splash Android MIUI Stock                                                                 │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
%fastboot% flash splash "%~dp0adb\file\splash\MIUI\splash.img" || @echo "flash splash error" && goto SplashMIUIError
echo.
echo.
echo MsgBox "Ok, looks like everything went well",16,"Flash Success" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
%fastboot% reboot bootloader
echo.
echo Press any key to return
echo.
pause >nul
goto SplashMIUI
The file has been deleted, there is nothing here.",16,"You already deleted it.
:VerSplashMIUI
cls
if exist "%cd%\adb\file\splash\MIUI\splash.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!
echo.
echo.
pause>nul
echo.
echo.
goto SplashMIUI
:Splashmiui_white
title Splash Android miui_white  !
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
echo      ├──────┤ 1 ) FLASH SPLASH ANDROID miui_white       │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\splash\miui_white\splash.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto FlashSplashmiui_white
if '%nb%' == '2' goto DownSplashmiui_white
if '%nb%' == '3' goto DelSplashmiui_white
if '%nb%' == '4' goto VerSplashmiui_white
if '%nb%' == 'E' goto Splash
if '%nb%' == 'e' goto Splash
goto Splashmiui_white
:DownSplashmiui_white
color 30
title Download Splash Android miui_white !
if exist "%cd%\adb\file\splash\miui_white\splash.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                          Downloading Splash Android miui_white ...                                        │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax.                              │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\splash\miui_white\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%Splashmiui_white%', 'adb\file\splash\miui_white\splash.img') }"
if exist "%cd%\adb\file\splash\miui_white\splash.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Splashmiui_white )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto Splashmiui_white
:DelSplashmiui_white
title Deleting Splash Android miui_white 
color 03
cls
if exist "%cd%\adb\file\splash\miui_white\splash.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Splashmiui_white )
del adb\file\splash\miui_white\splash.img
echo MsgBox "Ok, deleted file",16,"Excluir " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Splashmiui_white
:FlashSplashmiui_white
color 03
title Flash do Splash Android miui_white 
if exist "%cd%\adb\file\splash\miui_white\splash.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo MsgBox "Ok, looks like everything went well",16,"Flash Success" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
%fastboot% reboot bootloader
echo.
echo Press any key to return
echo.
pause >nul
goto Splashmiui_white
:VerSplashmiui_white
cls
if exist "%cd%\adb\file\splash\miui_white\splash.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return!
echo.
echo.
pause>nul
echo.
echo.
goto Splashmiui_white
:SplashAnonimous
title Splash Android Anonimous  !
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
echo      ├──────┤ 1 ) FLASH DO SPLASH ANDROID Anonimous     │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) DOWNLOAD                              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) DELETE FILE                           │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 4 ) CHECK FILE                            │                                                        │
echo      │      └───────────────────────────────────────────┘                                                        │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
if exist "%cd%\adb\file\splash\Anonimous\splash.img" ( call :cortexto 0a " Ok, it looks like the file exists. " ) else ( call :cortexto 0c "Download the file." )
echo.
echo.
echo.
set nb= 
set /p "nb=Enter the option number you want %username% >"
if '%nb%' == '1' goto FlashSplashAnonimous
if '%nb%' == '2' goto DownSplashAnonimous
if '%nb%' == '3' goto DelSplashAnonimous
if '%nb%' == '4' goto VerSplashAnonimous
if '%nb%' == 'E' goto Splash
if '%nb%' == 'e' goto Splash
goto SplashAnonimous
:DownSplashAnonimous
color 30
title Download Splash Android Anonimous !
if exist "%cd%\adb\file\splash\Anonimous\splash.img" (  echo MsgBox "You already downloaded, now you must flash the file ",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
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
echo      │                       Downloading Splash Android Anonimous ...                                            │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
echo.
mkdir adb\file\splash\Anonimous\
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%SplashAnonimous%', 'adb\file\splash\Anonimous\splash.img') }"
if exist "%cd%\adb\file\splash\Anonimous\splash.img" ( echo. ) else (   echo MsgBox "The file was not downloaded!",16,"Error !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashAnonimous )
echo.
echo MsgBox "Ok, downloaded file",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto SplashAnonimous
:DelSplashAnonimous
title Deleting Splash Android Anonimous 
color 03
cls
if exist "%cd%\adb\file\splash\Anonimous\splash.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashAnonimous )
del adb\file\splash\Anonimous\splash.img
echo MsgBox "Ok, deleted file",16,"Excluir " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto SplashAnonimous
:FlashSplashAnonimous
color 03
title Flash do Splash Android Anonimous 
if exist "%cd%\adb\file\splash\Anonimous\splash.img" ( echo . ) else ( echo MsgBox " Download the file and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
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
echo MsgBox "Ok, looks like everything went well",16,"Flash Success" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
%fastboot% reboot bootloader
echo.
echo Press any key to return
echo.
pause >nul
goto SplashAnonimous
:VerSplashAnonimous
cls
if exist "%cd%\adb\file\splash\Anonimous\splash.img" ( echo.) else ( echo MsgBox "The file has been deleted, there is nothing here.",16,"You already deleted it." >%cd%\adb\wyz.vbs  
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
echo Gave mistake, I do not know exactly what may have happened, but I'm here! I can help you !
echo.
echo.
echo.
echo MsgBox " A friend error has occurred, click ok and try again! ",16,"ERRO " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs  
echo.
echo.
echo Press any key to return
echo.
echo.
pause>nul
echo.
echo.
goto SplashAnonimous
:CheckArb
title Check arb !
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
echo      │           Check arb...                                                                                    │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
%fastboot% getvar anti 
pause >nul 
goto Menu
:: Menu de bootloader
:GotoFastboot
title Menu Reboot !
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
echo      ├──────┤ 1 ) Go to EDL                             │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 2 ) Rename again on FASTBOOT              │                                                        │
echo      │      └───────────────────────────────────────────┤                                                        │
echo      │      ┌───────────────────────────────────────────┤                                                        │
echo      ├──────┤ 3 ) Reboot the system                     │                                                        │
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
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
set nb=
set /p "nb=Enter the option number you want %username% >"
 if '%nb%' == '1' goto GoEdl
 if '%nb%' == '2' goto GoFastboot
 if '%nb%' == '3' goto GoReboot
 if '%nb%' == 'e' goto Menu
 if '%nb%' == 'E' goto Menu
 goto GotoFastboot
:GoEdl
cls
%fastboot% oem edl  || @echo "oem edl error" && goto EdlError
echo MsgBox "Ok, if you turned off the screen do not despair, the EDL mode and anyway.",16,"It's gonna be okay !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GotoFastboot
:EdlError
cls
echo MsgBox "Oops, I couldn't get into EDL, make sure you unlock critical too and try again ... ",16,"It's gonna be okay !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GotoFastboot
:GoFastboot
cls
%fastboot% reboot bootloader  || @echo "reboot bootloader error" && goto FastbootError
echo MsgBox "Ok, I'm doing your device restart on FASTBOOT",16,"It's gonna be okay !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GotoFastboot
:FastbootError
cls
echo MsgBox "Oops, I could not restart in fastboot, try again ...",16,"It's gonna be okay !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GotoFastboot
:GoReboot
cls
%fastboot% reboot || @echo "reboot error" && goto RebootError
echo MsgBox "Ok, now your cell phone will resign.",16,"It's gonna be okay !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GotoFastboot
:RebootError
cls
echo MsgBox "Oops, I could not restart through fastboot, try again.",16,"It's gonna be okay !" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto GotoFastboot
:: Gerador de splash customizado
:GenerateSplash
title Custom Splash Generator
color 03
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │      ┌────────────────────────────────────────────────┐                                                   │
echo      ├──────┤ 1 ) EDIT THE FILES .BMP TO GENERATE THE SPLASH │                                                   │
echo      │      └────────────────────────────────────────────────┤                                                   │
echo      │      ┌────────────────────────────────────────────────┤                                                   │
echo      ├──────┤ 2 ) GENERATE SPLASH CUSTOM                     │                                                   │
echo      │      └────────────────────────────────────────────────┤                                                   │
echo      │      ┌────────────────────────────────────────────────┤                                                   │
echo      ├──────┤ 3 ) CUSTOM SPLASH FLASH                        │                                                   │
echo      │      └────────────────────────────────────────────────┤                                                   │
echo      │      ┌────────────────────────────────────────────────┤                                                   │
echo      ├──────┤ 4 ) DELETE FILE                                │                                                   │
echo      │      └────────────────────────────────────────────────┤                                                   │
echo      │      ┌────────────────────────────────────────────────┤                                                   │
echo      ├──────┤ 5 ) REBOOT SYSTEM                              │                                                   │
echo      │      └────────────────────────────────────────────────┘                                                   │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │                                                               ┌───────────────────────────────────────────┤
echo      └───────────────────────────────────────────────────────────────┤ E ) BACK                                  │
echo                                                                      └───────────────────────────────────────────┘
echo.
echo.
if exist %cd%\adb\file\splash\newsplash\newsplash.img ( call :cortexto 0a "Ok it looks like the file exists " ) else (  call :cortexto 04 "The file has not been created yet." )
echo.
echo.
set nb=
set /p "nb=Enter the option number you want %username% >"
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
if exist %cd%\adb\file\splash\newsplash\newsplash.img ( echo. ) else ( echo MsgBox "The file has been deleted! ",16,"Just create it again." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs )
goto GenerateSplash
:EditBMP
if exist %cd%\adb\file\splash\newsplash\img\1.bmp ( echo. ) else (echo MsgBox "The file has been deleted or never downloaded, I will download it for you",16,"Wait!" >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\2.bmp ( echo. ) else ( echo MsgBox "The file has been deleted or never downloaded, I will download it for you",16,"Wait!" >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\3.bmp ( echo. ) else ( echo MsgBox "The file has been deleted or never downloaded, I will download it for you",16,"Wait!" >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\4.bmp ( echo. ) else ( echo MsgBox "The file has been deleted or never downloaded, I will download it for you",16,"Wait!" >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
start adb\file\splash\newsplash\img\
goto GenerateSplash
:GerSplash
title Criando splash customizado !
if exist %cd%\adb\file\splash\newsplash\empty.img ( echo. ) else (echo MsgBox "The file has been deleted or never downloaded, I will download it for you",16,"Wait!" >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\header.img ( echo. ) else (echo MsgBox "The file has been deleted or never downloaded, I will download it for you",16,"Wait!" >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\1.bmp ( echo. ) else (echo MsgBox "The file has been deleted or never downloaded, I will download it for you",16,"Wait!" >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\2.bmp ( echo. ) else ( echo MsgBox "The file has been deleted or never downloaded, I will download it for you",16,"Wait!" >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\3.bmp ( echo. ) else ( echo MsgBox "The file has been deleted or never downloaded, I will download it for you",16,"Wait!" >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\img\4.bmp ( echo. ) else ( echo MsgBox "The file has been deleted or never downloaded, I will download it for you",16,"Wait!" >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto Download )
if exist %cd%\adb\file\splash\newsplash\newsplash.img (
 echo MsgBox "O arquivo ja existe, exclua o arquivo ja existente ! ",16,"Calma que vai dar certo " >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
goto GenerateSplash  )
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
echo      │           Generating custom splash, note                                                                  │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
echo.
copy /b %cd%\adb\file\splash\newsplash\header.img+%cd%\adb\file\splash\newsplash\img\1.bmp+%cd%\adb\file\splash\newsplash\empty.img+%cd%\adb\file\splash\newsplash\img\2.bmp+%cd%\adb\file\splash\newsplash\img\3.bmp+%cd%\adb\file\splash\newsplash\img\4.bmp+%cd%\adb\file\splash\newsplash\empty.img %cd%\adb\file\splash\newsplash\newsplash.img
echo.
echo.
if exist %cd%\adb\file\splash\newsplash\newsplash.img (
 echo MsgBox "The file was created, how cool! ",16,"TOOOOOOOPPPPP " >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
) else ( echo MsgBox "The file was not created, there is nothing here.",16,"Did you remove the file?" >%cd%\adb\wyz.vbs  
start %cd%\wyz.vbs
)
pause>nul
goto GenerateSplash
:FlashNewSplash
if exist %cd%\adb\file\splash\newsplash\newsplash.img ( echo. ) else ( echo MsgBox "There's nothing here, you first need to create the custom file. Option ( 2 )",16,"Create the file " >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs 
goto GenerateSplash )
title Custom splash flash
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
echo      │           Custom splash flash, please wait                                                                │
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
title Download the necessary files to customize your splash.
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
echo      │                          Downloading Splash Customizer Noob Master                                        │
echo      │                                                                                                           │
echo      │               I'll let you know when Download finishes, just wait and relax .                             │
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
if exist %cd%\adb\file\splash\newsplash\empty.img ( echo Ok, arquivos baixados. ) else ( echo MsgBox "The files were not downloaded. ",16,"Try again..." >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs )
echo MsgBox "Ok, downloaded files, now reselect the option to generate your splash",16,"It's gonna be okay" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
echo.
goto GenerateSplash