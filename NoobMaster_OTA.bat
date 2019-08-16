::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFAlbSBaLAE+/Fb4I5/jHweWIoGAcR/Y6arCKlL2NL4A=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJgZksaHWQ=
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATExk00OhJTQ0SyNXm/FfUY6ajI5uaRoy0=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAlbSBaLAE+/Fb4I5/jHweWIoGAcR/Y6arD07pXAJfgWig==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
:: Desabilita função echo /basica em todo arquivo batch
@echo off
:: Seta titulo do arquivo no prompt de comandos
title Noob Master v 7.0.0.5 Beta
:: Função que corrige letras e acentos
chcp 65001
cls
set server=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master
:: Seta valor do tamanho da tela 
mode 120,35
setlocal EnableDelayedExpansion
:: Seta adb e fastboot 
pushd "%~dp0"
set adb="%cd%\adb\adb.exe"
set fastboot="%cd%\adb\fastboot.exe"
:AttOta
title Atualizando Noob Master, aguarde !
color 30
cls
echo.
echo          █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█   
echo          █   █  ▄  ▄▄    ▄▄   ▄▄▄     █▄   ▄█  ▄▄   ▄▄▄▄ ▄▄▄▄▄ ▄▄▄  ▄▄▄▄    █   
echo          █   █▀▄█ █  █  █  █  █▄▄▀    █ ▀▄▀ █ █▄▄█  █▄▄▄   █   █■■■  █▄▄▀   █  
echo      ┌───█   █  █ ▀▄▄▀  ▀▄▄▀  █▄▄▀    █     █ █  █  ▄▄▄█   █   █▄▄▄▄ █ ▀▄▄  █  ┌─────────────────────────────────┐
echo      │   █                                                                  █  │  bY: Rodrigo Pires da Silva     │
echo      │   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  └─────────────────────────────────┤
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      │           Atualizando o Noob Master, aguarde...                                                           │
echo      │           Caso apareçam linhas vermelhas abaixo, feche o Noob Master principal.                           │
echo      │                                                                                                           │
echo      │                                                                                                           │
echo      └───────────────────────────────────────────────────────────────────────────────────────────────────────────┘
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%/NoobMaster.exe', 'NoobMaster.exe') }"
Powershell -command "& { (New-Object Net.WebClient).DownloadFile('%server%/NoobMaster.exe', 'NoobMasterr.exe') }"
echo.
echo.
echo.
if exist "%cd%\NoobMasterr.exe" ( echo. ) else (   echo MsgBox "Deu erro na parada, o arquivo nao foi baixado! ",16,"Deu erro, vishhh" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
goto Menu )
echo.
echo MsgBox "Ok, Noob Master atualizado ",16,"Vai canta seu bosta" >%cd%\adb\wyz.vbs  
start %cd%\adb\wyz.vbs
del %cd%\NoobMaster.exe
ren NoobMasterr.exe NoobMaster.exe
timout 10 >nul 
start %cd%\NoobMaster.exe
goto :eof