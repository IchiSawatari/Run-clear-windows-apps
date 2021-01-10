@echo off
CLS
ECHO.
ECHO =====================================
ECHO.
ECHO           Windows Clean Apps
ECHO.
ECHO   https://github.com/ichiSawatari
ECHO =====================================
ECHO.

:init
setlocal DisableDelayedExpansion
set cmdInvoke=1
set winSysFolder=System32
set "batchPath=%~0"
for %%k in (%0) do set batchName=%%~nk
set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
setlocal EnableDelayedExpansion

:checkPrivileges
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)

ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
ECHO args = "ELEV " >> "%vbsGetPrivileges%"
ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
ECHO Next >> "%vbsGetPrivileges%"

if '%cmdInvoke%'=='1' goto InvokeCmd 

ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
goto ExecElevation

:InvokeCmd
ECHO args = "/c """ + "!batchPath!" + """ " + args >> "%vbsGetPrivileges%"
ECHO UAC.ShellExecute "%SystemRoot%\%winSysFolder%\cmd.exe", args, "", "runas", 1 >> "%vbsGetPrivileges%"

:ExecElevation
"%SystemRoot%\%winSysFolder%\WScript.exe" "%vbsGetPrivileges%" %*
exit /B

:gotPrivileges
setlocal & cd /d %~dp0
if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)

REM Run shell as admin (example) - put here code as you like
chcp 437 >nul
cd /d "%~dp0"
setlocal EnableDelayedExpansion
@echo off
@title Run clear windows apps v0.7
echo. %time% %OS% 
echo. %userprofile%
ECHO.
SET /p NOTEBOOK= Notebook ou Desktop (N/D) ou Reinstalar (R)?
if "%NOTEBOOK%" equ "N" (goto:Notebook)
if "%NOTEBOOK%" equ "Note" (goto:Notebook)
if "%NOTEBOOK%" equ "note" (goto:Notebook)
if "%NOTEBOOK%" equ "n" (goto:Notebook)
if "%NOTEBOOK%" equ "D" (goto:Desktop)
if "%NOTEBOOK%" equ "Desk" (goto:Desktop)
if "%NOTEBOOK%" equ "d" (goto:Desktop)
if "%NOTEBOOK%" equ "desk" (goto:Desktop)
if "%NOTEBOOK%" equ "R" (goto:Reinstall)
if "%NOTEBOOK%" equ "Rein" (goto:Reinstall)
if "%NOTEBOOK%" equ "r" (goto:Reinstall)
if "%NOTEBOOK%" equ "rein" (goto:Reinstall)

:Desktop
cls
ECHO.
ECHO =====================================
ECHO.
ECHO           Windows Clean Apps
ECHO.
ECHO   https://github.com/ichiSawatari
ECHO =====================================
ECHO.
echo. %time% %OS% 
echo. %userprofile%
ECHO.
@title Run clear windows Desktop
pause
    echo. Tentando remover apps microsoft
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Office.OneNote* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *WindowsScan* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Whiteboard* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *MinecraftUWP* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.OneConnect* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsNotepad* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *OneNote* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MSPaint* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.People* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Print3D* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Paint3D* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MSPaint3D* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Paint3D* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.RemoteDesktop* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.SkypeApp* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.ScreenSketch* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Office.Sway* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Getstarted* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft3DViewer* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *windowscamera* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.windowscamera* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.YourPhone* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.3dbuilder* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft3DViewer* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *AdobeSystemsIncorporated.AdobePhotoshopExpress* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsAlarms* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.549981C3F5F10* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.GetHelp* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Getstarted* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.ZuneMusic* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsMaps* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Messaging* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *CommsPhone* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *windowsphone* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.ZuneVideo* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.News* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Newsletter* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftNewsletter* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Windows.NarratorQuickStart* | Remove-AppxPackage"
    echo. Removendo apps de terceiros
    powershell -command "Get-AppxPackage -AllUsers *Netflix* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Spotify* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Facebook* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Twitter* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *AutodeskSketchBook* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *PandoraMediaInc* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *king.com.CandyCrushSodaSaga* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.DrawboardPDF* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Appconnector* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Asphalt8Airborne* | Remove-AppxPackage"
    echo. Tentando remover BING
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.BingWeather* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.BingNews* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *bingsports* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *bingfinance* | Remove-AppxPackage"
    echo. Removendo microsoft edge...
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftEdge* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Edge* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Edge* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftEdge.Beta* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftEdge.Canary* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftEdgeDevToolsClient* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftEdge.Stable* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftEdgeDevToolsClient* | Remove-AppxPackage"
    echo. Tentando remover a cortana
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Windows.Cortana* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.549981C3F5F10* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Windows.Cortana_1.13.0.18362_neutral_neutral_cw5n1h2txyewy* | Remove-AppxPackage"
    echo.
    echo. APPS metro removidos
    echo.
    echo. Aplicando em todos os usuarios
    echo Removendo apps Provisionados
    powershell -command "Get-AppxProvisionedPackage -AllUsers -Online | Remove-AppxProvisionedPackage -Online"
    echo.
    pause
    SET opc=
    set /p opc= Deseja remover Windows Xbox? (Y/N) : 
    if "%opc%" equ "y" (goto:op)
    if "%opc%" equ "n" (goto:op2)
	if "%opc%" equ "Y" (goto:op)
    if "%opc%" equ "N" (goto:op2)
    :op
    cls
    @title XBOX Apps
        echo. Tentando remover XBOX Apps
        powershell -command "Get-AppxPackage -AllUsers *XboxOneSmartGlass* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxApp* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGamingOverlay* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameOverlay* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxIdentityProvider* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameCallableUI* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.Xbox.TCUI* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxIdentityProvider_12.58.1001.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGamingOverlay_3.34.15002.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameOverlay_1.47.14001.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameCallableUI_1000.18362.449.0_neutral_neutral_cw5n1h2txyewy* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxSpeechToTextOverlay_1.21.13002.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.Xbox.TCUI_1.24.10001.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
        @title Run clear windows apps v0.5

    cls
    :op2
	SET NOTEBOOK=
	SET opc=
    set /p opc= Deseja remover Windows Extensions? (Y/N) : 
    if "%opc%" equ "y" (goto:op)
    if "%opc%" equ "n" (goto:op2)
	if "%opc%" equ "Y" (goto:op)
    if "%opc%" equ "N" (goto:op2)
	:op
	@title Remover Extensions
		Echo. Removendo Extensions...
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.VCLibs.140.00* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.VCLibs* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.VP9VideoExtensions* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.WebMediaExtensions* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.WebpImageExtension* | Remove-AppxPackage"
		@title Run clear windows apps v0.7
	
	:op2
    SET NOTEBOOK=
    SET opc=
    set /p opc= Deseja remover Windows Email? (Y/N) : 
    if "%opc%" equ "y" (goto:op)
    if "%opc%" equ "n" (goto:op2)
	if "%opc%" equ "Y" (goto:op)
    if "%opc%" equ "N" (goto:op2)
    :op
    @title Remover Windows Email
        Echo. Remover Windows Email...
        powershell -command "Get-AppxPackage -AllUsers *microsoft.windowscommunicationsapps* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *microsoft.windowscommunicationsapps* | Remove-AppxPackage"
        @title Run clear windows apps v0.7
    :op2

    SET opc=
    set /p opc= Deseja remover a Windows Store? (Y/N) : 
    if "%opc%" equ "y" (goto:op)
    if "%opc%" equ "n" (goto:op2)
	if "%opc%" equ "Y" (goto:op)
    if "%opc%" equ "N" (goto:op2)
    :op

    @title Remover Windows Store
        Echo. remover Windows Store...
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsStore* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.StorePurchaseApp* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.Wallet* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *ConnectivityStore* | Remove-AppxPackage"
        @title Run clear windows apps v0.7

    :op2
    @title Run clear windows apps v0.5
    SET opc=
    echo.
    echo Finalizado!
    echo Recomendo reiniciar o windows
    pause
    echo o computador vai reiniciar
    %windir%\system32\shutdown.exe -r -t 0

:Notebook
@echo off
@title Run clear windows Notebook
cls
ECHO.
ECHO =====================================
ECHO.
ECHO           Windows Clean Apps
ECHO.
ECHO   https://github.com/ichiSawatari
ECHO =====================================
ECHO.
echo. %time% %OS% 
echo. %userprofile%
ECHO.
pause
    echo. Tentando remover apps microsoft
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Office.OneNote* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *WindowsScan* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Whiteboard* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *MinecraftUWP* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.OneConnect* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsNotepad* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *OneNote* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MSPaint* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.People* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Print3D* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Paint3D* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MSPaint3D* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Paint3D* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.RemoteDesktop* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.SkypeApp* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.ScreenSketch* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Office.Sway* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Getstarted* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft3DViewer* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.YourPhone* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.3dbuilder* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft3DViewer* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *AdobeSystemsIncorporated.AdobePhotoshopExpress* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsAlarms* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.549981C3F5F10* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.GetHelp* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Getstarted* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsMaps* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Messaging* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *CommsPhone* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *windowsphone* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.News* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Newsletter* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftNewsletter* | Remove-AppxPackage"
    echo. Removendo apps de terceiros
    powershell -command "Get-AppxPackage -AllUsers *Facebook* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Twitter* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *AutodeskSketchBook* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *PandoraMediaInc* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *king.com.CandyCrushSodaSaga* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.DrawboardPDF* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Appconnector* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Asphalt8Airborne* | Remove-AppxPackage"
    echo. Tentando remover BING
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.BingWeather* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.BingNews* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *bingsports* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *bingfinance* | Remove-AppxPackage"
    echo. Removendo microsoft edge...
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftEdge* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Edge* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Edge* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftEdge.Beta* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftEdge.Canary* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftEdgeDevToolsClient* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftEdge.Stable* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftEdgeDevToolsClient* | Remove-AppxPackage"
    echo. Tentando remover a cortana
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Windows.Cortana* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.549981C3F5F10* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Windows.Cortana_1.13.0.18362_neutral_neutral_cw5n1h2txyewy* | Remove-AppxPackage"
    echo.
    echo. APPS metro removidos
    pause
    echo. Aplicando em todos os usuarios
    echo Removendo apps Provisionados
    powershell -command "Get-AppxProvisionedPackage -AllUsers -Online | Remove-AppxProvisionedPackage -Online"
    echo.
    pause
    SET opc=
    set /p opc= Deseja remover Windows Xbox? (Y/N) : 
    if "%opc%" equ "y" (goto:op)
    if "%opc%" equ "n" (goto:op2)
	if "%opc%" equ "Y" (goto:op)
    if "%opc%" equ "N" (goto:op2)
    :op
    cls
    @title XBOX Apps
        echo. Tentando remover XBOX Apps
        powershell -command "Get-AppxPackage -AllUsers *XboxOneSmartGlass* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxApp* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGamingOverlay* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameOverlay* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxIdentityProvider* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameCallableUI* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.Xbox.TCUI* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxIdentityProvider_12.58.1001.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGamingOverlay_3.34.15002.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameOverlay_1.47.14001.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameCallableUI_1000.18362.449.0_neutral_neutral_cw5n1h2txyewy* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxSpeechToTextOverlay_1.21.13002.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.Xbox.TCUI_1.24.10001.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
        @title Run clear windows apps v0.7

    cls
    :op2
	SET NOTEBOOK=
	SET opc=
    set /p opc= Deseja remover Windows Extensions? (Y/N) : 
    if "%opc%" equ "y" (goto:op)
    if "%opc%" equ "n" (goto:op2)
	if "%opc%" equ "Y" (goto:op)
    if "%opc%" equ "N" (goto:op2)
	:op
	@title Remover Extensions
		Echo. Removendo Extensions...
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.VCLibs.140.00* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.VCLibs* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.VP9VideoExtensions* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.WebMediaExtensions* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.WebpImageExtension* | Remove-AppxPackage"
		@title Run clear windows apps v0.7
	
	:op2
    SET NOTEBOOK=
    set /p opc= Deseja remover Windows Email? (Y/N) : 
    if "%opc%" equ "y" (goto:op)
    if "%opc%" equ "n" (goto:op2)
	if "%opc%" equ "Y" (goto:op)
    if "%opc%" equ "N" (goto:op2)
    :op
    cls
    @title Remover Windows Email
        Echo. Remover Windows Email...
        powershell -command "Get-AppxPackage -AllUsers *microsoft.windowscommunicationsapps* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *microsoft.windowscommunicationsapps* | Remove-AppxPackage"
        @title Run clear windows apps v0.5
    :op2
    @title Run clear windows apps v0.7
    cls

    SET opc=
    set /p opc= Deseja remover a Windows Store? (Y/N) : 
    if "%opc%" equ "y" (goto:op)
    if "%opc%" equ "n" (goto:op2)
	if "%opc%" equ "Y" (goto:op)
    if "%opc%" equ "N" (goto:op2)
    :op
    cls

    @title Remover Windows Store
        Echo. remover Windows Store...
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsStore* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.StorePurchaseApp* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.Wallet* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *ConnectivityStore* | Remove-AppxPackage"
        @title Run clear windows apps v0.5

    :op2
    @title Run clear windows apps v0.7
    cls
    SET opc=
    echo.
    echo Finalizado!
    echo Recomendo reiniciar o windows
    pause
    cls
    echo o computador vai reiniciar
    %windir%\system32\shutdown.exe -r -t 0
	
:Reinstall
	ECHO.
	ECHO =====================================
	ECHO.
	ECHO           Windows Clean Apps
	ECHO.
	ECHO   https://github.com/ichiSawatari
	ECHO =====================================
	ECHO.
	echo. %time% %OS% 
	echo. %userprofile%
	ECHO.
	powershell -command "Get-AppxPackage -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)AppXManifest.xml”}"
    echo Finalizado!
    echo Recomendo reiniciar o windows
    pause
    cls
    echo o computador vai reiniciar
    %windir%\system32\shutdown.exe -r -t 0

cmd /k
