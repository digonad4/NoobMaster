@echo off
REM ============================================================================
REM  NOOB MASTER v7.0.0.5 - OTIMIZADO PARA WINDOWS 11
REM  Versão refatorada com melhorias de performance e manutenibilidade
REM  Desenvolvido por: Rodrigo Pires da Silva
REM  Otimizado por: GitHub Copilot
REM ============================================================================

setlocal enabledelayedexpansion
cls

REM ============================================================================
REM  CONFIGURAÇÕES INICIAIS
REM ============================================================================

chcp 65001 >nul 2>&1
title Noob Master v7.0.0.5 - Windows 11 Optimized
color 03
mode 120,35

REM Definir diretório base
set "BASE_DIR=%~dp0"
set "ADB_DIR=%BASE_DIR%adb"
set "STOCK_DIR=%ADB_DIR%\stock"
set "7ZIP_DIR=%ADB_DIR%\7Zip"
set "LOG_FILE=%BASE_DIR%noobmaster_log.txt"

REM Executáveis
set "ADB_EXE=%ADB_DIR%\adb.exe"
set "FASTBOOT_EXE=%ADB_DIR%\fastboot.exe"
set "7ZIP_EXE=%7ZIP_DIR%\7za.exe"

REM Informações da versão e autor
set "APP_NAME=Noob Master"
set "APP_VERSION=7.0.0.5"
set "AUTHOR=Rodrigo Pires da Silva"

REM ============================================================================
REM  CONFIGURAÇÕES DE LINKS E URLs
REM ============================================================================

REM URLs Principais
set "SERVER=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/"
set "SERVER_STOCK=http://bigota.d.miui.com/V10.0.9.0.PDIMIXM/jasmine_global_images_V10.0.9.0.PDIMIXM_20190513.0000.00_9.0_bbaa8993fe.tgz"

REM TWRP Jasmine
set "TWRP_JASMINE_323=!SERVER!adb/file/twrp/jasmine/3.2.3-0.img"
set "TWRP_JASMINE_330=!SERVER!adb/file/twrp/jasmine/3.3.0-0.img"
set "TWRP_JASMINE_331=!SERVER!adb/file/twrp/jasmine/3.3.1-0.img"

REM TWRP Wayne
set "TWRP_WAYNE_323=!SERVER!adb/file/twrp/wayne/3.2.3-0.img"
set "TWRP_WAYNE_3231=!SERVER!adb/file/twrp/wayne/3.2.3-1.img"
set "TWRP_WAYNE_330=!SERVER!adb/file/twrp/wayne/3.3.0-0.img"
set "TWRP_WAYNE_331=!SERVER!adb/file/twrp/wayne/3.3.1.img"

REM Patched Boot
set "PATCHED_808=!SERVER!adb/file/patched/10.0.8.0/10.0.8.0.img"
set "PATCHED_809=!SERVER!adb/file/patched/10.0.9.0/10.0.9.0.img"
set "PATCHED_8010=!SERVER!adb/file/patched/10.0.10.0/10.0.10.0.img"
set "PATCHED_8012=!SERVER!adb/file/patched/10.0.12.0/10.0.12.0.img"
set "PATCHED_8013=!SERVER!adb/file/patched/10.0.13.0/10.0.13.0.img"

REM Stock Boot
set "STOCK_BOOT_808=!SERVER!adb/file/stockboot/10.0.8.0/10.0.8.0.img"
set "STOCK_BOOT_809=!SERVER!adb/file/stockboot/10.0.9.0/10.0.9.0.img"
set "STOCK_BOOT_8010=!SERVER!adb/file/stockboot/10.0.10.0/10.0.10.0.img"
set "STOCK_BOOT_8012=!SERVER!adb/file/stockboot/10.0.12.0/10.0.12.0.img"
set "STOCK_BOOT_8013=!SERVER!adb/file/stockboot/10.0.13.0/10.0.13.0.img"

REM Gapps e Splash
set "GAPPS_MICRO=https://phoenixnap.dl.sourceforge.net/project/noobmaster/NoobMaster/adb/file/gapps/gapps.zip"
set "SPLASH_MIUI=!SERVER!adb/file/splash/miui/splash.img"
set "SPLASH_ONE=!SERVER!adb/file/splash/one/splash.img"
set "SPLASH_ANONYMOUS=!SERVER!adb/file/splash/anonimous/splash.img"
set "SPLASH_MIUI_WHITE=!SERVER!adb/file/splash/miui_white/splash.img"

REM Orange Fox
set "ORANGE_FOX=!SERVER!adb/file/Orange/unnoficial.img"

REM ============================================================================
REM  FUNÇÕES UTILITÁRIAS
REM ============================================================================

REM Função para registrar log
:logMessage
set "log_msg=%1"
echo [%date% %time%] !log_msg! >> "!LOG_FILE!"
goto :eof

REM Função para exibir erro com logging
:showError
set "error_msg=%1"
call :logMessage "ERRO: !error_msg!"
color 40
cls
echo.
call :drawHeader
echo.
echo      ^| ERRO: !error_msg!
echo      ^|
echo      ^| Se o problema persistir, verifique o log em:
echo      ^| !LOG_FILE!
echo      ^|
call :drawFooter
echo.
pause >nul
goto :eof

REM Função para exibir sucesso
:showSuccess
set "success_msg=%1"
call :logMessage "SUCESSO: !success_msg!"
color 02
cls
echo.
call :drawHeader
echo.
echo      ^| SUCESSO: !success_msg!
echo      ^|
call :drawFooter
echo.
timeout /t 3 /nobreak >nul
goto :eof

REM Função para desenhar cabeçalho
:drawHeader
echo      █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
echo      █  %APP_NAME% v%APP_VERSION% - Windows 11 Otimizado
echo      █  by: %AUTHOR%
echo      ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
goto :eof

REM Função para desenhar rodapé
:drawFooter
echo      ┌────────────────────────────────────────────────────────────┐
echo      │  Pressione qualquer tecla para voltar
echo      └────────────────────────────────────────────────────────────┘
goto :eof

REM Função para validar ferramentas necessárias
:validateTools
cls
color 0E
echo.
echo      ██████████████████████████████████████████████████████████████
echo      █
echo      █  Validando ferramentas necessárias...
echo      █
echo      ██████████████████████████████████████████████████████████████
echo.

set "tools_ok=1"

if not exist "%ADB_DIR%" (
    echo [!] Diretório adb não encontrado
    echo [*] Será criado e as ferramentas serão baixadas
    call :downloadAdbTools
    set "tools_ok=0"
)

if not exist "%ADB_EXE%" (
    echo [!] adb.exe não encontrado
    set "tools_ok=0"
)

if not exist "%FASTBOOT_EXE%" (
    echo [!] fastboot.exe não encontrado
    set "tools_ok=0"
)

if not exist "%ADB_DIR%\AdbWinApi.dll" (
    echo [!] AdbWinApi.dll não encontrado
    set "tools_ok=0"
)

if not exist "%ADB_DIR%\AdbWinUsbApi.dll" (
    echo [!] AdbWinUsbApi.dll não encontrado
    set "tools_ok=0"
)

if %tools_ok% equ 0 (
    echo.
    echo [*] Iniciando download das ferramentas necessárias...
    timeout /t 2 /nobreak >nul
    call :downloadAdbTools
)

echo.
echo [OK] Validação concluída!
timeout /t 2 /nobreak >nul
goto :eof

REM Função para baixar ferramentas ADB
:downloadAdbTools
cls
color 0E
echo.
echo      ██████████████████████████████████████████████████████████████
echo      █
echo      █  DOWNLOAD DE FERRAMENTAS ADB
echo      █
echo      ██████████████████████████████████████████████████████████████
echo.

mkdir "%ADB_DIR%" 2>nul
mkdir "%ADB_DIR%\7Zip" 2>nul
mkdir "%STOCK_DIR%" 2>nul

echo [*] Baixando adb.exe...
powershell -NoProfile -Command ^
    "try { ^
        $ProgressPreference = 'SilentlyContinue'; ^
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; ^
        $url = '!SERVER!adb/adb.exe'; ^
        $output = '!ADB_EXE!'; ^
        Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing; ^
        Write-Host '[OK] adb.exe baixado'; ^
    } catch { ^
        Write-Host '[ERRO] Falha no download de adb.exe'; ^
        exit 1; ^
    }" 2>nul

echo [*] Baixando fastboot.exe...
powershell -NoProfile -Command ^
    "try { ^
        $ProgressPreference = 'SilentlyContinue'; ^
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; ^
        $url = '!SERVER!adb/fastboot.exe'; ^
        $output = '!FASTBOOT_EXE!'; ^
        Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing; ^
        Write-Host '[OK] fastboot.exe baixado'; ^
    } catch { ^
        Write-Host '[ERRO] Falha no download de fastboot.exe'; ^
        exit 1; ^
    }" 2>nul

echo [*] Baixando AdbWinApi.dll...
powershell -NoProfile -Command ^
    "try { ^
        $ProgressPreference = 'SilentlyContinue'; ^
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; ^
        $url = '!SERVER!adb/AdbWinApi.dll'; ^
        $output = '%ADB_DIR%\AdbWinApi.dll'; ^
        Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing; ^
        Write-Host '[OK] AdbWinApi.dll baixado'; ^
    } catch { ^
        Write-Host '[ERRO] Falha no download'; ^
        exit 1; ^
    }" 2>nul

echo [*] Baixando AdbWinUsbApi.dll...
powershell -NoProfile -Command ^
    "try { ^
        $ProgressPreference = 'SilentlyContinue'; ^
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; ^
        $url = '!SERVER!adb/AdbWinUsbApi.dll'; ^
        $output = '%ADB_DIR%\AdbWinUsbApi.dll'; ^
        Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing; ^
        Write-Host '[OK] AdbWinUsbApi.dll baixado'; ^
    } catch { ^
        Write-Host '[ERRO] Falha no download'; ^
        exit 1; ^
    }" 2>nul

echo.
echo [OK] Download de ferramentas concluído!
timeout /t 2 /nobreak >nul
goto :eof

REM Função para download com progresso
:downloadFile
set "download_url=%1"
set "output_file=%2"
set "file_name=%~nx2"

echo.
echo [*] Baixando: !file_name!
echo.

powershell -NoProfile -Command ^
    "try { ^
        $ProgressPreference = 'Continue'; ^
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; ^
        Invoke-WebRequest -Uri '!download_url!' -OutFile '!output_file!' -UseBasicParsing; ^
        Write-Host '[OK] Download concluído com sucesso'; ^
    } catch { ^
        Write-Host '[ERRO] Falha no download: ' $_.Exception.Message; ^
        exit 1; ^
    }" 2>&1

if errorlevel 1 (
    call :logMessage "ERRO: Falha ao baixar !file_name!"
    exit /b 1
) else (
    call :logMessage "OK: !file_name! baixado com sucesso"
    exit /b 0
)

:eof

REM Função para verificar arquivos necessários
:checkFiles
set "check_type=%1"

if "%check_type%"=="stock" (
    if not exist "%STOCK_DIR%\" mkdir "%STOCK_DIR%"
    
    if not exist "%STOCK_DIR%\system.img" (
        color 04
        echo [!] Arquivo system.img não encontrado
        exit /b 1
    )
    
    if not exist "%STOCK_DIR%\vendor.img" (
        color 04
        echo [!] Arquivo vendor.img não encontrado
        exit /b 1
    )
    
    exit /b 0
)

if "%check_type%"=="7zip" (
    if not exist "%7ZIP_DIR%\" (
        echo Baixando ferramentas de extração...
        call :download7Zip
    )
    exit /b 0
)

goto :eof

REM Função para baixar 7Zip
:download7Zip
mkdir "%7ZIP_DIR%" 2>nul
mkdir "%7ZIP_DIR%\Far" 2>nul
mkdir "%7ZIP_DIR%\x64" 2>nul

echo [*] Baixando 7Zip...
powershell -NoProfile -Command ^
    "try { ^
        $ProgressPreference = 'SilentlyContinue'; ^
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; ^
        $files = @( ^
            @{'url'='!SERVER!adb/7Zip/7za.exe'; 'out'='%7ZIP_DIR%\7za.exe'}, ^
            @{'url'='!SERVER!adb/7Zip/7za.dll'; 'out'='%7ZIP_DIR%\7za.dll'}, ^
            @{'url'='!SERVER!adb/7Zip/7zxa.dll'; 'out'='%7ZIP_DIR%\7zxa.dll'} ^
        ); ^
        foreach (\$file in \$files) { ^
            Invoke-WebRequest -Uri \$file.url -OutFile \$file.out -UseBasicParsing; ^
        } ^
        Write-Host '[OK] 7Zip baixado'; ^
    } catch { ^
        Write-Host '[ERRO] Falha no download de 7Zip'; ^
        exit 1; ^
    }" 2>nul

goto :eof

REM ============================================================================
REM  MENU PRINCIPAL
REM ============================================================================

:mainMenu
color 03
cls
echo.
call :drawHeader
echo.
echo      ┌─ MENU PRINCIPAL ─────────────────────────────────────────┐
echo      ^|                                                            ^|
echo      ^|  1) OPÇÕES DE BOOTLOADER                                  ^|
echo      ^|  2) OPÇÕES DE ERASE (SYSTEM/VENDOR)                       ^|
echo      ^|  3) INSTALAÇÃO DA STOCK ROM (A2/6X)                       ^|
echo      ^|  4) TWRP (A2/6X)                                          ^|
echo      ^|  5) PATCHED BOOT (ROOT STOCK ROM)                         ^|
echo      ^|  6) STOCK BOOT (REMOVE ROOT STOCK ROM)                    ^|
echo      ^|  7) GAPPS MICRO 01/2019                                   ^|
echo      ^|  8) FLASH SPLASH (STOCK/CUSTOM)                           ^|
echo      ^|  9) CHECAR ARB (ANTI ROLL BACK)                           ^|
echo      ^|  10) MENU REBOOT/BOOTLOADER (FASTBOOT)                    ^|
echo      ^|  11) CRIAR SEU PRÓPRIO SPLASH                             ^|
echo      ^|  A) ATUALIZAR O NOOB MASTER                               ^|
echo      ^|  V) VERIFICAR RAIZ DE ARQUIVOS                            ^|
echo      ^|  E) SAIR                                                  ^|
echo      ^|                                                            ^|
echo      ^|  Dispositivos suportados: MI A2 / 6X                       ^|
echo      ^|                                                            ^|
echo      └──────────────────────────────────────────────────────────┘
echo.
set /p "choice=Digite sua opção: "

if /i "%choice%"=="1" goto bootloaderMenu
if /i "%choice%"=="2" goto eraseMenu
if /i "%choice%"=="3" goto stockRomMenu
if /i "%choice%"=="4" goto twrpMenu
if /i "%choice%"=="5" goto patchedBootMenu
if /i "%choice%"=="6" goto stockBootMenu
if /i "%choice%"=="7" goto gappsMenu
if /i "%choice%"=="8" goto splashMenu
if /i "%choice%"=="9" goto checkArbMenu
if /i "%choice%"=="10" goto fastbootMenu
if /i "%choice%"=="11" goto generateSplashMenu
if /i "%choice%"=="a" goto updateNoobMaster
if /i "%choice%"=="v" goto verifyFiles
if /i "%choice%"=="e" exit /b 0

goto mainMenu

REM ============================================================================
REM  MENU BOOTLOADER
REM ============================================================================

:bootloaderMenu
color 03
cls
echo.
call :drawHeader
echo.
echo      ┌─ MENU BOOTLOADER ────────────────────────────────────────┐
echo      ^|                                                            ^|
echo      ^|  1) Bloquear bootloader                                   ^|
echo      ^|  2) Desbloquear OEM                                       ^|
echo      ^|  3) Desbloquear critical                                  ^|
echo      ^|  4) Reboot system                                         ^|
echo      ^|  E) Voltar                                                ^|
echo      ^|                                                            ^|
echo      └──────────────────────────────────────────────────────────┘
echo.
set /p "choice=Digite sua opção: "

if "%choice%"=="1" goto lockBootloader
if "%choice%"=="2" goto unlockOEM
if "%choice%"=="3" goto unlockCritical
if "%choice%"=="4" goto rebootSystem
if /i "%choice%"=="e" goto mainMenu

goto bootloaderMenu

:lockBootloader
color 03
cls
echo Bloqueando bootloader...
"%FASTBOOT_EXE%" oem lock
if errorlevel 1 (
    call :showError "Falha ao bloquear bootloader"
    goto bootloaderMenu
) else (
    call :showSuccess "Bootloader bloqueado com sucesso"
    goto bootloaderMenu
)

:unlockOEM
color 03
cls
echo Desbloqueando OEM...
"%FASTBOOT_EXE%" oem unlock
if errorlevel 1 (
    call :showError "Falha ao desbloquear OEM"
    goto bootloaderMenu
) else (
    call :showSuccess "OEM desbloqueado com sucesso"
    goto bootloaderMenu
)

:unlockCritical
color 03
cls
echo Desbloqueando critical...
"%FASTBOOT_EXE%" flashing unlock_critical
if errorlevel 1 (
    call :showError "Falha ao desbloquear critical"
    goto bootloaderMenu
) else (
    call :showSuccess "Critical desbloqueado com sucesso"
    goto bootloaderMenu
)

:rebootSystem
"%FASTBOOT_EXE%" reboot
goto bootloaderMenu

REM ============================================================================
REM  MENU ERASE
REM ============================================================================

:eraseMenu
color 03
cls
echo.
call :drawHeader
echo.
echo      ┌─ MENU ERASE ─────────────────────────────────────────────┐
echo      ^|                                                            ^|
echo      ^|  1) ERASE SYSTEM JASMINE                                  ^|
echo      ^|  2) ERASE VENDOR JASMINE                                  ^|
echo      ^|  3) ERASE SYSTEM WAYNE                                    ^|
echo      ^|  4) ERASE VENDOR WAYNE                                    ^|
echo      ^|  5) ERASE USER DATA                                       ^|
echo      ^|  6) ERASE CACHE                                           ^|
echo      ^|  7) APAGAR TODOS OS DADOS                                 ^|
echo      ^|  8) Reboot System                                         ^|
echo      ^|  E) Voltar                                                ^|
echo      ^|                                                            ^|
echo      └──────────────────────────────────────────────────────────┘
echo.
set /p "choice=Digite sua opção: "

if "%choice%"=="1" goto eraseSystemJasmine
if "%choice%"=="2" goto eraseVendorJasmine
if "%choice%"=="3" goto eraseSystemWayne
if "%choice%"=="4" goto eraseVendorWayne
if "%choice%"=="5" goto eraseUserData
if "%choice%"=="6" goto eraseCache
if "%choice%"=="7" goto eraseAll
if "%choice%"=="8" goto rebootSystem
if /i "%choice%"=="e" goto mainMenu

goto eraseMenu

:eraseSystemJasmine
cls
echo Apagando system A e B (Jasmine)...
"%FASTBOOT_EXE%" erase system_a
"%FASTBOOT_EXE%" erase system_b
call :showSuccess "System Jasmine apagado"
goto eraseMenu

:eraseVendorJasmine
cls
echo Apagando vendor A e B (Jasmine)...
"%FASTBOOT_EXE%" erase vendor_a
"%FASTBOOT_EXE%" erase vendor_b
call :showSuccess "Vendor Jasmine apagado"
goto eraseMenu

:eraseSystemWayne
cls
echo Apagando system (Wayne)...
"%FASTBOOT_EXE%" erase system
call :showSuccess "System Wayne apagado"
goto eraseMenu

:eraseVendorWayne
cls
echo Apagando vendor (Wayne)...
"%FASTBOOT_EXE%" erase vendor
call :showSuccess "Vendor Wayne apagado"
goto eraseMenu

:eraseUserData
cls
echo Apagando dados do usuário...
"%FASTBOOT_EXE%" erase userdata
call :showSuccess "Dados do usuário apagados"
goto eraseMenu

:eraseCache
cls
echo Apagando cache...
"%FASTBOOT_EXE%" erase cache
call :showSuccess "Cache apagado"
goto eraseMenu

:eraseAll
cls
echo Apagando TODOS os dados...
"%FASTBOOT_EXE%" -w
call :showSuccess "Todos os dados foram apagados"
goto eraseMenu

REM ============================================================================
REM  MENU STOCK ROM
REM ============================================================================

:stockRomMenu
color 03
cls
echo.
call :drawHeader
echo.
echo      ┌─ MENU STOCK ROM v10.0.9.0 OFFICIAL ──────────────────────┐
echo      ^|                                                            ^|
echo      ^|  1) DOWNLOAD DA STOCK (v10.0.9.0)                        ^|
echo      ^|  2) DESCOMPACTAR ARQUIVO                                 ^|
echo      ^|  3) FLASH DA STOCK ROM                                   ^|
echo      ^|  4) VERIFICAR ARQUIVOS                                   ^|
echo      ^|  5) ABRIR PASTA DO ARQUIVO STOCK ROM                     ^|
echo      ^|  6) REBOOT SYSTEM                                        ^|
echo      ^|  E) Voltar                                               ^|
echo      ^|                                                            ^|
echo      └──────────────────────────────────────────────────────────┘
echo.

if exist "%STOCK_DIR%\jasmine.tgz" (
    color 0A
    echo [OK] Arquivo stock ROM encontrado
) else (
    color 0C
    echo [FALTA] Stock ROM não baixada
)
echo.

if exist "%STOCK_DIR%\system.img" (
    color 0A
    echo [OK] Arquivos extraídos
) else (
    color 0C
    echo [FALTA] Stock ROM não extraída
)
echo.
color 03

set /p "choice=Digite sua opção: "

if "%choice%"=="1" goto downloadStockRom
if "%choice%"=="2" goto extractStockRom
if "%choice%"=="3" goto flashStockRom
if "%choice%"=="4" goto verifyStockFiles
if "%choice%"=="5" goto openStockFolder
if "%choice%"=="6" goto rebootSystem
if /i "%choice%"=="e" goto mainMenu

goto stockRomMenu

:downloadStockRom
if exist "%STOCK_DIR%\jasmine.tgz" (
    color 0C
    cls
    echo Stock ROM já foi baixada!
    echo.
    pause >nul
    goto stockRomMenu
)

mkdir "%STOCK_DIR%" 2>nul
color 0E
cls
echo.
echo Baixando Stock ROM (pode levar vários minutos)...
echo URL: !SERVER_STOCK!
echo.
call :downloadFile "!SERVER_STOCK!" "%STOCK_DIR%\jasmine.tgz"
if errorlevel 1 (
    call :showError "Falha ao baixar Stock ROM"
    goto stockRomMenu
) else (
    call :showSuccess "Stock ROM baixada com sucesso"
    goto stockRomMenu
)

:extractStockRom
call :checkFiles 7zip

if not exist "%STOCK_DIR%\jasmine.tgz" (
    call :showError "Arquivo jasmine.tgz não encontrado"
    goto stockRomMenu
)

color 0E
cls
echo Extraindo Stock ROM (pode levar alguns minutos)...
echo.
"%7ZIP_EXE%" e -o"%STOCK_DIR%" -bt -aoa "%STOCK_DIR%\jasmine.tgz" >nul 2>&1
"%7ZIP_EXE%" e -o"%STOCK_DIR%" -bt -aoa "%STOCK_DIR%\jasmine.tar" >nul 2>&1

call :showSuccess "Stock ROM extraída com sucesso"
goto stockRomMenu

:verifyStockFiles
color 03
cls
echo.
call :drawHeader
echo.
echo      Verificando arquivos da Stock ROM...
echo.

set "files_ok=1"
set "required_files=system.img vendor.img persist.img bluetooth.img devcfg.img dsp.img modem.img xbl.img pmic.img rpm.img tz.img boot.img"

for %%F in (%required_files%) do (
    if exist "%STOCK_DIR%\%%F" (
        color 0A
        echo [OK] %%F
    ) else (
        color 0C
        echo [FALTA] %%F
        set "files_ok=0"
    )
    color 03
)

echo.
if %files_ok% equ 1 (
    color 0A
    echo Todos os arquivos necessários encontrados!
) else (
    color 0C
    echo Alguns arquivos estão faltando!
)
color 03
echo.
pause >nul
goto stockRomMenu

:flashStockRom
call :checkFiles stock
if errorlevel 1 (
    call :showError "Arquivos necessários não encontrados"
    goto stockRomMenu
)

color 0E
cls
echo Iniciando Flash da Stock ROM...
echo.

REM Erase
echo [*] Apagando partições...
"%FASTBOOT_EXE%" erase system_a >nul 2>&1
"%FASTBOOT_EXE%" erase system_b >nul 2>&1
"%FASTBOOT_EXE%" erase vendor_a >nul 2>&1
"%FASTBOOT_EXE%" erase vendor_b >nul 2>&1
"%FASTBOOT_EXE%" erase cache >nul 2>&1
"%FASTBOOT_EXE%" erase userdata >nul 2>&1
"%FASTBOOT_EXE%" -w >nul 2>&1

REM Flash de partições críticas
echo [*] Flasheando partições...
"%FASTBOOT_EXE%" flash bluetooth_a "%STOCK_DIR%\bluetooth.img" >nul 2>&1
"%FASTBOOT_EXE%" flash bluetooth_b "%STOCK_DIR%\bluetooth.img" >nul 2>&1
"%FASTBOOT_EXE%" flash devcfg_a "%STOCK_DIR%\devcfg.img" >nul 2>&1
"%FASTBOOT_EXE%" flash devcfg_b "%STOCK_DIR%\devcfg.img" >nul 2>&1
"%FASTBOOT_EXE%" flash dsp_a "%STOCK_DIR%\dsp.img" >nul 2>&1
"%FASTBOOT_EXE%" flash dsp_b "%STOCK_DIR%\dsp.img" >nul 2>&1
"%FASTBOOT_EXE%" flash modem_a "%STOCK_DIR%\modem.img" >nul 2>&1
"%FASTBOOT_EXE%" flash modem_b "%STOCK_DIR%\modem.img" >nul 2>&1
"%FASTBOOT_EXE%" flash xbl_a "%STOCK_DIR%\xbl.img" >nul 2>&1
"%FASTBOOT_EXE%" flash xbl_b "%STOCK_DIR%\xbl.img" >nul 2>&1
"%FASTBOOT_EXE%" flash pmic_a "%STOCK_DIR%\pmic.img" >nul 2>&1
"%FASTBOOT_EXE%" flash pmic_b "%STOCK_DIR%\pmic.img" >nul 2>&1
"%FASTBOOT_EXE%" flash rpm_a "%STOCK_DIR%\rpm.img" >nul 2>&1
"%FASTBOOT_EXE%" flash rpm_b "%STOCK_DIR%\rpm.img" >nul 2>&1
"%FASTBOOT_EXE%" flash tz_a "%STOCK_DIR%\tz.img" >nul 2>&1
"%FASTBOOT_EXE%" flash tz_b "%STOCK_DIR%\tz.img" >nul 2>&1
"%FASTBOOT_EXE%" flash boot_a "%STOCK_DIR%\boot.img" >nul 2>&1
"%FASTBOOT_EXE%" flash boot_b "%STOCK_DIR%\boot.img" >nul 2>&1
"%FASTBOOT_EXE%" flash system_a "%STOCK_DIR%\system.img" >nul 2>&1
"%FASTBOOT_EXE%" flash system_b "%STOCK_DIR%\system.img" >nul 2>&1
"%FASTBOOT_EXE%" flash vendor_a "%STOCK_DIR%\vendor.img" >nul 2>&1
"%FASTBOOT_EXE%" flash vendor_b "%STOCK_DIR%\vendor.img" >nul 2>&1

"%FASTBOOT_EXE%" reboot-bootloader >nul 2>&1
"%FASTBOOT_EXE%" -w >nul 2>&1
"%FASTBOOT_EXE%" reboot >nul 2>&1

call :showSuccess "Stock ROM flasheada com sucesso!"
goto stockRomMenu

:openStockFolder
explorer "%STOCK_DIR%"
goto stockRomMenu

REM ============================================================================
REM  MENU TWRP
REM ============================================================================

:twrpMenu
color 03
cls
echo.
call :drawHeader
echo.
echo      ┌─ MENU TWRP ──────────────────────────────────────────────┐
echo      ^|                                                            ^|
echo      ^|  JASMINE (MI A2)                                         ^|
echo      ^|    1) TWRP 3.2.3-0                                       ^|
echo      ^|    2) TWRP 3.3.0-0                                       ^|
echo      ^|    3) TWRP 3.3.1-0                                       ^|
echo      ^|                                                            ^|
echo      ^|  WAYNE (MI 6X)                                           ^|
echo      ^|    4) TWRP 3.2.3-0                                       ^|
echo      ^|    5) TWRP 3.2.3-1                                       ^|
echo      ^|    6) TWRP 3.3.0-0                                       ^|
echo      ^|    7) TWRP 3.3.1                                         ^|
echo      ^|                                                            ^|
echo      ^|  8) Reboot Bootloader                                    ^|
echo      ^|  E) Voltar                                               ^|
echo      ^|                                                            ^|
echo      └──────────────────────────────────────────────────────────┘
echo.
set /p "choice=Digite sua opção: "

if "%choice%"=="1" call :flashTWRP "!TWRP_JASMINE_323!" "TWRP 3.2.3-0 Jasmine"
if "%choice%"=="2" call :flashTWRP "!TWRP_JASMINE_330!" "TWRP 3.3.0-0 Jasmine"
if "%choice%"=="3" call :flashTWRP "!TWRP_JASMINE_331!" "TWRP 3.3.1-0 Jasmine"
if "%choice%"=="4" call :flashTWRP "!TWRP_WAYNE_323!" "TWRP 3.2.3-0 Wayne"
if "%choice%"=="5" call :flashTWRP "!TWRP_WAYNE_3231!" "TWRP 3.2.3-1 Wayne"
if "%choice%"=="6" call :flashTWRP "!TWRP_WAYNE_330!" "TWRP 3.3.0-0 Wayne"
if "%choice%"=="7" call :flashTWRP "!TWRP_WAYNE_331!" "TWRP 3.3.1 Wayne"
if "%choice%"=="8" "%FASTBOOT_EXE%" reboot-bootloader
if /i "%choice%"=="e" goto mainMenu

goto twrpMenu

:flashTWRP
setlocal enabledelayedexpansion
set "twrp_url=%1"
set "twrp_name=%2"
set "twrp_file=%ADB_DIR%\!twrp_name:~0,8!.img"

color 0E
cls
echo Baixando !twrp_name!...
call :downloadFile "!twrp_url!" "!twrp_file!"

if errorlevel 1 (
    call :showError "Falha ao baixar !twrp_name!"
    endlocal
    goto twrpMenu
) else (
    echo Flasheando !twrp_name!...
    "%FASTBOOT_EXE%" flash recovery "!twrp_file!" >nul 2>&1
    call :showSuccess "!twrp_name! flasheada com sucesso"
    endlocal
    goto twrpMenu
)

REM ============================================================================
REM  MENU PATCHED BOOT
REM ============================================================================

:patchedBootMenu
color 03
cls
echo.
call :drawHeader
echo.
echo      ┌─ PATCHED BOOT (ROOT) ────────────────────────────────────┐
echo      ^|                                                            ^|
echo      ^|  1) Patched Boot 10.0.8.0                                ^|
echo      ^|  2) Patched Boot 10.0.9.0                                ^|
echo      ^|  3) Patched Boot 10.0.10.0                               ^|
echo      ^|  4) Patched Boot 10.0.12.0                               ^|
echo      ^|  5) Patched Boot 10.0.13.0                               ^|
echo      ^|  E) Voltar                                               ^|
echo      ^|                                                            ^|
echo      └──────────────────────────────────────────────────────────┘
echo.
set /p "choice=Digite sua opção: "

if "%choice%"=="1" call :flashPatchedBoot "!PATCHED_808!" "10.0.8.0"
if "%choice%"=="2" call :flashPatchedBoot "!PATCHED_809!" "10.0.9.0"
if "%choice%"=="3" call :flashPatchedBoot "!PATCHED_8010!" "10.0.10.0"
if "%choice%"=="4" call :flashPatchedBoot "!PATCHED_8012!" "10.0.12.0"
if "%choice%"=="5" call :flashPatchedBoot "!PATCHED_8013!" "10.0.13.0"
if /i "%choice%"=="e" goto mainMenu

goto patchedBootMenu

:flashPatchedBoot
setlocal enabledelayedexpansion
set "patched_url=%1"
set "patched_version=%2"
set "patched_file=%ADB_DIR%\patched_!patched_version!.img"

color 0E
cls
echo Baixando Patched Boot !patched_version!...
call :downloadFile "!patched_url!" "!patched_file!"

if errorlevel 1 (
    call :showError "Falha ao baixar Patched Boot"
    endlocal
    goto patchedBootMenu
) else (
    echo Flasheando Patched Boot...
    "%FASTBOOT_EXE%" flash boot_a "!patched_file!" >nul 2>&1
    "%FASTBOOT_EXE%" flash boot_b "!patched_file!" >nul 2>&1
    call :showSuccess "Patched Boot !patched_version! flasheado com sucesso"
    endlocal
    goto patchedBootMenu
)

REM ============================================================================
REM  MENU STOCK BOOT
REM ============================================================================

:stockBootMenu
color 03
cls
echo.
call :drawHeader
echo.
echo      ┌─ STOCK BOOT (REMOVE ROOT) ───────────────────────────────┐
echo      ^|                                                            ^|
echo      ^|  1) Stock Boot 10.0.8.0                                  ^|
echo      ^|  2) Stock Boot 10.0.9.0                                  ^|
echo      ^|  3) Stock Boot 10.0.10.0                                 ^|
echo      ^|  4) Stock Boot 10.0.12.0                                 ^|
echo      ^|  5) Stock Boot 10.0.13.0                                 ^|
echo      ^|  E) Voltar                                               ^|
echo      ^|                                                            ^|
echo      └──────────────────────────────────────────────────────────┘
echo.
set /p "choice=Digite sua opção: "

if "%choice%"=="1" call :flashStockBoot "!STOCK_BOOT_808!" "10.0.8.0"
if "%choice%"=="2" call :flashStockBoot "!STOCK_BOOT_809!" "10.0.9.0"
if "%choice%"=="3" call :flashStockBoot "!STOCK_BOOT_8010!" "10.0.10.0"
if "%choice%"=="4" call :flashStockBoot "!STOCK_BOOT_8012!" "10.0.12.0"
if "%choice%"=="5" call :flashStockBoot "!STOCK_BOOT_8013!" "10.0.13.0"
if /i "%choice%"=="e" goto mainMenu

goto stockBootMenu

:flashStockBoot
setlocal enabledelayedexpansion
set "stock_boot_url=%1"
set "stock_boot_version=%2"
set "stock_boot_file=%ADB_DIR%\stockboot_!stock_boot_version!.img"

color 0E
cls
echo Baixando Stock Boot !stock_boot_version!...
call :downloadFile "!stock_boot_url!" "!stock_boot_file!"

if errorlevel 1 (
    call :showError "Falha ao baixar Stock Boot"
    endlocal
    goto stockBootMenu
) else (
    echo Flasheando Stock Boot...
    "%FASTBOOT_EXE%" flash boot_a "!stock_boot_file!" >nul 2>&1
    "%FASTBOOT_EXE%" flash boot_b "!stock_boot_file!" >nul 2>&1
    call :showSuccess "Stock Boot !stock_boot_version! flasheado com sucesso"
    endlocal
    goto stockBootMenu
)

REM ============================================================================
REM  MENUS ADICIONAIS
REM ============================================================================

:gappsMenu
color 03
cls
echo Baixando Gapps Micro...
call :downloadFile "!GAPPS_MICRO!" "%ADB_DIR%\gapps.zip"
if errorlevel 1 (
    call :showError "Falha ao baixar Gapps"
) else (
    call :showSuccess "Gapps Micro baixado com sucesso"
)
goto mainMenu

:splashMenu
color 03
cls
echo.
call :drawHeader
echo.
echo      ┌─ FLASH SPLASH ───────────────────────────────────────────┐
echo      ^|                                                            ^|
echo      ^|  1) Splash MIUI                                          ^|
echo      ^|  2) Splash ONE                                           ^|
echo      ^|  3) Splash Anonymous                                     ^|
echo      ^|  4) Splash MIUI White                                    ^|
echo      ^|  5) Orange Fox Unnoficial                                ^|
echo      ^|  E) Voltar                                               ^|
echo      ^|                                                            ^|
echo      └──────────────────────────────────────────────────────────┘
echo.
set /p "choice=Digite sua opção: "

if "%choice%"=="1" call :flashSplash "!SPLASH_MIUI!" "MIUI"
if "%choice%"=="2" call :flashSplash "!SPLASH_ONE!" "ONE"
if "%choice%"=="3" call :flashSplash "!SPLASH_ANONYMOUS!" "Anonymous"
if "%choice%"=="4" call :flashSplash "!SPLASH_MIUI_WHITE!" "MIUI White"
if "%choice%"=="5" call :flashSplash "!ORANGE_FOX!" "Orange Fox"
if /i "%choice%"=="e" goto mainMenu

goto splashMenu

:flashSplash
setlocal enabledelayedexpansion
set "splash_url=%1"
set "splash_name=%2"
set "splash_file=%ADB_DIR%\splash_!splash_name!.img"

echo Baixando Splash !splash_name!...
call :downloadFile "!splash_url!" "!splash_file!"

if errorlevel 1 (
    call :showError "Falha ao baixar Splash"
    endlocal
    goto splashMenu
) else (
    echo Flasheando Splash...
    "%FASTBOOT_EXE%" flash splash "!splash_file!" >nul 2>&1
    call :showSuccess "Splash !splash_name! flasheado com sucesso"
    endlocal
    goto splashMenu
)

:checkArbMenu
color 03
cls
echo Verificando ARB (Anti Roll Back)...
"%FASTBOOT_EXE%" getvar anti_rollback_version
echo.
pause >nul
goto mainMenu

:fastbootMenu
color 03
cls
echo.
call :drawHeader
echo.
echo      ┌─ MENU FASTBOOT ──────────────────────────────────────────┐
echo      ^|                                                            ^|
echo      ^|  1) Reboot                                               ^|
echo      ^|  2) Reboot Bootloader                                    ^|
echo      ^|  3) Reboot Recovery                                      ^|
echo      ^|  4) Continue                                             ^|
echo      ^|  E) Voltar                                               ^|
echo      ^|                                                            ^|
echo      └──────────────────────────────────────────────────────────┘
echo.
set /p "choice=Digite sua opção: "

if "%choice%"=="1" "%FASTBOOT_EXE%" reboot
if "%choice%"=="2" "%FASTBOOT_EXE%" reboot-bootloader
if "%choice%"=="3" "%FASTBOOT_EXE%" reboot-recovery
if "%choice%"=="4" "%FASTBOOT_EXE%" continue
if /i "%choice%"=="e" goto mainMenu

goto fastbootMenu

:generateSplashMenu
color 04
cls
echo Funcionalidade em desenvolvimento...
echo.
pause >nul
goto mainMenu

:updateNoobMaster
color 03
cls
echo Atualizando Noob Master...
echo Verifique a versão mais recente no GitHub
echo.
pause >nul
goto mainMenu

:verifyFiles
color 03
cls
echo.
call :drawHeader
echo.
echo      ┌─ VERIFICAÇÃO DE ARQUIVOS ────────────────────────────────┐
echo.

echo Verificando estrutura de diretórios...
echo.

set "dir_ok=1"

if exist "%ADB_DIR%" (
    color 0A
    echo [OK] Diretório adb encontrado
) else (
    color 0C
    echo [FALTA] Diretório adb
    set "dir_ok=0"
)
color 03

if exist "%ADB_EXE%" (
    color 0A
    echo [OK] adb.exe encontrado
) else (
    color 0C
    echo [FALTA] adb.exe
    set "dir_ok=0"
)
color 03

if exist "%FASTBOOT_EXE%" (
    color 0A
    echo [OK] fastboot.exe encontrado
) else (
    color 0C
    echo [FALTA] fastboot.exe
    set "dir_ok=0"
)
color 03

echo.
if %dir_ok% equ 1 (
    color 0A
    echo Todos os arquivos necessários encontrados!
) else (
    color 0C
    echo Alguns arquivos estão faltando!
)
color 03

echo.
echo      └──────────────────────────────────────────────────────────┘
echo.
pause >nul
goto mainMenu

REM ============================================================================
REM  INICIALIZAÇÃO
REM ============================================================================

:initialize
pushd "%BASE_DIR%"
call :logMessage "=== SESSÃO INICIADA ==="
call :logMessage "Versão: %APP_VERSION%"
call :logMessage "Usuário: %username%"
call :validateTools
goto mainMenu

REM Iniciar aplicação
call :initialize

endlocal
