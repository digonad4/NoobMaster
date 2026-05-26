@echo off
REM ============================================================================
REM  NOOB MASTER v7.0.0.5 - OTIMIZADO PARA WINDOWS 11
REM  Versao refatorada com melhorias de performance e manutenibilidade
REM  Desenvolvido por: Rodrigo Pires da Silva
REM ============================================================================

setlocal enabledelayedexpansion
chcp 65001 >nul 2>&1
cls

title Noob Master v7.0.0.5 - Windows 11
color 03
mode 120,35

REM ============================================================================
REM  CONFIGURACOES INICIAIS
REM ============================================================================

set "BASE_DIR=%~dp0"
set "ADB_DIR=%BASE_DIR%adb"
set "STOCK_DIR=%ADB_DIR%\stock"
set "7ZIP_DIR=%ADB_DIR%\7Zip"
set "LOG_FILE=%BASE_DIR%noobmaster_log.txt"

set "ADB_EXE=%ADB_DIR%\adb.exe"
set "FASTBOOT_EXE=%ADB_DIR%\fastboot.exe"
set "7ZIP_EXE=%7ZIP_DIR%\7za.exe"

set "APP_NAME=Noob Master"
set "APP_VERSION=7.0.0.5"
set "AUTHOR=Rodrigo Pires da Silva"

REM ============================================================================
REM  URLs E LINKS
REM ============================================================================

set "SERVER=https://raw.githubusercontent.com/devrodrigopires/NoobMaster/master/"
set "SERVER_STOCK=http://bigota.d.miui.com/V10.0.9.0.PDIMIXM/jasmine_global_images_V10.0.9.0.PDIMIXM_20190513.0000.00_9.0_bbaa8993fe.tgz"

set "TWRP_JASMINE_323=!SERVER!adb/file/twrp/jasmine/3.2.3-0.img"
set "TWRP_JASMINE_330=!SERVER!adb/file/twrp/jasmine/3.3.0-0.img"
set "TWRP_JASMINE_331=!SERVER!adb/file/twrp/jasmine/3.3.1-0.img"

set "TWRP_WAYNE_323=!SERVER!adb/file/twrp/wayne/3.2.3-0.img"
set "TWRP_WAYNE_3231=!SERVER!adb/file/twrp/wayne/3.2.3-1.img"
set "TWRP_WAYNE_330=!SERVER!adb/file/twrp/wayne/3.3.0-0.img"
set "TWRP_WAYNE_331=!SERVER!adb/file/twrp/wayne/3.3.1.img"

set "PATCHED_808=!SERVER!adb/file/patched/10.0.8.0/10.0.8.0.img"
set "PATCHED_809=!SERVER!adb/file/patched/10.0.9.0/10.0.9.0.img"
set "PATCHED_8010=!SERVER!adb/file/patched/10.0.10.0/10.0.10.0.img"
set "PATCHED_8012=!SERVER!adb/file/patched/10.0.12.0/10.0.12.0.img"
set "PATCHED_8013=!SERVER!adb/file/patched/10.0.13.0/10.0.13.0.img"

set "STOCK_BOOT_808=!SERVER!adb/file/stockboot/10.0.8.0/10.0.8.0.img"
set "STOCK_BOOT_809=!SERVER!adb/file/stockboot/10.0.9.0/10.0.9.0.img"
set "STOCK_BOOT_8010=!SERVER!adb/file/stockboot/10.0.10.0/10.0.10.0.img"
set "STOCK_BOOT_8012=!SERVER!adb/file/stockboot/10.0.12.0/10.0.12.0.img"
set "STOCK_BOOT_8013=!SERVER!adb/file/stockboot/10.0.13.0/10.0.13.0.img"

set "GAPPS_MICRO=https://phoenixnap.dl.sourceforge.net/project/noobmaster/NoobMaster/adb/file/gapps/gapps.zip"
set "SPLASH_MIUI=!SERVER!adb/file/splash/miui/splash.img"
set "SPLASH_ONE=!SERVER!adb/file/splash/one/splash.img"
set "SPLASH_ANONYMOUS=!SERVER!adb/file/splash/anonimous/splash.img"
set "SPLASH_MIUI_WHITE=!SERVER!adb/file/splash/miui_white/splash.img"
set "ORANGE_FOX=!SERVER!adb/file/Orange/unnoficial.img"

REM ============================================================================
REM  FUNCOES UTILITARIAS
REM ============================================================================

:logMessage
set "log_msg=%1"
echo [%date% %time%] !log_msg! >> "!LOG_FILE!"
goto :eof

:showError
set "error_msg=%1"
call :logMessage "ERRO: !error_msg!"
color 0C
cls
echo.
echo ================================================================================
echo ERRO: !error_msg!
echo ================================================================================
echo.
echo Se o problema persistir, verifique o log em:
echo !LOG_FILE!
echo.
pause
goto :eof

:showSuccess
set "success_msg=%1"
call :logMessage "SUCESSO: !success_msg!"
color 0A
cls
echo.
echo ================================================================================
echo SUCESSO: !success_msg!
echo ================================================================================
echo.
timeout /t 3 /nobreak >nul
goto :eof

:drawMenu
cls
color 03
echo.
echo ================================================================================
echo   %APP_NAME% v%APP_VERSION% - Windows 11 Otimizado
echo   by: %AUTHOR%
echo ================================================================================
echo.
goto :eof

:validateTools
cls
color 0E
echo.
echo ================================================================================
echo  VALIDANDO FERRAMENTAS
echo ================================================================================
echo.

if not exist "%ADB_DIR%" (
    echo [*] Criando estrutura de diretorios...
    mkdir "%ADB_DIR%" 2>nul
    mkdir "%STOCK_DIR%" 2>nul
    mkdir "%7ZIP_DIR%" 2>nul
    echo [*] Iniciando download de ferramentas...
    call :downloadAdbTools
)

if not exist "%ADB_EXE%" (
    echo [*] adb.exe nao encontrado - Baixando...
    call :downloadAdbTools
)

if not exist "%FASTBOOT_EXE%" (
    echo [*] fastboot.exe nao encontrado - Baixando...
    call :downloadAdbTools
)

echo [OK] Validacao concluida!
timeout /t 2 /nobreak >nul
goto :eof

:downloadAdbTools
cls
color 0E
echo.
echo ================================================================================
echo  DOWNLOAD DE FERRAMENTAS ADB
echo ================================================================================
echo.

mkdir "%ADB_DIR%" 2>nul
mkdir "%ADB_DIR%\7Zip" 2>nul
mkdir "%STOCK_DIR%" 2>nul

echo [*] Baixando adb.exe...
powershell -NoProfile -Command "try { $ProgressPreference = 'SilentlyContinue'; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri '!SERVER!adb/adb.exe' -OutFile '!ADB_EXE!' -UseBasicParsing; Write-Host '[OK] adb.exe baixado'; } catch { Write-Host '[ERRO] Falha no download de adb.exe'; exit 1; }" 2>nul

echo [*] Baixando fastboot.exe...
powershell -NoProfile -Command "try { $ProgressPreference = 'SilentlyContinue'; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri '!SERVER!adb/fastboot.exe' -OutFile '!FASTBOOT_EXE!' -UseBasicParsing; Write-Host '[OK] fastboot.exe baixado'; } catch { Write-Host '[ERRO] Falha no download de fastboot.exe'; exit 1; }" 2>nul

echo [*] Baixando AdbWinApi.dll...
powershell -NoProfile -Command "try { $ProgressPreference = 'SilentlyContinue'; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri '!SERVER!adb/AdbWinApi.dll' -OutFile '%ADB_DIR%\AdbWinApi.dll' -UseBasicParsing; Write-Host '[OK] DLL baixada'; } catch { Write-Host '[ERRO] Falha'; exit 1; }" 2>nul

echo [*] Baixando AdbWinUsbApi.dll...
powershell -NoProfile -Command "try { $ProgressPreference = 'SilentlyContinue'; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri '!SERVER!adb/AdbWinUsbApi.dll' -OutFile '%ADB_DIR%\AdbWinUsbApi.dll' -UseBasicParsing; Write-Host '[OK] DLL baixada'; } catch { Write-Host '[ERRO] Falha'; exit 1; }" 2>nul

echo.
echo [OK] Download de ferramentas concluido!
timeout /t 2 /nobreak >nul
goto :eof

:downloadFile
set "download_url=%1"
set "output_file=%2"
set "file_name=%~nx2"

echo.
echo [*] Baixando: !file_name!
echo.

powershell -NoProfile -Command "try { $ProgressPreference = 'Continue'; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri '!download_url!' -OutFile '!output_file!' -UseBasicParsing; Write-Host '[OK] Download concluido com sucesso'; } catch { Write-Host '[ERRO] Falha no download: ' $_.Exception.Message; exit 1; }" 2>&1

if errorlevel 1 (
    call :logMessage "ERRO: Falha ao baixar !file_name!"
    exit /b 1
) else (
    call :logMessage "OK: !file_name! baixado com sucesso"
    exit /b 0
)

:eof

REM ============================================================================
REM  MENU PRINCIPAL
REM ============================================================================

:mainMenu
call :drawMenu
echo  [MENU PRINCIPAL]
echo.
echo  1) OPCOES DE BOOTLOADER
echo  2) OPCOES DE ERASE (SYSTEM/VENDOR)
echo  3) INSTALACAO DA STOCK ROM (A2/6X)
echo  4) TWRP (A2/6X)
echo  5) PATCHED BOOT (ROOT STOCK ROM)
echo  6) STOCK BOOT (REMOVE ROOT STOCK ROM)
echo  7) GAPPS MICRO 01/2019
echo  8) FLASH SPLASH (STOCK/CUSTOM)
echo  9) CHECAR ARB (ANTI ROLL BACK)
echo  10) MENU REBOOT/BOOTLOADER (FASTBOOT)
echo  11) CRIAR SEU PROPRIO SPLASH
echo  A) ATUALIZAR O NOOB MASTER
echo  V) VERIFICAR RAIZ DE ARQUIVOS
echo  E) SAIR
echo.
echo  Dispositivos suportados: MI A2 / 6X
echo.
echo ================================================================================
echo.
set /p "choice=Digite sua opcao: "

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
call :drawMenu
echo  [MENU BOOTLOADER]
echo.
echo  1) Bloquear bootloader
echo  2) Desbloquear OEM
echo  3) Desbloquear critical
echo  4) Reboot system
echo  E) Voltar
echo.
echo ================================================================================
echo.
set /p "choice=Digite sua opcao: "

if "%choice%"=="1" goto lockBootloader
if "%choice%"=="2" goto unlockOEM
if "%choice%"=="3" goto unlockCritical
if "%choice%"=="4" goto rebootSystem
if /i "%choice%"=="e" goto mainMenu

goto bootloaderMenu

:lockBootloader
cls
echo Bloqueando bootloader...
"%FASTBOOT_EXE%" oem lock
if errorlevel 1 (
    call :showError "Falha ao bloquear bootloader"
) else (
    call :showSuccess "Bootloader bloqueado com sucesso"
)
goto bootloaderMenu

:unlockOEM
cls
echo Desbloqueando OEM...
"%FASTBOOT_EXE%" oem unlock
if errorlevel 1 (
    call :showError "Falha ao desbloquear OEM"
) else (
    call :showSuccess "OEM desbloqueado com sucesso"
)
goto bootloaderMenu

:unlockCritical
cls
echo Desbloqueando critical...
"%FASTBOOT_EXE%" flashing unlock_critical
if errorlevel 1 (
    call :showError "Falha ao desbloquear critical"
) else (
    call :showSuccess "Critical desbloqueado com sucesso"
)
goto bootloaderMenu

:rebootSystem
"%FASTBOOT_EXE%" reboot
goto bootloaderMenu

REM ============================================================================
REM  MENU ERASE
REM ============================================================================

:eraseMenu
call :drawMenu
echo  [MENU ERASE]
echo.
echo  1) ERASE SYSTEM JASMINE
echo  2) ERASE VENDOR JASMINE
echo  3) ERASE SYSTEM WAYNE
echo  4) ERASE VENDOR WAYNE
echo  5) ERASE USER DATA
echo  6) ERASE CACHE
echo  7) APAGAR TODOS OS DADOS
echo  8) Reboot System
echo  E) Voltar
echo.
echo ================================================================================
echo.
set /p "choice=Digite sua opcao: "

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
echo Apagando dados do usuario...
"%FASTBOOT_EXE%" erase userdata
call :showSuccess "Dados do usuario apagados"
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
call :drawMenu
echo  [MENU STOCK ROM v10.0.9.0 OFFICIAL]
echo.
echo  1) DOWNLOAD DA STOCK (v10.0.9.0)
echo  2) DESCOMPACTAR ARQUIVO
echo  3) FLASH DA STOCK ROM
echo  4) VERIFICAR ARQUIVOS
echo  5) ABRIR PASTA DO ARQUIVO STOCK ROM
echo  6) REBOOT SYSTEM
echo  E) Voltar
echo.

if exist "%STOCK_DIR%\jasmine.tgz" (
    color 0A
    echo [OK] Arquivo stock ROM encontrado
) else (
    color 0C
    echo [FALTA] Stock ROM nao baixada
)
color 03
echo.

if exist "%STOCK_DIR%\system.img" (
    color 0A
    echo [OK] Arquivos extraidos
) else (
    color 0C
    echo [FALTA] Stock ROM nao extraida
)
color 03
echo.
echo ================================================================================
echo.
set /p "choice=Digite sua opcao: "

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
    cls
    color 0C
    echo Stock ROM ja foi baixada!
    echo.
    pause
    goto stockRomMenu
)

mkdir "%STOCK_DIR%" 2>nul
color 0E
cls
echo.
echo Baixando Stock ROM (pode levar varios minutos)...
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
if not exist "%7ZIP_DIR%\7za.exe" (
    echo Baixando ferramentas de extracao...
    mkdir "%7ZIP_DIR%" 2>nul
)

if not exist "%STOCK_DIR%\jasmine.tgz" (
    call :showError "Arquivo jasmine.tgz nao encontrado"
    goto stockRomMenu
)

color 0E
cls
echo Extraindo Stock ROM (pode levar alguns minutos)...
echo.
"%7ZIP_EXE%" e -o"%STOCK_DIR%" -bt -aoa "%STOCK_DIR%\jasmine.tgz" >nul 2>&1
"%7ZIP_EXE%" e -o"%STOCK_DIR%" -bt -aoa "%STOCK_DIR%\jasmine.tar" >nul 2>&1

call :showSuccess "Stock ROM extraida com sucesso"
goto stockRomMenu

:verifyStockFiles
call :drawMenu
echo  [VERIFICACAO DE ARQUIVOS STOCK ROM]
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
echo ================================================================================
echo.
if %files_ok% equ 1 (
    color 0A
    echo Todos os arquivos necessarios encontrados!
) else (
    color 0C
    echo Alguns arquivos estao faltando!
)
color 03
echo.
pause
goto stockRomMenu

:flashStockRom
if not exist "%STOCK_DIR%\system.img" (
    call :showError "Arquivos necessarios nao encontrados"
    goto stockRomMenu
)

color 0E
cls
echo Iniciando Flash da Stock ROM...
echo.

echo [*] Apagando particoes...
"%FASTBOOT_EXE%" erase system_a >nul 2>&1
"%FASTBOOT_EXE%" erase system_b >nul 2>&1
"%FASTBOOT_EXE%" erase vendor_a >nul 2>&1
"%FASTBOOT_EXE%" erase vendor_b >nul 2>&1
"%FASTBOOT_EXE%" erase cache >nul 2>&1
"%FASTBOOT_EXE%" erase userdata >nul 2>&1
"%FASTBOOT_EXE%" -w >nul 2>&1

echo [*] Flasheando particoes...
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
call :drawMenu
echo  [MENU TWRP]
echo.
echo  JASMINE (MI A2)
echo    1) TWRP 3.2.3-0
echo    2) TWRP 3.3.0-0
echo    3) TWRP 3.3.1-0
echo.
echo  WAYNE (MI 6X)
echo    4) TWRP 3.2.3-0
echo    5) TWRP 3.2.3-1
echo    6) TWRP 3.3.0-0
echo    7) TWRP 3.3.1
echo.
echo  8) Reboot Bootloader
echo  E) Voltar
echo.
echo ================================================================================
echo.
set /p "choice=Digite sua opcao: "

if "%choice%"=="1" call :flashTWRP "!TWRP_JASMINE_323!" "TWRP_3_2_3_0"
if "%choice%"=="2" call :flashTWRP "!TWRP_JASMINE_330!" "TWRP_3_3_0_0"
if "%choice%"=="3" call :flashTWRP "!TWRP_JASMINE_331!" "TWRP_3_3_1_0"
if "%choice%"=="4" call :flashTWRP "!TWRP_WAYNE_323!" "TWRP_wayne_3_2_3_0"
if "%choice%"=="5" call :flashTWRP "!TWRP_WAYNE_3231!" "TWRP_wayne_3_2_3_1"
if "%choice%"=="6" call :flashTWRP "!TWRP_WAYNE_330!" "TWRP_wayne_3_3_0_0"
if "%choice%"=="7" call :flashTWRP "!TWRP_WAYNE_331!" "TWRP_wayne_3_3_1"
if "%choice%"=="8" "%FASTBOOT_EXE%" reboot-bootloader
if /i "%choice%"=="e" goto mainMenu

goto twrpMenu

:flashTWRP
setlocal enabledelayedexpansion
set "twrp_url=%1"
set "twrp_name=%2"
set "twrp_file=%ADB_DIR%\!twrp_name!.img"

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
call :drawMenu
echo  [PATCHED BOOT (ROOT)]
echo.
echo  1) Patched Boot 10.0.8.0
echo  2) Patched Boot 10.0.9.0
echo  3) Patched Boot 10.0.10.0
echo  4) Patched Boot 10.0.12.0
echo  5) Patched Boot 10.0.13.0
echo  E) Voltar
echo.
echo ================================================================================
echo.
set /p "choice=Digite sua opcao: "

if "%choice%"=="1" call :flashPatchedBoot "!PATCHED_808!" "10_0_8_0"
if "%choice%"=="2" call :flashPatchedBoot "!PATCHED_809!" "10_0_9_0"
if "%choice%"=="3" call :flashPatchedBoot "!PATCHED_8010!" "10_0_10_0"
if "%choice%"=="4" call :flashPatchedBoot "!PATCHED_8012!" "10_0_12_0"
if "%choice%"=="5" call :flashPatchedBoot "!PATCHED_8013!" "10_0_13_0"
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
call :drawMenu
echo  [STOCK BOOT (REMOVE ROOT)]
echo.
echo  1) Stock Boot 10.0.8.0
echo  2) Stock Boot 10.0.9.0
echo  3) Stock Boot 10.0.10.0
echo  4) Stock Boot 10.0.12.0
echo  5) Stock Boot 10.0.13.0
echo  E) Voltar
echo.
echo ================================================================================
echo.
set /p "choice=Digite sua opcao: "

if "%choice%"=="1" call :flashStockBoot "!STOCK_BOOT_808!" "10_0_8_0"
if "%choice%"=="2" call :flashStockBoot "!STOCK_BOOT_809!" "10_0_9_0"
if "%choice%"=="3" call :flashStockBoot "!STOCK_BOOT_8010!" "10_0_10_0"
if "%choice%"=="4" call :flashStockBoot "!STOCK_BOOT_8012!" "10_0_12_0"
if "%choice%"=="5" call :flashStockBoot "!STOCK_BOOT_8013!" "10_0_13_0"
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
call :drawMenu
echo  [FLASH SPLASH]
echo.
echo  1) Splash MIUI
echo  2) Splash ONE
echo  3) Splash Anonymous
echo  4) Splash MIUI White
echo  5) Orange Fox Unnoficial
echo  E) Voltar
echo.
echo ================================================================================
echo.
set /p "choice=Digite sua opcao: "

if "%choice%"=="1" call :flashSplash "!SPLASH_MIUI!" "MIUI"
if "%choice%"=="2" call :flashSplash "!SPLASH_ONE!" "ONE"
if "%choice%"=="3" call :flashSplash "!SPLASH_ANONYMOUS!" "Anonymous"
if "%choice%"=="4" call :flashSplash "!SPLASH_MIUI_WHITE!" "MIUI_White"
if "%choice%"=="5" call :flashSplash "!ORANGE_FOX!" "Orange_Fox"
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
pause
goto mainMenu

:fastbootMenu
call :drawMenu
echo  [MENU FASTBOOT]
echo.
echo  1) Reboot
echo  2) Reboot Bootloader
echo  3) Reboot Recovery
echo  4) Continue
echo  E) Voltar
echo.
echo ================================================================================
echo.
set /p "choice=Digite sua opcao: "

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
pause
goto mainMenu

:updateNoobMaster
color 03
cls
echo Atualizando Noob Master...
echo Verifique a versao mais recente no GitHub
echo.
pause
goto mainMenu

:verifyFiles
call :drawMenu
echo  [VERIFICACAO DE ARQUIVOS]
echo.

echo Verificando estrutura de diretorios...
echo.

set "dir_ok=1"

if exist "%ADB_DIR%" (
    color 0A
    echo [OK] Diretorio adb encontrado
) else (
    color 0C
    echo [FALTA] Diretorio adb
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
echo ================================================================================
echo.
if %dir_ok% equ 1 (
    color 0A
    echo Todos os arquivos necessarios encontrados!
) else (
    color 0C
    echo Alguns arquivos estao faltando!
)
color 03

echo.
pause
goto mainMenu

REM ============================================================================
REM  INICIALIZACAO
REM ============================================================================

:initialize
pushd "%BASE_DIR%"
call :logMessage "=== SESSAO INICIADA ==="
call :logMessage "Versao: %APP_VERSION%"
call :logMessage "Usuario: %username%"
call :validateTools
goto mainMenu

REM Iniciar aplicacao
call :initialize

endlocal
