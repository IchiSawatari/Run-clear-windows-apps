@echo off
@title Run clear windows apps v0.1
pause
echo. Tentando remover apps microsoft
REM powershell -command "Get-AppxPackage -AllUsers *Microsoft.VCLibs.140.00* | Remove-AppxPackage"
REM powershell -command "Get-AppxPackage -AllUsers *Microsoft.VCLibs* | Remove-AppxPackage"
REM powershell -command "Get-AppxPackage -AllUsers *Microsoft.VP9VideoExtensions* | Remove-AppxPackage"
REM powershell -command "Get-AppxPackage -AllUsers *Microsoft.WebMediaExtensions* | Remove-AppxPackage"
REM powershell -command "Get-AppxPackage -AllUsers *Microsoft.WebpImageExtension* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *Microsoft.Office.OneNote* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *WindowsScan* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *Microsoft.Whiteboard* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *ConnectivityStore* | Remove-AppxPackage"
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
echo. Removendo apps de terceiros
powershell -command "Get-AppxPackage -AllUsers *Netflix* | Remove-AppxPackage"
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
echo. Tentando remover a cortana
powershell -command "Get-AppxPackage -AllUsers *Microsoft.Windows.Cortana* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *Microsoft.549981C3F5F10* | Remove-AppxPackage"
powershell -command "Get-AppxPackage -AllUsers *Microsoft.Windows.Cortana_1.13.0.18362_neutral_neutral_cw5n1h2txyewy* | Remove-AppxPackage"
echo.
echo. APPS metro removidos
echo.
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
echo.
pause
echo. Aplicando em todos os usuarios
echo Removendo apps Provisionados
powershell -command "Get-AppxProvisionedPackage -Online | Remove-AppxProvisionedPackage -Online"
echo.
pause
cls
set /p opc= Deseja remover Windows Email? (Y/N) : 
if "%opc%" equ "y" (goto:op)
if "%opc%" equ "n" (goto:op2)
if "%opc%" equ "c" (goto:exit)
:op
cls
@title Remover Windows Email
    Echo. Remover Windows Email...
    powershell -command "Get-AppxPackage -AllUsers *microsoft.windowscommunicationsapps* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *microsoft.windowscommunicationsapps* | Remove-AppxPackage"
    @title Run clear windows apps v0.1
:op2
@title Run clear windows apps v0.1
cls

SET opc=
set /p opc= Deseja remover a Windows Store? (Y/N) : 
if "%opc%" equ "y" (goto:op)
if "%opc%" equ "n" (goto:op2)
:op
cls

@title Remover Windows Store
    Echo. remover Windows Store...
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsStore* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.StorePurchaseApp* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Wallet* | Remove-AppxPackage"
    @title Run clear windows apps v0.1

:op2
@title Run clear windows apps v0.1
cls
SET opc=
echo.
echo Finalizado!
echo Recomendo reiniciar o windows
pause
cls
echo o computador vai reiniciar
pause > nul
pause > nul
%windir%\system32\shutdown.exe -r -t 0
