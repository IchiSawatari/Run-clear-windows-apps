@echo off
@title Windows Remove APPS v2.0
CLS
mode con:cols=68 lines=22
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
ECHO.

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

chcp 437 >nul
cd /d "%~dp0"
setlocal EnableDelayedExpansion
@echo off
echo. %time% %OS% 
echo. %userprofile%

:inicioRemoveApps
color 0f
mode con:cols=68 lines=22
@title Windows Remove APPS v2.0

SET OPCREMOCAO= 

cls

ECHO.
echo. ==================================================================
echo. ====================== Windows Remove APPS ======================= 
echo. ==================================================================
echo. == A - Remover Cortana                                          ==
echo. == B - Remover Xbox                                             ==
echo. == C - Remover Microsoft Windows 10 Extensions                  ==
echo. == D - Remover Apps Microsoft, Noticia, Clima, Economia...      ==
echo. == E - Remover Loja Windows e Wallet                            ==
echo. == F - Remover ConectivyStore, conexao microsoft Store....      ==
echo. == G - Remover Microsoft Fotos, Musicas, Videos                 ==
echo. ==       Restaurando visualizador de fotos classico do windows  ==
echo. == H - Aplica Remocoes no registro para permanente              ==
echo. == I - Remover todos os APPS, mantendo Fotos e calculadora...   ==
echo. ==       Aplicando nos registro                                 ==
echo. == J - Reinstalar apps removidos                                ==
echo. ==================================================================
echo. == S - SAIR                                                     ==
echo. ==================================================================
SET /p OPCREMOCAO= ::

if "%OPCREMOCAO%" equ "a" (goto:rCortana)
if "%OPCREMOCAO%" equ "b" (goto:rXbox)
if "%OPCREMOCAO%" equ "c" (goto:rExtensions)
if "%OPCREMOCAO%" equ "d" (goto:rbMicrosoft)
if "%OPCREMOCAO%" equ "e" (goto:rStore)
if "%OPCREMOCAO%" equ "f" (goto:rConectStore)
if "%OPCREMOCAO%" equ "g" (goto:rBasicApps)
if "%OPCREMOCAO%" equ "h" (goto:aRegistro)
if "%OPCREMOCAO%" equ "i" (goto:rTodosApps)
if "%OPCREMOCAO%" equ "j" (goto:reReinstall)

if "%OPCREMOCAO%" equ "A" (goto:rCortana)
if "%OPCREMOCAO%" equ "B" (goto:rXbox)
if "%OPCREMOCAO%" equ "C" (goto:rExtensions)
if "%OPCREMOCAO%" equ "D" (goto:rbMicrosoft)
if "%OPCREMOCAO%" equ "E" (goto:rStore)
if "%OPCREMOCAO%" equ "F" (goto:rConectStore)
if "%OPCREMOCAO%" equ "G" (goto:rBasicApps)
if "%OPCREMOCAO%" equ "H" (goto:aRegistro)
if "%OPCREMOCAO%" equ "I" (goto:rTodosApps)
if "%OPCREMOCAO%" equ "J" (goto:reReinstall)

if "%OPCREMOCAO%" equ "s" (goto:Sair)
if "%OPCREMOCAO%" equ "S" (goto:Sair)
if "%OPCREMOCAO%" equ "sair" (goto:Sair)
if "%OPCREMOCAO%" equ "Sair" (goto:Sair)

if "%OPCREMOCAO%" GEQ "00" (goto:erro)
if "%OPCREMOCAO%" GEQ "aa" (goto:erro)
if "%OPCREMOCAO%" GEQ "AA" (goto:erro)
if "%OPCREMOCAO%" GEQ "@" (goto:erro)
if "%OPCREMOCAO%" GEQ "#" (goto:erro)

:erro
cls
mode con:cols=71 lines=10
color 03
echo ========================================================================
echo ==         * Opcao Invalida! Escolha outra opcao do menu *            ==
echo ========================================================================
echo.
echo Retornando ao menu inicial...
timeout /t 2 > nul
goto:inicioRemoveApps

:rCortana
pause
Echo. Removendo Cortana...
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Windows.Cortana* | Remove-AppxPackage"
	echo. Removendo Cortana.549981C3F5F10
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.549981C3F5F10* | Remove-AppxPackage"
	echo. Removendo Windows.Cortana_1.13.0.18362_neutral_neutral
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Windows.Cortana_1.13.0.18362_neutral_neutral_cw5n1h2txyewy* | Remove-AppxPackage"
	
echo Retornando ao menu inicial...
timeout /t 2 > nul
goto:inicioRemoveApps

:rXbox
pause
Echo. Removendo Xbox Apps...
	Echo. XboxOneSmartGlass...
    powershell -command "Get-AppxPackage -AllUsers *XboxOneSmartGlass* | Remove-AppxPackage"
    Echo. XboxSpeechToTextOverlay...
	powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage"
	Echo. Microsoft.XboxApp...
	powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxApp* | Remove-AppxPackage"
	powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGamingOverlay* | Remove-AppxPackage"
    Echo. XboxGamingOverlay...
	powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameOverlay* | Remove-AppxPackage"
    Echo. XboxIdentityProvider...
	powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxIdentityProvider* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameCallableUI* | Remove-AppxPackage"
    Echo. XboxGameCallableUI...
	powershell -command "Get-AppxPackage -AllUsers *Microsoft.Xbox.TCUI* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxIdentityProvider_12.58.1001.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGamingOverlay_3.34.15002.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameOverlay_1.47.14001.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameCallableUI_1000.18362.449.0_neutral_neutral_cw5n1h2txyewy* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxSpeechToTextOverlay_1.21.13002.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Xbox.TCUI_1.24.10001.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"

echo Retornando ao menu inicial...
timeout /t 2 > nul
goto:inicioRemoveApps

:rExtensions
pause
Echo. Remover Microsoft extencoes
	powershell -command "Get-AppxPackage -AllUsers *Microsoft.VCLibs.140.00* | Remove-AppxPackage"
	powershell -command "Get-AppxPackage -AllUsers *Microsoft.VCLibs* | Remove-AppxPackage"
	powershell -command "Get-AppxPackage -AllUsers *Microsoft.VP9VideoExtensions* | Remove-AppxPackage"
	powershell -command "Get-AppxPackage -AllUsers *Microsoft.WebMediaExtensions* | Remove-AppxPackage"
	powershell -command "Get-AppxPackage -AllUsers *Microsoft.WebpImageExtension* | Remove-AppxPackage"

echo Retornando ao menu inicial...
timeout /t 2 > nul
goto:inicioRemoveApps

:rbMicrosoft
pause
	Echo. Removendo apps Microsoft...
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Office.OneNote* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Whiteboard* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *MinecraftUWP* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.OneConnect* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsNotepad* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *OneNote* | Remove-AppxPackage"
	Echo. People
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.People* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.ScreenSketch* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Office.Sway* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Getstarted* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.YourPhone* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.549981C3F5F10* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.GetHelp* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Getstarted* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsMaps* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Messaging* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *CommsPhone* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *windowsphone* | Remove-AppxPackage"
	Echo. Removendo MixedReality
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
	Echo. Removendo Microsoft Solitaire Collection
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage"
	Echo. Removendo 3DBuilder
		powershell -command "Get-AppxPackage -AllUsers *Microsoft3DViewer* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.3dbuilder* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft3DViewer* | Remove-AppxPackage"
	Echo. Removendo Paint3D
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Print3D* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Paint3D* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.MSPaint3D* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.MSPaint* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Paint3D* | Remove-AppxPackage"
	Echo. Removendo Skype App
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.SkypeApp* | Remove-AppxPackage"
    echo. Removendo Apps BING...
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.BingWeather* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.BingNews* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *bingsports* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *bingfinance* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.bingWeather* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.bingnews* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *BingNews* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *bingnews* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *bingsports* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *bingfinance* | Remove-AppxPackage"
	echo. Removendo DrawboardPDF
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.DrawboardPDF* | Remove-AppxPackage"
	echo. Removendo Appconnector
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Appconnector* | Remove-AppxPackage"
	echo. Removendo Asphalt8Airborne
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Asphalt8Airborne* | Remove-AppxPackage"

echo Retornando ao menu inicial...
timeout /t 2 > nul
goto:inicioRemoveApps

:rStore
pause
Echo. Removendo Windows Store...
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsStore* | Remove-AppxPackage"
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.StorePurchaseApp* | Remove-AppxPackage"
	Echo. Removendo Windows Wallet...
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.Wallet* | Remove-AppxPackage"

echo Retornando ao menu inicial...
timeout /t 2 > nul
goto:inicioRemoveApps

:rConectStore
pause
Echo. Removendo conexao com a Microsoft Store / Windows Store
	powershell -command "Get-AppxPackage -AllUsers *ConnectivityStore* | Remove-AppxPackage"

echo Retornando ao menu inicial...
timeout /t 2 > nul
goto:inicioRemoveApps

:rBasicApps
pause
	Echo. Removendo Microsoft Musica
    powershell -command "Get-AppxPackage -AllUsers *Microsoft.ZuneMusic* | Remove-AppxPackage"
	Echo. Removendo Microsoft Video
	powershell -command "Get-AppxPackage -AllUsers *Microsoft.ZuneVideo* | Remove-AppxPackage"
	Echo. Removendo Microsoft Photos
	powershell -command "Get-AppxPackage -AllUsers *photos* | Remove-AppxPackage"
	powershell -command "Get-AppxPackage -AllUsers *Microsoft.Photos* | Remove-AppxPackage"
	
	regedit.exe /s image.reg

echo Retornando ao menu inicial...
timeout /t 2 > nul
goto:inicioRemoveApps

:aRegistro
pause
echo. Aplicando nos registro do windows
    powershell -command "Get-AppxProvisionedPackage -Online | Remove-AppxProvisionedPackage -Online"

echo Retornando ao menu inicial...
timeout /t 2 > nul
goto:inicioRemoveApps

:rTodosApps
pause

	Echo. Removendo apps Microsoft...
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Office.OneNote* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Whiteboard* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *MinecraftUWP* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.OneConnect* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsNotepad* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *OneNote* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.People* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.ScreenSketch* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Office.Sway* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Getstarted* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.YourPhone* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.549981C3F5F10* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.GetHelp* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Getstarted* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsMaps* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Messaging* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *CommsPhone* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *windowsphone* | Remove-AppxPackage"
	Echo. Removendo Cortana...
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Windows.Cortana* | Remove-AppxPackage"
	echo. Removendo Cortana.549981C3F5F10
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.549981C3F5F10* | Remove-AppxPackage"
	echo. Removendo Windows.Cortana_1.13.0.18362_neutral_neutral
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Windows.Cortana_1.13.0.18362_neutral_neutral_cw5n1h2txyewy* | Remove-AppxPackage"
	Echo. Remote Desktop
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.RemoteDesktop* | Remove-AppxPackage"
	Echo. Removendo MixedReality
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
	Echo. Removendo Microsoft Solitaire Collection
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage"
	Echo. Removendo 3DBuilder
		powershell -command "Get-AppxPackage -AllUsers *Microsoft3DViewer* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.3dbuilder* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft3DViewer* | Remove-AppxPackage"
	Echo. Removendo Paint3D
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Print3D* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Paint3D* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.MSPaint3D* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.MSPaint* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Paint3D* | Remove-AppxPackage"
	Echo. Removendo Skype App
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.SkypeApp* | Remove-AppxPackage"
	Echo. Removendo Microsoft Musica
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.ZuneMusic* | Remove-AppxPackage"
	Echo. Removendo Microsoft Video
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.ZuneVideo* | Remove-AppxPackage"
    echo. Removendo Apps BING...
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.BingWeather* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.BingNews* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *bingsports* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *bingfinance* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.bingWeather* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *Microsoft.bingnews* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *BingNews* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *bingnews* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *bingsports* | Remove-AppxPackage"
        powershell -command "Get-AppxPackage -AllUsers *bingfinance* | Remove-AppxPackage"
	echo. Removendo DrawboardPDF
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.DrawboardPDF* | Remove-AppxPackage"
	echo. Removendo Appconnector
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Appconnector* | Remove-AppxPackage"
	echo. Removendo Asphalt8Airborne
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Asphalt8Airborne* | Remove-AppxPackage"
	Echo. Removendo conexao com a Microsoft Store / Windows Store
		powershell -command "Get-AppxPackage -AllUsers *ConnectivityStore* | Remove-AppxPackage"
	Echo. Removendo Windows Store...
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.WindowsStore* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.StorePurchaseApp* | Remove-AppxPackage"
	Echo. Removendo Windows Wallet...
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Wallet* | Remove-AppxPackage"
	Echo. Removendo Xbox Apps...
	Echo. XboxOneSmartGlass...
		powershell -command "Get-AppxPackage -AllUsers *XboxOneSmartGlass* | Remove-AppxPackage"
    Echo. XboxSpeechToTextOverlay...
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage"
	Echo. Microsoft.XboxApp...
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxApp* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGamingOverlay* | Remove-AppxPackage"
    Echo. XboxGamingOverlay...
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameOverlay* | Remove-AppxPackage"
    Echo. XboxIdentityProvider...
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxIdentityProvider* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameCallableUI* | Remove-AppxPackage"
    Echo. XboxGameCallableUI...
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Xbox.TCUI* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxIdentityProvider_12.58.1001.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGamingOverlay_3.34.15002.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameOverlay_1.47.14001.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxGameCallableUI_1000.18362.449.0_neutral_neutral_cw5n1h2txyewy* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.XboxSpeechToTextOverlay_1.21.13002.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
		powershell -command "Get-AppxPackage -AllUsers *Microsoft.Xbox.TCUI_1.24.10001.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
	
	echo. Aplicando nos registro do windows...
		powershell -command "Get-AppxProvisionedPackage -Online | Remove-AppxProvisionedPackage -Online"
		
echo Retornando ao menu inicial...
timeout /t 2 > nul
goto:inicioRemoveApps

:reReinstall
pause
Echo. Tentando Reintalar Apps
	powershell -command "Get-AppxPackage -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)AppXManifest.xml”}"

echo Retornando ao menu inicial...
timeout /t 2 > nul
goto:inicioRemoveApps

:Sair
	echo Saindo...
timeout /t 2 > nul
exit
