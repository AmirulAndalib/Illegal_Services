@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: Yes
REM  Companyname: Illegal Services
REM  Productname: Illegal Services
REM  Filedescription: Illegal Services
REM  Copyrights: Copyright (C) 2020 IB_U_Z_Z_A_R_Dl
REM  Trademarks: Copyright (C) 2020 IB_U_Z_Z_A_R_Dl
REM  Originalname: Illegal_Services.exe
REM  Comments: Illegal Services
REM  Productversion:  5. 8. 3. 2
REM  Fileversion:  5. 8. 3. 2
REM  Internalname: Illegal_Services.exe
REM  Appicon: Ressources\Icons\icon.ico
REM  AdministratorManifest: Yes
REM  QBFC Project Options End
@ECHO ON
@echo off
cd /d "%~dp0"
setlocal enabledelayedexpansion
cls
set "hidecursor=<nul set /p=[?25l"
set "showcursor=<nul set /p=[?25h"
%hidecursor%
if defined Language for %%a in (FAQ SCANWEBSITES NMAP YOUTUBEDL PINGER) do if "%*"=="%%a" (
call :APPLY_SETTINGS
for /f "tokens=6" %%a in ('cmdwiz.exe getconsoledim') do if %%a lss 120 call :SCALE 120 30
goto :PROCESS_%%a
)
call :SCALE 125 19
if exist "cmdwiz.exe" cmdwiz.exe setquickedit 0
set IS_Reg=HKCU\SOFTWARE\IB_U_Z_Z_A_R_Dl\Illegal Services
call :CHECK_LANGUAGE
call :CHECK_USERNAME
title Welcome [!IS_USERNAME!] to Illegal Services . . .
if defined TEMP (set "TMPF=!TEMP!") else if defined TMP (set "TMPF=!TMP!") else (
if "!Language!"=="EN" set t="Your 'TEMP' and 'TMP' environment variables do not exist." "Please fix one of them and try again."
if "!Language!"=="FR" set t="Vos variables d'environnement 'TEMP' et 'TMP' n'existent pas." "Veuillez r�parer l'une d'entre elles et r�essayer."
call :MSGBOX 2 !t! 69648 "Illegal Services Checker"
start https://t.me/illegal_services_forum
exit
)
if not exist "Curl" <nul set /p="%~dp0" | >nul findstr /c:"!TEMP!" /c:"!TMP!" && (
if "!Language!"=="EN" set t="Illegal Services cannot start because you are running it from an archive. Reopen it once the archive is extracted."
if "!Language!"=="FR" set t="Illegal Services ne peut pas d�marrer car vous l'ex�cutez � partir d'une archive. Rouvrez-le une fois l'archive extraite."
call :MSGBOX 1 !t! 69680 "Illegal Services Checker"
exit
)
if defined lastversion (
rem if "%~nx0"=="Illegal Services.exe" if "!version!" leq "!lastversion!" start Illegal_Services.exe UPDATE_FAILED
echo  �������������������������������������
if "!Language!"=="EN" echo  � Debugging: This is a developer-only message for future improvement of the Illegal Services updater.
if "!Language!"=="FR" echo  � D�bogage: Ceci est un message r�serv� au d�veloppeur pour une future am�lioration de l'updater d'Illegal Services.
echo  �����������������������������
echo  � Current Version: !version!
echo  � Last Version: !lastversion!
echo  �����������������������������
echo.
if "!Language!"=="EN" echo Press {ENTER} to continue...
if "!Language!"=="FR" echo Appuyez sur {ENTRER} pour continuer...
>nul pause
cls
)
if /i "%~x0"==".exe" (set "IS_Process=%~nx0") else set "IS_Process=cmd.exe" & goto :LAUNCHER
if "%~nx0"=="Illegal Services.exe" >nul move /y "%~nx0" "Illegal_Services.exe" && start Illegal_Services.exe && exit
for /f %%a in ('tasklist /fo csv /fi "imagename eq %~nx0" ^| findstr /c:"%~nx0"') do set /a cn+=1
pushd "!TMPF!"
set batused=
for /f %%a in ('dir "????????.bat" /a:-d /o:-d /b ^| findstr /rc:"........\.bat"') do (
if not defined batused (
set "batused=%%a"
attrib -s -h "%%a"
attrib +s +h +i "%%a"
)
if !cn! gtr 1 goto :LAUNCHER
if not "%%a"=="!batused!" del /f /q /a "%%a"
)

:LAUNCHER
popd
set version=v5.8.3.2 - 03/09/2021
set "el=bgblack=[40m,bgyellow=[43m,bgwhite=[47m,black=[30m,red=[31m,green=[32m,yellow=[33m,blue=[34m,magenta=[35m,cyan=[36m,white=[37m,grey=[90m,brightred=[91m,brightblue=[94m,brightmagenta=[95m,underline=[4m,underlineoff=[24m"
set "%el:,=" && set "%"
echo !bgblack!!brightblue!
call :DRAW_LOGO
echo:
echo [29C!cyan!{!red!+!cyan!}---------------------------------------------------------------{!red!+!cyan!}!red!
if "!Language!"=="EN" call :DRAW_CENTER "   !yellow!Welcome [!red!!IS_USERNAME!!yellow!] to Illegal Services !version:~,8!   !red!" 20
if "!Language!"=="FR" call :DRAW_CENTER "   !yellow!Bienvenue [!red!!IS_USERNAME!!yellow!] dans Illegal Services !version:~,8!   !red!" 20
echo [29C!cyan!{!red!+!cyan!}---------------------------------------------------------------{!red!+!cyan!}
for /f %%a in ('2^>nul dir "!TMPF!\URL????.url" /a:-d /b ^| findstr /rc:"URL....\.url"') do del /f /q "!TMPF!\%%a"
for %%a in (README.md "Illegal Services.exe" "!TMPF!\msgbox.vbs" "!TMPF!\IS.Setup.exe") do if exist "%%~a" del /f /q "%%~a"
for %%a in ("!cd:~,2!\AI_RecycleBin" "!SystemDrive!\AI_RecycleBin" "!TMPF!\IB_U_Z_Z_A_R_Dl") do if exist "%%~a" 2>nul rd /s /q "%%~a"
set "sp=!grey![30C$ [!red!!IS_USERNAME!!grey!] "
echo !grey!
if defined ProgramFiles(x86) (set arch=64) else set arch=86
set "IS_Dir=%~dp0Illegal Services\"
set "IS_Dir=!IS_Dir:Illegal Services\Illegal Services\=Illegal Services\!"
for %%a in (Curl\x!arch!\curl.exe) do if not exist "%%a" (
if "!Language!"=="EN" set t="Illegal Services can't start because '!IS_Dir!%%a' is missing." "Please reinstall Illegal Services and try again."
if "!Language!"=="FR" set t="Illegal Services ne peut pas d�marrer car '!IS_Dir!%%a' est manquant." "Veuillez r�installer Illegal Services et r�essayer."
call :MSGBOX 2 !t! 69648 "Illegal Services Checker"
start https://t.me/illegal_services
exit
)

:LAUNCHER_PROXY
if "!Language!"=="EN" set t=Searching a
if "!Language!"=="FR" set t=Recherche d'un
<nul set /p=!sp!!t! proxy ^>
set git_list=bitbucket.org/IllegalServices/illegal_services git.teknik.io/Illegal-Services/Illegal_Services github.com/Illegal-Services/Illegal_Services gitee.com/Illegal-Services/illegal_services
call :PROXY

:LAUNCHER_VERSION
if defined git for /f "delims=/" %%a in ("!git:*://=!") do if defined git_backup (echo  !green![!red!Git backup server: !green!%%a] . . .) else if "!git!"=="404 Git proxy not found" (echo  !red![FAILED] . . .) else echo  !green![%%a] . . .
if "!Language!"=="EN" <nul set /p=!sp!Searching for a new update ^>
if "!Language!"=="FR" <nul set /p=!sp!Recherche d'une nouvelle mise � jour ^>
call :CHECK_VOICEASSISTANT
call :GET_VERSION
if defined lastversion (echo  !green![!lastversion!] . . .) else echo  !red![FAILED] . . .
if "!errorlevel!"=="1" call :CHECKER_SETUP_FOUND
if "!errorlevel!"=="2" call :CHECKER_BUILD_FOUND

:CHECKERINTEGRITY
if "!Language!"=="EN" echo !sp!Checking files integrity . . .
if "!Language!"=="FR" echo !sp!V�rification de l'int�grite des fichiers . . .
for %%a in (COPYING ChangeLog.txt cmdbkg.exe cmdwiz.exe SaveFileBox.exe OpenFileBox.exe EULA.rtf Tutorial.html 7za\x!arch!\7zxa.dll 7za\x!arch!\7za.dll 7za\x!arch!\7za.exe Speak\speak-x!arch!.exe Speak\extd.exe Speak\!Language!.lang) do if not exist "%%a" (
set el=%%a
set el=!el:\=/!
call :MISSING_FILE %%a
call :CURL "%%a" "`git_raw_main`/!el!" || call :ERROR_FATAL %%a
)
for /l %%a in (1,1,12) do if not exist "Backgrounds\background-%%a.jpg" (
call :MISSING_FILE Backgrounds\background-%%a.jpg
call :CURL "Backgrounds.7z" "`git_raw_downloads`/Backgrounds.7z" || call :ERROR_FATAL Backgrounds\background-!el!.jpg
goto :CHECKERWINDOWS
)

:CHECKERWINDOWS
if "!Language!"=="EN" <nul set /p=!sp!Checking Windows version ^>
if "!Language!"=="FR" <nul set /p=!sp!V�rification de votre version de Windows ^>
for /f "tokens=4-7delims=[.] " %%a in ('ver') do if /i "%%a"=="Version" (set "windowsversion=%%b.%%c") else set "windowsversion=%%a.%%b"
for /f "tokens=2delims=:" %%a in ('chcp') do set /a CP=%%a
if defined windowsversion (echo  !green![!windowsversion!, x!arch!] . . .) else echo  !red![?, !green!x!arch!!red!] . . .
if not "!windowsversion!"=="10.0" if not "!windowsversion!"=="6.3" if not "!windowsversion!"=="6.2" if not "!windowsversion!"=="6.1" (
if "!Language!"=="EN" set t="ERROR: Your computer does not reach the minimum Windows version compatible with Illegal Services." "You need Windows 7 or higher."
if "!Language!"=="FR" set t="ERREUR: Votre ordinateur n'atteint pas la version minimale de Windows compatible avec Illegal Services." "Vous avez besoin de Windows 7 ou sup�rieur."
call :MSGBOX 2 !t! 69648 "Illegal Services Checker"
exit
)
if not "!windowsversion!"=="10.0" call :INSTALL_ANSICON "%~f0"

:LAUNCHER_APPLY_SETTINGS
if "!Language!"=="EN" echo !sp!Applying your settings . . .
if "!Language!"=="FR" echo !sp!Applique vos param�tres . . .
call :APPLY_SETTINGS

:LAUNCHER_START
call :ROSE "Welcome Back"
if "!Language!"=="EN" echo !sp!Starting Illegal Services . . .
if "!Language!"=="FR" echo !sp!D�marrage d'Illegal Services . . .
for /f "tokens=2*" %%a in ('reg query "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') do set "ISOutputDirectory=%%b\Illegal Services"
set "checked=!cyan![!yellow!x!cyan!]!white! "
set "unchecked=!cyan![ ]!white! "
call :CHECK_VOICEASSISTANTCHOICE
if "!VoiceAssistantChoice!"=="1" call :ROSE_SETUP
:L1
for %%a in (extd speak-x!arch!) do tasklist /fo csv /fi "imagename eq %%a.exe" | >nul findstr /c:"%%a.exe" && goto :L1
if "!VoiceAssistant!"=="0" >nul timeout /t 1 /nobreak
call :SCALE 125 29
set is_title=Illegal Services v
for /l %%a in (1,1,18) do title !is_title:~,%%a! & cmdwiz.exe delay 20

:MAINMENU
title Illegal Services !version:~,4!  ^|Git !git_backup!proxy: !git!^|
if defined MAINMENU (call :ROSE) else (call :ROSE "Main Menu" & set MAINMENU=1)
call :SCALE 125 29
echo !grey!
call :DRAW_LOGO
echo !cyan!
echo [19C�������������������������������������������������������������������������������������ͻ
<nul set /p=!brightred!                                  !underline!!version:~,8!!underlineoff!             !red!�!bgyellow! MAIN MENU !bgblack!!red!�!bgblack!!brightred!
if "!Language!"=="EN" (set t=Welcome) else set t=Bienvenue
call :DRAW_CUSTOM_CENTER 37 "!underline!!t! !IS_USERNAME!!underlineoff!!cyan!" 14
echo [19C�������������������������������������������������������������������������������������͹
echo [19C�    !yellow!1!cyan!  ^>  !white!Internet Protocol TV (IPTV)!cyan!    �    !yellow!10!cyan!  ^>  !white!IP Denial of Services (DDoS)!cyan!    �
echo [19C�    !yellow!2!cyan!  ^>  !white!Direct Download Link (DDL)!cyan!     �    !yellow!11!cyan!  ^>  !white!IP Address Lookup!cyan!               �
echo [19C�    !yellow!3!cyan!  ^>  !white!Streaming!cyan!                      �    !yellow!12!cyan!  ^>  !white!IP Port Scanning!cyan!                �
echo [19C�    !yellow!4!cyan!  ^>  !white!Torrenting!cyan!                     �    !yellow!13!cyan!  ^>  !white!IP Port Pinger!cyan!                  �
echo [19C�    !yellow!5!cyan!  ^>  !white!Subtitles!cyan!                      �    !yellow!14!cyan!  ^>  !white!IP Pinger!cyan!                       �
echo [19C�    !yellow!6!cyan!  ^>  !white!Cracked Windows apps!cyan!           �    !yellow!15!cyan!  ^>  !white!IP Loggers!cyan!                      �
echo [19C�    !yellow!7!cyan!  ^>  !white!Cracked Android APK's!cyan!          �    !yellow!16!cyan!  ^>  !white!Doxing!cyan!                          �
echo [19C�    !yellow!8!cyan!  ^>  !white!YouTube Downloader!cyan!             �    !yellow!17!cyan!  ^>  !white!Portable Apps!cyan!                   �
echo [19C�    !yellow!9!cyan!  ^>  !white!Useful Websites!cyan!                �    !yellow!18!cyan!  ^>  !white!More Features!cyan!                   �
echo [19C�������������������������������������������������������������������������������������͹
if "!Language!"=="EN" echo [19C�    !yellow!C!cyan!  ^>  !white!Credits!cyan!!underlineoff!     �    !yellow!N!cyan!  ^>  !brightred!Our Social Networks!cyan!    �      !yellow!S!cyan!  ^>  !white!Settings!cyan!!underlineoff!        �
if "!Language!"=="FR" echo [19C�    !yellow!C!cyan!  ^>  !white!Credits!cyan!!underlineoff!     �    !yellow!R!cyan!  ^>  !brightred!Nos R�seaux Sociaux!cyan!    �      !yellow!P!cyan!  ^>  !white!Param�tres!cyan!!underlineoff!      �
echo [19C�������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!HELP!grey!" / "!yellow!FAQ!grey!" / "!yellow!CHANGELOG!grey!" !t2! !yellow!{!t3!}!grey!." 40
echo:
call :CHECK_FIRSTLAUNCH
if "!version:~5,3!"=="0.0" if "!FirstLaunch!"=="1" (
call :CHECK_FIRSTLAUNCH
if "!Language!"=="EN" set t="News in !version:~,8!:"" & Chr(10) & Chr(10) & ""Updated: IS Source, Internet Protocol Television, Direct Download Link, Streaming, Torrenting, Subtitles, Cracked Windows Apps, Cracked Android APK's, Useful Websites, IP Denial of Services, Portable Apps, More Features."
if "!Language!"=="FR" set t="Nouveaut�s dans la !version:~,8!:"" & Chr(10) & Chr(10) & ""Mise � jour de: IS Source, Internet Protocol Television, Direct Download Link, Streaming, Torrenting, Subtitles, Cracked Windows Apps, Cracked Android APK's, Useful Websites, IP Denial of Services, Portable Apps, More Features."
mshta vbscript:Execute^("msgbox "!t!",69696,""Illegal Services News"":close"^)
if "!Language!"=="EN" set t="Developer Note:"" & Chr(10) & Chr(10) & ""In this update, I added 'Warez Wikis' and 'Ebooks' menus in 'More Features'. Reviewed the 'Torrenting' and 'Cracked Windows apps' categories. Updated many categories. Fixed minor bugs."
if "!Language!"=="FR" set t="Note du d�veloppeur:"" & Chr(10) & Chr(10) & ""Dans cette mise � jour, j'ai ajout� les menus 'Warez Wikis' et 'Ebooks' dans 'More Features'. Pass� en revue les cat�gories 'Torrenting' et 'Cracked Windows apps'. Mis � jour de nombreuses cat�gories. Corrig� des bugs mineurs."
mshta vbscript:Execute^("msgbox "!t!",69696,""Illegal Services News"":close"^)
>nul reg add "!IS_Reg!" /v "FirstLaunch" /t REG_DWORD /d 0 /f
)
call :PROMPT
for %%a in (3 4) do if "!x!"=="1%%a" call :CHECK_INTERNET || (call :ERROR_INTERNET & goto :MAINMENU)
set cn=
for %%a in (IPTV DDL STREAMING TORRENTING SUBTITLES WINDOWS ANDROID YOUTUBEDL USEFULWEBSITES DDOS IPLOOKUP PORT PINGERPORT IPPINGER IPLOGGERS DOXING PORTABLEAPPS MOREFEATURES) do (
set /a cn+=1
if "!x!"=="!cn!" goto :%%a
)
call :CHOOSE credit && goto :CREDITS
if "!Language!"=="EN" set t=networks
if "!Language!"=="FR" set t=reseaux
call :CHOOSE !t! && (
start https://bitbucket.org/IllegalServices/illegal_services && cmdwiz.exe delay 1500
start https://t.me/illegal_services_forum && cmdwiz.exe delay 1500
start https://t.me/illegal_services && cmdwiz.exe delay 1500
start https://discord.gg/rU2w2E83KF && cmdwiz.exe delay 1500
start https://twitter.com/illegalservices && cmdwiz.exe delay 1500
start https://addons.mozilla.org/addon/illegal-services
goto :MAINMENU
)
if "!Language!"=="EN" set t=settings
if "!Language!"=="FR" set t=parametres
call :CHOOSE !t! && goto :SETTINGS
call :CHOOSE help && (start /max tutorial.html & goto :MAINMENU)
call :CHOOSE changelog && (start /max changeLog.txt & goto :MAINMENU)
call :CHOOSE faq && (call :SHOW_WINDOW "Frequently Asked Questions" || (start "" "%~0" FAQ) & goto :MAINMENU)
call :ERRORMESSAGE
goto :MAINMENU

:CREDITS
call :SCALE 99 34
if "!Language!"=="EN" title Credits / Thanks / Helpers
if "!Language!"=="FR" title Cr�dits / Remerciement / Aideurs
call :ROSE Credits

:CONTINUECREDITS
call :SCALE 94 34
echo !cyan!
echo [39C���������������
echo [38C// !red!�!bgyellow!!black! CREDITS !red!�!bgblack!!cyan! \\
echo [9C��������������������������������������������������������������������������ͻ
echo [9C������������������������������!bgyellow!!red!� DEPENDENCIES �!bgblack!!cyan!����������������������������͹
echo [9C�                                                                          �
echo [9C�      !yellow!1!cyan!  ^>  !white!Open/SaveFileBox     : 'Open/Save file box dialog'!cyan!            �
echo [9C�      !yellow!2!cyan!  ^>  !white!Speak by soyalk 2019 : 'Rose voice assistant'!cyan!                 �
echo [9C�      !yellow!3!cyan!  ^>  !white!Speak by Fatih Kodak : 'Rose voice assistant'!cyan!                 �
echo [9C�      !yellow!4!cyan!  ^>  !white!Advanced Installer   : 'Setup Installer'!cyan!                      �
echo [9C�      !yellow!5!cyan!  ^>  !white!ANSICON: 'Support for Windows 2000, Vista, 7, 8 and 8.1'!cyan!      �
echo [9C�      !yellow!6!cyan!  ^>  !white!CmdWiz : 'Background Transparency, Hide Cursor, ...'!cyan!          �
echo [9C�      !yellow!7!cyan!  ^>  !white!CmdBkg : 'Background Image'!cyan!                                   �
echo [9C�      !yellow!8!cyan!  ^>  !white!7-Zip  : 'Decompressing Tool'!cyan!                                 �
echo [9C�      !yellow!9!cyan!  ^>  !white!curl   : 'Web Requests'!cyan!                                       �
echo [9C�                                                                          �
echo [9C�������������������������!bgyellow!!red!� DEVELOPERS and HELPERS �!bgblack!!cyan!�����������������������͹
echo [9C�                                                                          �
echo [9C�                   !yellow!10!cyan!  ^>  !white!Program Dream Discord Server!cyan!                    �
echo [9C�                   !yellow!11!cyan!  ^>  !white!server.bat Discord Server!cyan!                       �
echo [9C�                   !yellow!12!cyan!  ^>  !white!@anic17!cyan!                                         �
echo [9C�                   !yellow!13!cyan!  ^>  !white!@^<Tim^>!cyan!                                          �
echo [9C�                   !yellow!14!cyan!  ^>  !white!@sintrode!cyan!                                       �
echo [9C�                   !yellow!15!cyan!  ^>  !white!@Grub4K!cyan!                                         �
echo [9C�                   !yellow!16!cyan!  ^>  !white!@Rosalyn!cyan!                                        �
echo [9C�                   !yellow!17!cyan!  ^>  !white!@Ms.CatFire!cyan!                                     �
echo [9C�                   !yellow!18!cyan!  ^>  !white!All other contributors!cyan!                          �
echo [9C��������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 20
echo:
call :PROMPT
if "!x!"=="1" start https://www.robvanderwoude.com/dialogboxes.php
if "!x!"=="2" start https://github.com/soyalk/speak-text-windows
if "!x!"=="3" start https://f2ko.de/programme/cmd-tools/
if "!x!"=="4" start https://www.advancedinstaller.com/
if "!x!"=="5" start https://github.com/adoxa/ansicon
if "!x!"=="6" start https://www.dostips.com/forum/viewtopic.php?t=7407
if "!x!"=="7" start https://www.dostips.com/forum/viewtopic.php?t=7402
if "!x!"=="8" start https://www.7-zip.org/
if "!x!"=="9" start https://curl.se/
if "!x!"=="10" start https://discord.com/invite/eCMBHUB
if "!x!"=="11" start https://discord.com/invite/eXjp7PQ
if "!x!"=="12" (
if "!Language!"=="EN" set t="Helped improving and reducing code." "Helped fixing a bug that where creating temporary files without deleting them." "Helped improving IP Lookup API's." "Helped adding launcher updater."
if "!Language!"=="FR" set t="A aid� � am�liorer et � r�duire le code." "A aid� � la correction d'un bug qui entra�nait la cr�ation de fichiers temporaires sans les supprimer." "A aid� � am�liorer l'API de l'IP Lookup." "A aid� � l'ajout des mises � jour du launcher."
call :MSGBOX 4 !t! 69696 "anic17 'Task failed successfully'"
start https://github.com/anic17
)
if "!x!"=="13" (
if "!Language!"=="EN" set t="Helped improving and reducing code." "Helped adding launcher updater." "Helped creating windows repair." "Helped adding Rose voice assistant."
if "!Language!"=="FR" set t="A aid� � am�liorer et � r�duire le code." "A aid� � l'ajout des mises � jour du launcher." "A aid� � la cr�ation de windows repair." "A aid� � l'ajout de l'assistante vocal Rose."
call :MSGBOX 4 !t! 69696 "<Tim>"
start https://tim-greller.de/home/
)
if "!x!"=="14" (
if "!Language!"=="EN" set t="Helped improving and reducing code." "Helped using curl for IS source." "Helped adding Rose voice assistant." "Helped adding choice verification."
if "!Language!"=="FR" set t="A aid� � am�liorer et � r�duire le code." "A aid� � l'utilisation de curl pour la source d'IS." "A aid� � l'ajout de l'assistante vocale Rose." "A aid� � l'ajout de la v�rification des choix."
call :MSGBOX 4 !t! 69696 "sintrode"
if "!Language!"=="EN" set t="Helped adding Automatic proxy switcher."
if "!Language!"=="FR" set t="A aid� � ajouter le proxy switcher automatique."
call :MSGBOX 1 !t! 69696 "sintrode"
start https://github.com/sintrode
)
if "!x!"=="15" (
if "!Language!"=="EN" set t="Helped improving and reducing code." "Created IS Bookmarks web extension." "Created the timer in seconds to scan indexed websites." "Fixed a bug with the stack memory overflow causing IS to crash. "
if "!Language!"=="FR" set t="A aid� � am�liorer et � r�duire le code." "Cr�ation de l'extension Web IS Bookmarks." "Cr�ation de la minuterie en secondes du scan des sites internet index�s." "Correction d'un bug avec le d�bordement de la m�moire de la pile provoquant le plantage d'IS."
call :MSGBOX 4 !t! 69696 "Grub4K"
if "!Language!"=="EN" set t="Created the code to center the text on the UI."
if "!Language!"=="FR" set t="A cr�� le code pour centrer le texte sur l'UI."
call :MSGBOX 1 !t! 69696 "Grub4K"
start https://github.com/Grub4K
)
if "!x!"=="16" (
if "!Language!"=="EN" set t="Helping testing alpha versions." "Helping to find existing bugs." "Gave me a lot of motivation and encouragement." "                                            *Notice you the shine ?"
if "!Language!"=="FR" set t="A aid� � tester les versions alpha." "A aid� � trouver les bugs existants." "M'a donn� beaucoup de motivation et d'encouragement." "                                                           *Notice you the shine ?"
call :MSGBOX 4 !t! 69696 "Rosalyn 'Shine brightest'"
)
if "!x!"=="17" (
if "!Language!"=="EN" set t=Logo designer for
if "!Language!"=="FR" set t=Conceptrice du logo de la
call :MSGBOX 1 "!t! v4.0" 69696 "Ms.CatFire"
)
if "!x!"=="18" (
if "!Language!"=="EN" (
echo Dim Msg,Style,Title,Response
echo Msg="@Agam - Added ON/OFF switches."^&vbCrLf^&"@Vincent - Helped finding a bug with wrong choices."^&vbCrLf^&"@cocorisss - Updated Python Port Scanner."^&vbCrLf^&"@Chonkus - Added Internet Protocol TV (IPTV)."^&vbCrLf^&"@KiritoLeFakePK - Helped finding existing bugs."^&vbCrLf^&"@Simi - Helped with some English translation."^&vbCrLf^&"@Saltyy - Helped improving UI choices."^&vbCrLf^&"@AMIT - Fixed 'ControlSet001' to 'CurrentControlSet'."^&vbCrLf^&"@LeSaintFisti - Added 6 websites."^&vbCrLf^&"@Trident Security - Added 2 websites."^&vbCrLf^&"@Bastien - Added 1 website."^&vbCrLf^&"@RaaFii1 - Added 1 website."^&vbCrLf^&"@snipercat - Added 1 website."^&vbCrLf^&"@PistachePoilue - Added 1 website."^&vbCrLf^&"@Eiralys - Added 1 website."
echo Style=69696
echo Title="All other contributors:"
echo Response=MsgBox^(Msg,Style,Title^)
)>"!TMPF!\msgbox.vbs"
if "!Language!"=="FR" (
echo Dim Msg,Style,Title,Response
echo Msg="@Agam - A ajout� les interrupteurs ON/OFF."^&vbCrLf^&"@Vincent - A aid� � trouver un bug avec les mauvais choix."^&vbCrLf^&"@cocorisss - Mise � jour du Port Scanner Python."^&vbCrLf^&"@Chonkus - A ajout� Internet Protocol TV (IPTV)."^&vbCrLf^&"@KiritoLeFakePK - A aid� � trouver les bugs existants."^&vbCrLf^&"@Simi - A aid� pour certaines traductions Anglaise."^&vbCrLf^&"@Saltyy - A aid� � am�liorer les choix d'interface utilisateur."^&vbCrLf^&"@AMIT - A corrig� 'ControlSet001' vers 'CurrentControlSet'."^&vbCrLf^&"@LeSaintFisti - A ajout� 6 sites internet."^&vbCrLf^&"@Trident Security - A ajout� 2 sites internet."^&vbCrLf^&"@Bastien - A ajout� 1 site internet."^&vbCrLf^&"@RaaFii1 - A ajout� 1 site internet."^&vbCrLf^&"@snipercat - A ajout� 1 site internet."^&vbCrLf^&"@PistachePoilue - A ajout� 1 site internet."^&vbCrLf^&"@Eiralys - A ajout� 1 site internet."
echo Style=69696
echo Title="Toutes les autres personnes qui m'ont aid�"
echo Response=MsgBox^(Msg,Style,Title^)
)>"!TMPF!\msgbox.vbs"
cscript //nologo "!TMPF!\msgbox.vbs"
del /f /q "!TMPF!\msgbox.vbs"
)
for /l %%a in (1,1,18) do if "!x!"=="%%a" goto :CONTINUECREDITS
call :CHOOSE back && goto :MAINMENU
call :ERRORMESSAGE
goto :CONTINUECREDITS

:SETTINGS
call :SCALE 113 26
title Settings
call :ROSE Settings

:CLEARSETTINGS
call :CHECK_SETTINGS
if !BackgroundTransparency! lss 10 (set "el= ") else set el=
if "!Language!"=="EN" (
set "BackgroundTransparencyInfo=Change background transparency. !cyan!(!yellow!!BackgroundTransparency!!cyan!)     !el!�"
if "!BackgroundBorderTransparencyValue!"=="1" set "BackgroundBorderTransparencyInfo=Borders transparency !cyan!(!green!ON!!cyan!)                �"
if "!BackgroundBorderTransparencyValue!"=="0" set "BackgroundBorderTransparencyInfo=Borders transparency !cyan!(!red!OFF!!cyan!)               �"
if "!BackgroundDisabled!"=="0" set "BackgroundDisabledInfo=Wallpaper background !cyan!(!green!ON!!cyan!)                �"
if "!BackgroundDisabled!"=="1" set "BackgroundDisabledInfo=Wallpaper background !cyan!(!red!OFF!!cyan!)               �"
if "!VoiceAssistant!"=="1" set "VoiceAssistantInfo=Rose voice assistant !cyan!(!green!ON!!cyan!)                �"
if "!VoiceAssistant!"=="0" set "VoiceAssistantInfo=Rose voice assistant !cyan!(!red!OFF!!cyan!)               �"
if "!DeveloperMode!"=="1" (
set "DeveloperModeInfo=Developer mode !cyan!(!green!ON!!cyan!)                      �"
set "ExtractSourceInfo=!yellow!24!cyan!  ^> !white! Extract IS source code.!cyan!                  �"
)
if "!DeveloperMode!"=="0" (
set "DeveloperModeInfo=Developer mode !cyan!(!red!OFF!!cyan!)                     �"
set "ExtractSourceInfo=                                                �"
)
set "ScanWebsitesInfo=Scan down or changed domain websites.!cyan!    �"
)
if "!Language!"=="FR" (
set "BackgroundTransparencyInfo=Changer background transparence. !cyan!(!yellow!!BackgroundTransparency!!cyan!)!cyan!    !el!�"
if "!BackgroundBorderTransparencyValue!"=="1" set "BackgroundBorderTransparencyInfo=Transparence des bords !cyan!(!green!ON!!cyan!)              �"
if "!BackgroundBorderTransparencyValue!"=="0" set "BackgroundBorderTransparencyInfo=Transparence des bords !cyan!(!red!OFF!!cyan!)             �"
if "!BackgroundDisabled!"=="0" set "BackgroundDisabledInfo=Fond d'�cran !cyan!(!green!ON!!cyan!)                        �"
if "!BackgroundDisabled!"=="1" set "BackgroundDisabledInfo=Fond d'�cran !cyan!(!red!OFF!!cyan!)                       �"
if "!VoiceAssistant!"=="1" set "VoiceAssistantInfo=Assistance vocal Rose !cyan!(!green!ON!!cyan!)               �"
if "!VoiceAssistant!"=="0" set "VoiceAssistantInfo=Assistance vocal Rose !cyan!(!red!OFF!!cyan!)              �"
if "!DeveloperMode!"=="1" (
set "DeveloperModeInfo=Mode d�veloppeur !cyan!(!green!ON!!cyan!)                    �"
set "ExtractSourceInfo=!yellow!24!cyan!  ^>  !white!Extraire le code source d'IS.!cyan!            �"
)
if "!DeveloperMode!"=="0" (
set "DeveloperModeInfo=Mode d�veloppeur !cyan!(!red!OFF!!cyan!)                   �"
set "ExtractSourceInfo=                                                �"
)
set "ScanWebsitesInfo=Scan les sites internet index�s.!cyan!         �"
)

:CONTINUESETTINGS
call :SCALE 113 26
title Settings
echo !cyan!
if "!Language!"=="EN" (
echo [47C����������������
echo [46C// !red!�!bgyellow!!black! SETTINGS !red!�!bgblack!!cyan! \\
)
if "!Language!"=="FR" (
echo [46C������������������
echo [45C// !red!�!bgyellow!!black! PARAMETRES !red!�!bgblack!!cyan! \\
)
echo [7C�������������������������������������������������������������������������������������������������ͻ
if "!Language!"=="EN" echo [7C����������������!bgyellow!!red!� WALLPAPERS �!bgblack!!cyan!������������������������������������!bgyellow!!red!� SETTINGS �!bgblack!!cyan!�������������������͹
if "!Language!"=="FR" echo [7C���������������!bgyellow!!red!� FOND D'ECRANS �!bgblack!!cyan!���������������������������������!bgyellow!!red!� PARAMETRES �!bgblack!!cyan!������������������͹
echo [7C�                                             �                                                   �
echo [7C�    !yellow!1!cyan!  ^> !white! Kirito 1 (IS v1.4 icon)!cyan!            �   !yellow!13!cyan!  ^> !white! !BackgroundTransparencyInfo!
echo [7C�    !yellow!2!cyan!  ^> !white! Kirito 2!cyan!                           �   !yellow!14!cyan!  ^> !white! !BackgroundBorderTransparencyInfo!
echo [7C�    !yellow!3!cyan!  ^> !white! Kirito 3!cyan!                           �   !yellow!15!cyan!  ^> !white! !BackgroundDisabledInfo!
echo [7C�    !yellow!4!cyan!  ^> !white! Kirito 4!cyan!                           �   !yellow!16!cyan!  ^> !white! !VoiceAssistantInfo!
echo [7C�    !yellow!5!cyan!  ^> !white! 49206C6F766520796F75204C697361!cyan!     �   !yellow!17!cyan!  ^> !white! !DeveloperModeInfo!
echo [7C�    !yellow!6!cyan!  ^> !white! Even Roses are colorless !cyan!          �   !yellow!18!cyan!  ^> !white! !ScanWebsitesInfo!
if "!Language!"=="EN" echo [7C�    !yellow!7!cyan!  ^> !white! Tree!cyan!                               �   !yellow!19!cyan!  ^> !white! Check for updates.!cyan!                       �
if "!Language!"=="FR" echo [7C�    !yellow!7!cyan!  ^> !white! Arbre!cyan!                              �   !yellow!19!cyan!  ^> !white! V�rifiez les mises � jour.!cyan!               �
if "!Language!"=="EN" echo [7C�    !yellow!8!cyan!  ^> !white! Dark Guy!cyan!                           �   !yellow!20!cyan!  ^> !white! Change username.!cyan!                         �
if "!Language!"=="FR" echo [7C�    !yellow!8!cyan!  ^> !white! Homme sombre!cyan!                       �   !yellow!20!cyan!  ^> !white! Changer le nom d'utilisateur.!cyan!            �
if "!Language!"=="EN" echo [7C�    !yellow!9!cyan!  ^> !white! Girl eyes!cyan!                          �   !yellow!21!cyan!  ^> !white! Change language to French.!cyan!               �
if "!Language!"=="FR" echo [7C�    !yellow!9!cyan!  ^> !white! Yeux fille!cyan!                         �   !yellow!21!cyan!  ^> !white! Changer la langue en Anglais.!cyan!            �
if "!Language!"=="EN" echo [7C�   !yellow!10!cyan!  ^> !white! World map (bytes)!cyan!                  �   !yellow!22!cyan!  ^> !white! Export\Import settings.!cyan!                  �
if "!Language!"=="FR" echo [7C�   !yellow!10!cyan!  ^> !white! Carte du monde (bytes)!cyan!             �   !yellow!22!cyan!  ^> !white! Exporter\Importer les param�tres.!cyan!        �
if "!Language!"=="EN" echo [7C�   !yellow!11!cyan!  ^> !white! World map (Corona Virus)!cyan!           �   !yellow!23!cyan!  ^> !white! Uninstall Illegal Services.!cyan!              �
if "!Language!"=="FR" echo [7C�   !yellow!11!cyan!  ^> !white! Carte du monde (Corona Virus)!cyan!      �   !yellow!23!cyan!  ^> !white! D�sinstaller Illegal Services.!cyan!           �
if "!Language!"=="EN" echo [7C�   !yellow!12!cyan!  ^> !white! World map (cool)!cyan!                   �   !ExtractSourceInfo!
if "!Language!"=="FR" echo [7C�   !yellow!12!cyan!  ^> !white! Carte du monde (cool)!cyan!              �   !ExtractSourceInfo!
echo [7C�                                             �                                                   �
echo [7C�������������������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!OPEN!grey!" / "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 30
echo:
call :PROMPT
for %%a in (8,9) do if "!x!"=="1%%a" call :CHECK_INTERNET || (call :ERROR_INTERNET & goto :CONTINUESETTINGS)
for /l %%a in (1,1,12) do if "!x!"=="%%a" goto :SETTING_BACKGROUND_WALLPAPER
if "!x!"=="13" goto :SETTING_BACKGROUND_TRANSPARENCY
if "!x!"=="14" goto :SETTING_BACKGROUND_BORDER_TRANSPARENCY
if "!x!"=="15" goto :SETTING_BACKGROUND
if "!x!"=="16" goto :SETTING_ROSE
if "!x!"=="17" goto :SETTING_DEVELOPERMODE
if "!x!"=="18" call :SHOW_WINDOW "websites indexed" || (start "" "%~f0" SCANWEBSITES) & goto :CONTINUESETTINGS
if "!x!"=="19" goto :SETTING_VERSION
if "!x!"=="20" goto :SETTING_USERNAME
if "!x!"=="21" goto :SETTING_LANGUAGE
if "!x!"=="22" goto :SETTING_EXPORTIMPORT
if "!x!"=="23" goto :SETTING_UNINSTALL
if "!x!"=="24" if "!DeveloperMode!"=="1" goto :SETTING_EXTRACT_SOURCE
call :CHOOSE open && (call :OPEN_FOLDER "!ISOutputDirectory!" & goto :CONTINUESETTINGS)
call :CHOOSE back && goto :MAINMENU
call :ERRORMESSAGE
goto :CONTINUESETTINGS

:SETTING_BACKGROUND_WALLPAPER
>nul reg add "!IS_Reg!" /v "BackgroundWallpaper" /t REG_DWORD /d !x! /f
>nul reg add "!IS_Reg!" /v "BackgroundDisabled" /t REG_DWORD /d 0 /f
call :APPLY_SETTINGS
goto :CLEARSETTINGS

:SETTING_BACKGROUND_TRANSPARENCY
echo:
if "!Language!"=="EN" echo     Choose the transparency level from 1 to 100. We recommend a value beetwen 5 and 30 for a good looking.
if "!Language!"=="FR" echo     Choisissez la transparence de 1 � 100. Nous recommandons une valeur entre 5 et 30 pour un bon rendu.
call :PROMPT
for /l %%a in (1,1,100) do if "!x!"=="%%a" (
>nul reg add "!IS_Reg!" /v "BackgroundTransparency" /t REG_DWORD /d !x! /f
call :APPLY_SETTINGS
goto :CLEARSETTINGS
)
call :ERRORMESSAGE x "une valeur" value
goto :CLEARSETTINGS

:SETTING_BACKGROUND_BORDER_TRANSPARENCY
if "!BackgroundBorderTransparencyValue!"=="0" >nul reg add "!IS_Reg!" /v "BackgroundBorderTransparency" /t REG_DWORD /d 1 /f
if "!BackgroundBorderTransparencyValue!"=="1" if "!BackgroundDisabled!"=="0" >nul 2>&1 reg add "!IS_Reg!" /v "BackgroundBorderTransparency" /t REG_DWORD /d 0 /f
call :APPLY_SETTINGS
goto :CLEARSETTINGS

:SETTING_BACKGROUND
if "!BackgroundDisabled!"=="0" (
>nul reg add "!IS_Reg!" /v "BackgroundDisabled" /t REG_DWORD /d 1 /f
>nul reg add "!IS_Reg!" /v "BackgroundBorderTransparency" /t REG_DWORD /d 1 /f
)
if "!BackgroundDisabled!"=="1" >nul reg add "!IS_Reg!" /v "BackgroundDisabled" /t REG_DWORD /d 0 /f
call :APPLY_SETTINGS
goto :CLEARSETTINGS

:SETTING_ROSE
for %%a in (extd speak-x!arch!) do >nul 2>&1 taskkill /f /im "%%a.exe" /t
if "!VoiceAssistant!"=="1" >nul reg add "!IS_Reg!" /v "VoiceAssistant" /t REG_DWORD /d 0 /f
if "!VoiceAssistant!"=="0" >nul reg add "!IS_Reg!" /v "VoiceAssistant" /t REG_DWORD /d 1 /f
goto :CLEARSETTINGS

:SETTING_DEVELOPERMODE
if "!DeveloperMode!"=="1" (
set DeveloperMode=
>nul reg add "!IS_Reg!" /v "DeveloperMode" /t REG_DWORD /d 0 /f
goto :CLEARSETTINGS
)
echo !brightred!
echo =================================================================================================================
if "!Language!"=="EN" echo [15C^^!^^! You need to be part of the Illegal Services developers to enable that option ^^!^^!
if "!Language!"=="FR" echo [11C^^!^^! Vous devez faire partie des d�veloppeurs d'Illegal Services pour activer cette option ^^!^^!
echo =================================================================================================================
echo !cyan!
if "!Language!"=="EN" set t=Enter your developer license key
if "!Language!"=="FR" set t=Entrez votre cl� de licence d�veloppeur
%showcursor%
set DeveloperKey=
set /p "DeveloperKey=!t!: !yellow!"
%hidecursor%
echo:
if defined DeveloperKey >nul 2>&1 reg add "!IS_Reg!" /v "DeveloperMode" /t REG_DWORD /d !DeveloperKey! /f
call :CHECK_DEVELOPERMODE
if "!DeveloperMode!"=="1" (
if "!Language!"=="EN" set t=Developer mode has been activated successfully. You can now extract the source code.
if "!Language!"=="FR" set t=Le mode d�veloppeur a �t� activ� avec succ�s. Vous pouvez maintenant extraire le code source.
call :MSGBOX 1 "!t!." 69696 "Illegal Services Checker"
goto :CLEARSETTINGS
)
if "!DeveloperMode!"=="0" call :ERRORMESSAGE DeveloperKey "une cl� de license" "licence key"
goto :CLEARSETTINGS

:SETTING_VERSION
call :GET_VERSION
if "!errorlevel!"=="0" (
if "!Language!"=="EN" set t="Illegal Services is up to date." "Current version: !version!" "Latest version   : !lastversion!"
if "!Language!"=="FR" set t="Illegal Services est � jour." "Version actuelle : !version!" "Derni�re version: !lastversion!"
call :MSGBOX UPDATER !t! 69696 "Illegal Services Checker"
)
if "!errorlevel!"=="1" call :CHECKER_SETUP_FOUND
if "!errorlevel!"=="2" call :CHECKER_BUILD_FOUND
goto :CONTINUESETTINGS

:SETTING_USERNAME
echo !cyan!
if "!Language!"=="EN" (
echo NOTE: 1. Leaving blank will replace the original username.
echo       2. Username cannot exceed 20 characters.
echo       3. Do not use the following characters: "^! %% ^^".
)
if "!Language!"=="FR" (
echo NOTE: 1. Laisser vide remplacera le nom d'utilisateur d'origine.
echo       2. Le nom d'utilisateur ne peut pas d�passer 20 caract�res.
echo       3. N'utiliser les caract�res suivants: "^! %% ^^".
)
:L2
if "!Language!"=="EN" set t=Enter your new username
if "!Language!"=="FR" set t=Entrez votre nouveau nom d'utilisateur
setlocal disabledelayedexpansion
call :INPUTBOX "%t%: "
setlocal enabledelayedexpansion
if defined ID (
set "ID=!ID:%%=%%%%!"
if defined %ID:~1,-1% goto :ERROR_USERNAME
if not "!ID:~20!"=="" goto :ERROR_USERNAME
>nul reg add "!IS_Reg!" /v "Username" /t REG_SZ /d "!ID:~,20!" /f
) else >nul reg add "!IS_Reg!" /v "Username" /t REG_SZ /d "!username:~,20!" /f
call :CHECK_USERNAME
if "!Language!"=="EN" set t=Your new username has been changed to
if "!Language!"=="FR" set t=Votre nouveau nom d'utilisateur a �t� remplac� par
call :MSGBOX 1 "!t!: '!IS_USERNAME!'" 69696 "Illegal Services Checker"
)
goto :CONTINUESETTINGS

:ERROR_USERNAME
echo:
call :ERRORMESSAGE ID "un nom d'utilisateur" username
goto :L2

:SETTING_LANGUAGE
if "!Language!"=="EN" set t=FR
if "!Language!"=="FR" set t=EN
>nul reg add "!IS_Reg!" /v "Language" /t REG_SZ /d !t! /f
for %%a in (extd speak-x!arch!) do >nul 2>&1 taskkill /f /im "%%a.exe" /t
goto :CLEARSETTINGS

:SETTING_EXPORTIMPORT
if not exist "!ISOutputDirectory!" md "!ISOutputDirectory!"
echo !cyan!
if "!Language!"=="EN" echo Do you want to [!yellow!E!cyan!]xport or [!yellow!I!cyan!]mport your current settings ?
if "!Language!"=="FR" echo Voulez-vous [!yellow!E!cyan!]xporter ou [!yellow!I!cyan!]mporter vos param�tres actuels ?
>nul choice /n /c EI
if "!errorlevel!"=="1" goto :SETTING_EXPORT
if "!errorlevel!"=="2" goto :SETTING_IMPORT

:SETTING_EXPORT
if "!Language!"=="EN" (
set t1=Registration Files
set t2=Save As
)
if "!Language!"=="FR" (
set t1=Fichiers d'enregistrements
set t2=Enregistrer sous
)
for /f "delims=" %%a in ('SaveFileBox.exe IS_Settings.reg "!t1! (*.reg)|*.reg" "!ISOutputDirectory!" "!t2!" /f') do set el=%%a
>nul 2>&1 reg export "!IS_Reg!" "!el!" /y && (
if "!Language!"=="EN" (
set t1=Settings exported successfully.
set t2=You can now import them using the generated file at:
)
if "!Language!"=="FR" (
set t1=Param�tres export�s avec succ�s.
set t2=Vous pouvez maintenant les importer � l'aide du fichier g�n�r� �:
)
mshta vbscript:Execute("msgbox ""!t1!"" & Chr(10) & ""!t2!"" & Chr(10) & Chr(10) & ""!el!"",69696,""Illegal Services Checker"":close"^)
)
goto :CONTINUESETTINGS

:SETTING_IMPORT
if "!Language!"=="EN" (
set t1=Registration Files
set t2=Open
)
if "!Language!"=="FR" (
set t1=Fichiers d'enregistrements
set t2=Ouvrir
)
for /f "delims=" %%a in ('OpenFileBox.exe "!t1! (*.reg)|*.reg" "!ISOutputDirectory!" "!t2!"') do if /i "%%~xa"==".reg" set _el=%%a
>nul 2>&1 find /i "[HKEY_CURRENT_USER\SOFTWARE\IB_U_Z_Z_A_R_Dl\Illegal Services]" "!_el!" && >nul 2>&1 reg import "!_el!" && (
for %%a in (LANGUAGE USERNAME YOUTUBEDLPRIORITY PORTPRIORITY FIRSTLAUNCH VOICEASSISTANT VOICEASSISTANTCHOICE YOUTUBEDLP YOUTUBEDLOUTPUTDIRECTORY YOUTUBEDLGEOBYPASS DEVELOPERMODE) do call :CHECK_%%a
call :APPLY_SETTINGS
if "!Language!"=="EN" set t=Settings imported successfully from
if "!Language!"=="FR" set t=Param�tres import�s avec succ�s � partir de
mshta vbscript:Execute("msgbox ""!t!:"" & Chr(10) & ""!_el!"",69696,""Illegal Services Checker"":close"^)
)
if not "!errorlevel!"=="0" (
if "!Language!"=="EN" set t="File '!_el!' invalid." "You need to import a '*.reg' file."
if "!Language!"=="FR" set t="Le fichier '!_el!' est invalide." "Vous devez importer un fichier '*.reg'."
call :MSGBOX 2 !t! 69680 "Illegal Services Checker"
)
goto :CLEARSETTINGS

:SETTING_UNINSTALL
cls
title Illegal Services uninstaller
echo:
echo:
echo:
echo:
echo !red!
call :DRAW_CENTER "Are you sure you want to permanently delete Illegal Services from your system without leaving traces ?"
call :DRAW_CENTER "You will lose all of the following settings and personal data:"
echo:
echo !cyan!
echo =================================================================================================================
echo [22C!red!Illegal Services    !cyan!^>  !magenta!%~dp0
echo [22C!red!Settings            !cyan!^>  !magenta!!IS_Reg!
echo [22C!red!YouTube Downloader  !cyan!^>  !magenta!!YouTubeDLOutputDirectory!
echo [22C!red!IP Address Lookup   !cyan!^>  !magenta!!ISOutputDirectory!
echo [22C!red!Temporary IS files  !cyan!^>  !magenta!!TMPF!!cyan!
echo =================================================================================================================
echo:
echo:
if "!Language!"=="EN" (
call :DRAW_CENTER "Are you sure you want to continue ? Press !yellow![Y]!cyan! for Yes and !yellow![N]!cyan! for No.!yellow!" 25
>nul choice /n /c YN
)
if "!Language!"=="FR" (
call :DRAW_CENTER "Etes vous sur de vouloir continuer ? Appuyez sur !yellow![O]!cyan! pour Oui ou !yellow![N]!cyan! pour Non.!yellow!" 25
>nul choice /n /c ON
)
if not "!errorlevel!"=="1" goto :CONTINUESETTINGS
if "!Language!"=="EN" set t=ERROR: This feature is still in development and will be released soon
if "!Language!"=="FR" set t=ERREUR: Cette fonctionnalit� est toujours en cours de d�veloppement et sera publi�e prochainement
call :MSGBOX 1 "!t!." 69696 "Illegal Services Checker"
goto :CONTINUESETTINGS
start IS.Uninstaller.bat
exit

:SETTING_EXTRACT_SOURCE
if /i "!IS_Process!"=="cmd.exe" (
echo:
if "!Language!"=="EN" set t=ERROR: Impossible to extract the source code if you are running the batch file
if "!Language!"=="FR" set t=ERREUR: Impossible d'extraire le code source si vous ex�cutez le fichier batch
echo !red!!t! ^(%~nx0^).!yellow!
timeout /t 5
) else if defined batused (
attrib -s -h -i "!TMP!\!batused!"
>nul copy /y "!TMPF!\!batused!" "Illegal_Services.bat"
attrib +s +h +i "!TMP!\!batused!"
2>nul powershell Get-childitem $Illegal_Services.bat ^| ForEach-Object -process {if ^(^($_.attributes -band 0x100^) -eq 0x100^) {$_.attributes = ^($_.attributes -band 0xFEFF^)}}
start /max explorer.exe "%~dp0"
)
goto :CONTINUESETTINGS

:IPTV
call :SCALE 91 32
title Internet Protocol Television (IPTV)
call :ROSE "Internet Protocol Television"

:CLEARIPTV
call :CLEAR 1 38
set db=iptvcat.com/home_11 `pro.allkaicerteam.com/ www.iptvm3ulist.com/ip-tv-free/ www.iptvm3ufree.com/ iptvmate.net/m3u_iptv/ www.links-iptv.com/ iptvforpcwindows.com/ www.techtoreview.com/top-picks/m3u-playlist-url.html www.iptv4free.com/ m3u.pktelcos.com/ freem3uhd.blogspot.com/ dailym3uiptv.com/home83/ www.iptv1.org/ telechargeriptv.com/ www.5kplayer.com/video-music-player/free-iptv-playlist-m3u-links.htm github.com/monetareq/iptv1 github.com/cbn88/cbn88.github.io github.com/Free-IPTV/Countries github.com/coodertv/IPTVM3U8 github.com/Sumon2021/Sumon-IPTV github.com/mancinibig55/45125623 github.com/firojshahriyarmasud/IPTV github.com/duyminh215/iptv-list github.com/riqueenz/iptv github.com/iptv-org/iptv github.com/imDazui/Tvlist-awesome-m3u-m3u8 github.com/tvheadend/tvheadend github.com/Cigaras/IPTV.bundle github.com/lucifersun/China-Telecom-ShangHai-IPTV-list github.com/notanewbie/LegalStream github.com/Fleker/CumulusTV github.com/lylehust/Chinese-IPTV github.com/AlexanderSofronov/iptv.example github.com/chwlibre/iptv github.com/myIPTVChannels/lists github.com/free-greek-iptv/greek-iptv github.com/iptv-ch/iptv-ch.github.io github.com/iptv-restream/iptv-channels

:CONTINUEIPTV
call :SCALE 91 32
echo !cyan!
echo [23C�������������������������������������������
echo [22C// !red!�!bgyellow!!black! INTERNET PROTOCOL TELEVISION (IPTV) !red!�!bgblack!!cyan! \\
echo [7C���������������������������������������������������������������������������ͻ
echo [7C�                                                                           �
echo [7C�    !1!iptvcat.com!cyan!                �   !20!Sumon2021!cyan!                  �
echo [7C�    !2!pro.allkaicerteam.com!cyan!      �   !21!mancinibig55!cyan!               �
echo [7C�    !3!www.iptvm3ulist.com!cyan!        �   !22!firojshahriyarmasud!cyan!        �
echo [7C�    !4!www.iptvm3ufree.com!cyan!        �   !23!duyminh215!cyan!                 �
echo [7C�    !5!iptvmate.net!cyan!               �   !24!riqueenz!cyan!                   �
echo [7C�    !6!www.links-iptv.com!cyan!         �   !25!iptv-org!cyan!                   �
echo [7C�    !7!iptvforpcwindows.com!cyan!       �   !26!imDazui!cyan!                    �
echo [7C�    !8!www.techtoreview.com!cyan!       �   !27!tvheadend!cyan!                  �
echo [7C�    !9!www.iptv4free.com!cyan!          �   !28!Cigaras!cyan!                    �
echo [7C�   !10!m3u.pktelcos.com!cyan!           �   !29!lucifersun!cyan!                 �
echo [7C�   !11!freem3uhd.blogspot.com!cyan!     �   !30!notanewbie!cyan!                 �
echo [7C�   !12!dailym3uiptv.com!cyan!           �   !31!Fleker!cyan!                     �
echo [7C�   !13!www.iptv1.org!cyan!              �   !32!lylehust!cyan!                   �
echo [7C�   !14!telechargeriptv.com!cyan!        �   !33!AlexanderSofronov!cyan!          �
echo [7C�   !15!www.5kplayer.com!cyan!           �   !34!chwlibre!cyan!                   �
echo [7C�   !16!monetareq!cyan!                  �   !35!myIPTVChannels!cyan!             �
echo [7C�   !17!cbn88!cyan!                      �   !36!free-greek-iptv!cyan!            �
echo [7C�   !18!Free-IPTV!cyan!                  �   !37!iptv-ch!cyan!                    �
echo [7C�   !19!coodertv!cyan!                   �   !38!iptv-restream!cyan!              �
echo [7C�                                                                           �
echo [7C���������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / "!yellow!INSTALL!grey!" / "!yellow!SEARCH!grey!" / "!yellow!HELP!grey!" !t2! !yellow!{!t3!}!grey!." 50
echo !red!
>nul 2>&1 reg query "HKCR\.m3u8" || (
if "!Language!"=="EN" echo [17CERROR: To be able to use !yellow!IPTV!red!, first you need to choose: !yellow![INSTALL]
if "!Language!"=="FR" echo [13CERREUR: Pour pouvoir utiliser !yellow!IPTV!red!, vous devez d'abord choisir: !yellow![INSTALL]
echo:
)
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEIPTV
call :CHOOSE install && (call :INSTALL_FILE VLC & goto :CONTINUEIPTV)
call :CHOOSE search && (call :IS_SEARCH a7a36a29816e9578f & goto :CONTINUEIPTV)
call :CHOOSE help && goto :IPTVTUTORIAL
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARIPTV
call :ERRORMESSAGE
goto :CONTINUEIPTV

:IPTVTUTORIAL
call :SCALE 151 37
title IPTV Tutorial
call :ROSE "Internet Protocol Television Tutorial"

:CONTINUEIPTVTUTORIAL
call :SCALE 151 37
echo !cyan!
echo [24C���������������������
if "!Language!"=="EN" set t=TUTORIAL
if "!Language!"=="FR" set t=TUTORIEL
echo [23C// !red!�!bgyellow!!black! IPTV !t! !red!�!bgblack!!cyan! \\
echo [4C���������������������������������������������������������������������������������������������������������������������������������������������ͻ
echo [4C�                                                                                                                                             �
if "!Language!"=="EN" echo [4C�        ��!bgyellow!!red!�  What's IPTV (Wikipedia) ? �!bgblack!!cyan!��                                                                                                  �
if "!Language!"=="FR" echo [4C�        ��!bgyellow!!red!�  Qu'est-ce que l'IPTV (Wikipedia) ? �!bgblack!!cyan!��                                                                                         �
echo [4C�                                                                                                                                             �
if "!Language!"=="EN" echo [4C�    Internet Protocol television (IPTV) is the delivery of television content over Internet Protocol (IP) networks.                          �
if "!Language!"=="FR" echo [4C�    La t�l�vision sur protocole Internet (IPTV) est la diffusion de contenu t�l�visuel sur des r�seaux IP (Internet Protocol).               �
if "!Language!"=="EN" echo [4C�    This is in contrast to delivery through traditional terrestrial, satellite, and cable television formats.                                �
if "!Language!"=="FR" echo [4C�    Cela contraste avec la diffusion via les formats traditionnels de t�l�vision terrestre, par satellite et par c�ble.                      �
if "!Language!"=="EN" echo [4C�    Unlike downloaded media, IPTV offers the ability to stream the source media continuously.                                                �
if "!Language!"=="FR" echo [4C�    Contrairement aux m�dias t�l�charg�s, IPTV offre la possibilit� de diffuser en continu le m�dia source.                                  �
if "!Language!"=="EN" echo [4C�    As a result, a client media player can begin playing the content (such as a TV channel) almost immediately.                              �
if "!Language!"=="FR" echo [4C�    En cons�quence, un lecteur multim�dia client peut commencer � lire le contenu (comme une cha�ne de t�l�vision) presque imm�diatement.    �
if "!Language!"=="EN" echo [4C�    This is known as streaming media.                                                                                                        �
if "!Language!"=="FR" echo [4C�    C'est ce qu'on appelle le streaming multim�dia.                                                                                          �
echo [4C�                                                                                                                                             �
if "!Language!"=="EN" echo [4C�    VLC is an open-source media player to stream and play any kind of media on all the available devices.                                    �
if "!Language!"=="FR" echo [4C�    VLC est un lecteur multim�dia open source pour diffuser et lire tout type de m�dia sur tous les appareils disponibles.                   �
echo [4C�                                                                                                                                             �
if "!Language!"=="EN" echo [4C�    To access IPTV on VLC, make sure to have the following things listed below:                                                              �
if "!Language!"=="FR" echo [4C�    Pour acc�der � l'IPTV sur VLC, assurez-vous que les �l�ments suivants sont r�pertori�s ci-dessous:                                       �
if "!Language!"=="EN" echo [4C�    - Internet connection                                                                                                                    �
if "!Language!"=="FR" echo [4C�    - Connexion Internet                                                                                                                     �
echo [4C�    - VLC Media Player                                                                                                                       �
if "!Language!"=="EN" echo [4C�    - M3U or M3U8 URL (That you have downloaded in one of the previous Illegal Services IPTV links.)                                         �
if "!Language!"=="FR" echo [4C�    - URL M3U ou M3U8 (que vous avez t�l�charg�e dans l'un des liens IPTV de services ill�gaux pr�c�dents.)                                  �
echo [4C�                                                                                                                                             �
echo [4C�                                                                                                                                             �
if "!Language!"=="FR" echo [4C�        ��!bgyellow!!red!�  Comment utiliser l'IPTV sur PC en utilisant VLC ? �!bgblack!!cyan!��                                                                          �
if "!Language!"=="EN" echo [4C�        ��!bgyellow!!red!�  How to watch IPTV on PC using VLC ? �!bgblack!!cyan!��                                                                                        �
echo [4C�                                                                                                                                             �
if "!Language!"=="EN" echo [4C�    [!yellow!1!cyan!]  ^> !white! Download and install VLC Media Player.!cyan!                                                                                           �
if "!Language!"=="FR" echo [4C�    [!yellow!1!cyan!]  ^> !white! T�l�chargez et installer VLC Media Player.!cyan!                                                                                       �
if "!Language!"=="EN" echo [4C�    Launch VLC Media Player and choose "Media" from the menu bar.                                                                            �
if "!Language!"=="FR" echo [4C�    Lancez VLC Media Player et choisissez "Media" dans la barre de menu.                                                                     �
if "!Language!"=="EN" echo [4C�    Select "Open Network Stream" or press "Ctrl + N" on the keyboard to open directly.                                                       �
if "!Language!"=="FR" echo [4C�    S�lectionnez "Open Network Stream" ou appuyez sur "Ctrl + N" sur le clavier pour ouvrir directement.                                     �
if "!Language!"=="EN" echo [4C�    Under the "Network tab", enter the M3U or M3U8 URL.                                                                                      �
if "!Language!"=="FR" echo [4C�    Sous l'onglet "R�seau", entrez l'URL M3U ou M3U8.                                                                                        �

if "!Language!"=="EN" echo [4C�    Click on "Play" to start to stream all the available content.                                                                            �
if "!Language!"=="FR" echo [4C�    Cliquez sur "Play" pour commencer � diffuser tout le contenu disponible.                                                                 �
if "!Language!"=="EN" echo [4C�    To navigate among channels, press "Ctrl + L" to view all the available content.                                                          �
if "!Language!"=="FR" echo [4C�    Pour naviguer parmi les cha�nes, appuyez sur "Ctrl + L" pour afficher tout le contenu disponible.                                        �
echo [4C�                                                                                                                                             �
echo [4C���������������������������������������������������������������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 20
echo:
call :PROMPT
if "!x!"=="1" call :INSTALL_FILE VLC & goto :CONTINUEIPTVTUTORIAL
call :CHOOSE back && goto :IPTV
call :ERRORMESSAGE
goto :CONTINUEIPTVTUTORIAL

:DDL
call :ROSE "Direct Download Link"
for %%a in (EN FR) do if "!Language!"=="%%a" goto :DDL%%a

:DDLEN
call :SCALE 128 37
title Direct Download Link (DDL) [EN]

:CLEARDDLEN
call :CLEAR 1 71
set db=avxhm.is/ www.heroturko.net/ rmz.cr/ softarchive.is/ www.downduck.com/ scnlog.me/ www.creaxy.com/ downturk.net/ downarchive.org/ 0dayhome.net/ scene-rls.net/ www.freshwap.us/ www.apps4all.com/ dl4all.biz/ worldsrc.net/ movieparadise.org/ release.movieparadise.org/ hdencode.org/ katzdownload.com/ rlsbb.ru/ apps-pack.com/ oneddl.org/ `www.rlslog.net/ freshwap.cc/ dl4all.org/ warezomen.com/ www.scnsrc.me/ win7dl.org/ www.ddlvalley.me/ downtr.cc/ releasehive.com/ www.kokodown.com/ rlstop.net/ uhdmv.org/ tfpdl.to/ softddl.org/ 2ddl.it/ katzddl.net/ warezbb.net/ www.300mbfilms.ws/ snahp.it/ downloadhub.name/ filmsofts.com/ cgpersia.com/ rsload.net/ megaddl.co/ heroturko2.net/ crazy4tv.com/ x265.club/ hevcbay.com/ rarefilmm.com/ 1worldfree4u.trade/ the-eye.eu/ jpddl.com/ animeshare.cf/ anidl.org/ hi10anime.com/ animekayo.com/ animekaizoku.com/ ssanime.ga/ animetosho.org/ cdromance.com/ www.romnation.net/ vimm.net/ nxmac.com/ macdrop.net/ sheet-music.xyz/ audioz.download/ `audiobookbay.nl/ www.gfxtra31.com/ gfx-hub.cc/

:CONTINUEDDLEN
call :SCALE 128 37
echo !cyan!
echo [44C���������������������������������������
echo [43C// !red!�!bgyellow!!black! DIRECT DOWNLOAD LINK (DDL) [EN] !red!�!bgblack!!cyan! \\
echo [6C������������������������������������������������������������������������������������������������������������������ͻ
echo [6C�                                                                                                                  �
echo [6C�    !1!avxhm.is!cyan!                     �   !25!dl4all.org!cyan!           �   !49!x265.club!cyan!                       �
echo [6C�    !2!www.heroturko.net!cyan!            �   !26!warezomen.com!cyan!        �   !50!hevcbay.com!cyan!                     �
echo [6C�    !3!rmz.cr!cyan!                       �   !27!www.scnsrc.me!cyan!        �   !51!rarefilmm.com!cyan!                   �
echo [6C�    !4!softarchive.is!cyan!               �   !28!win7dl.org!cyan!           �   !52!1worldfree4u.trade!cyan!              �
echo [6C�    !5!www.downduck.com!cyan!             �   !29!www.ddlvalley.me!cyan!     �   !53!the-eye.eu!cyan!                      �
echo [6C�    !6!scnlog.me!cyan!                    �   !30!downtr.cc!cyan!            �   !54!jpddl.com !green!(animes)!cyan!              �
echo [6C�    !7!www.creaxy.com!cyan!               �   !31!releasehive.co!cyan!       �   !55!animeshare.cf !green!(animes)!cyan!          �
echo [6C�    !8!downturk.net!cyan!                 �   !32!www.kokodown.com!cyan!     �   !56!anidl.org !green!(animes)!cyan!              �
echo [6C�    !9!downarchive.org!cyan!              �   !33!rlstop.net!cyan!           �   !57!hi10anime.com !green!(animes)!cyan!          �
echo [6C�   !10!0dayhome.net!cyan!                 �   !34!uhdmv.org!cyan!            �   !58!animekayo.com !green!(animes)!cyan!          �
echo [6C�   !11!scene-rls.net!cyan!                �   !35!tfpdl.to!cyan!             �   !59!animekaizoku.com !green!(animes)!cyan!       �
echo [6C�   !12!www.freshwap.us!cyan!              �   !36!softddl.org!cyan!          �   !60!ssanime.ga !green!(animes)!cyan!             �
echo [6C�   !13!www.apps4all.com!cyan!             �   !37!2ddl.it!cyan!              �   !61!animetosho.org !green!(animes)!cyan!         �
echo [6C�   !14!dl4all.biz!cyan!                   �   !38!katzddl.net!cyan!          �   !62!cdromance.com !green!(roms)!cyan!            �
echo [6C�   !15!worldsrc.net!cyan!                 �   !39!warezbb.net!cyan!          �   !63!www.romnation.net !green!(roms)!cyan!        �
echo [6C�   !16!movieparadise.org!cyan!            �   !40!www.300mbfilms.ws!cyan!    �   !64!vimm.net !green!(roms)!cyan!                 �
echo [6C�   !17!release.movieparadise.org!cyan!    �   !41!snahp.it!cyan!             �   !65!nxmac.com !green!(MAC)!cyan!                 �
echo [6C�   !18!hdencode.org!cyan!                 �   !42!downloadhub.name!cyan!     �   !66!macdrop.net !green!(MAC)!cyan!               �
echo [6C�   !19!katzdownload.com!cyan!             �   !43!filmsofts.com!cyan!        �   !67!sheet-music.xyz !green!(audio)!cyan!         �
echo [6C�   !20!rlsbb.ru!cyan!                     �   !44!cgpersia.com!cyan!         �   !68!audioz.download !green!(audio)!cyan!         �
echo [6C�   !21!apps-pack.com!cyan!                �   !45!rsload.net!cyan!           �   !69!audiobookbay.nl !green!(audiobooks)!cyan!    �
echo [6C�   !22!oneddl.org!cyan!                   �   !46!megaddl.co!cyan!           �   !70!www.gfxtra31.com !green!(GFX)!cyan!          �
echo [6C�   !23!www.rlslog.net!cyan!               �   !47!heroturko2.net!cyan!       �   !71!gfx-hub.cc !green!(GFX)!cyan!                �
echo [6C�   !24!freshwap.cc!cyan!                  �   !48!crazy4tv.com!cyan!         �                                          �
echo [6C�                                                                                                                  �
echo [6C������������������������������������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / "!yellow!SEARCH!grey!" / "!yellow!FR!grey!" !t2! !yellow!{!t3!}!grey!." 40
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEDDLEN
call :CHOOSE fr && goto :DDLFR
call :CHOOSE search && (call :IS_SEARCH 2bd1e5d9f5fe63b52 & goto :CONTINUEDDLEN)
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARDDLEN
call :ERRORMESSAGE
goto :CONTINUEDDLEN

:DDLFR
call :SCALE 71 24
title Direct Download Link (DDL) [FR]

:CLEARDDLFR
call :CLEAR 1 11
set db=www.tirexo.work/ free-telecharger.net/ libertyvf.bz/ www.extreme-down.live/home.html zone-telechargement.cam/ www.wawacity.one/ ww1.jeddl.com/ www.zone-mania.com/ www.zone-down.com/ nandesuka.moe/ 9docu.org/

:CONTINUEDDLFR
call :SCALE 71 24
echo !cyan!
echo [16C���������������������������������������
echo [15C// !red!�!bgyellow!!black! DIRECT DOWNLOAD LINK (DDL) [FR] !red!�!bgblack!!cyan! \\
echo [9C��������������������������������������������������ͻ
echo [9C�                                                  �
echo [9C�    !1!www.tirexo.work!cyan!                         �
echo [9C�    !2!free-telecharger.net!cyan!                    �
echo [9C�    !3!libertyvf.bz!cyan!                            �
echo [9C�    !4!www.extreme-down.live!cyan!                   �
echo [9C�    !5!zone-telechargement.cam!cyan!                 �
echo [9C�    !6!www.wawacity.one!cyan!                        �
echo [9C�    !7!ww1.jeddl.com!cyan!                           �
echo [9C�    !8!www.zone-mania.com!cyan!                      �
echo [9C�    !9!www.zone-down.com!cyan!                       �
echo [9C�   !10!nandesuka.moe !green!(animes)!cyan!                  �
echo [9C�   !11!9docu.org !green!(documentaries)!cyan!               �
echo [9C�                                                  �
echo [9C��������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / "!yellow!SEARCH!grey!" / "!yellow!EN!grey!" !t2! !yellow!{!t3!}!grey!." 40
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEDDLFR
call :CHOOSE en && goto :DDLEN
call :CHOOSE search && (call :IS_SEARCH 8c3502fdb5b858d5d & goto :CONTINUEDDLFR)
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARDDLFR
call :ERRORMESSAGE
goto :CONTINUEDDLFR

:STREAMING
title Streaming [!Language!]
if "!Language!"=="EN" (
call :SCALE 101 51
set t="No payment / installation / registration is required to view the videos on the sites offered by Illegal Service. All sites are free so watch out for scam advertising." "If the player is not visible, disable your ad blocker and click on the button to close the ad in the middle of the video then on the player's Play button to launch the video."
)
if "!Language!"=="FR" (
call :SCALE 101 45
set t="Aucun payment / installation / inscription n'est requis pour voir les videos sur les sites proposes par Illegal Service. Tous les sites sont gratuits donc faites attention aux publicites d'arnaques." "Si le lecteur n'est pas visible, desactiver votre bloqueur de publicites et clique sur le bouton pour fermer la pub au milieu de la video puis sur le bouton Play du lecteur pour lancer la video."
)
call :MSGBOX 2 !t!  69680 "Illegal Services Checker"
call :ROSE Streaming
for %%a in (EN FR) do if "!Language!"=="%%a" goto :STREAMING%%a

:STREAMINGEN
call :SCALE 101 51
title Streaming [EN]

:CLEARSTREAMINGEN
call :CLEAR 1 58
set db=www.primewire.li/ losmovies.app/ gomovie.co/ 123movies.jp/ www1.123movies.co/ www4.yesmovies.so/ 5movies.pw/ gomovies-online.cam/ myflixertv.to/ yesmovies.ag/ www11.123movieshub.one/ watch-serieshd.cc/ watchseriess.net/ flixtor.to/ fmovies.to/ lookmovie.io/ www2.solarmovie.to/ ww.123movies.sc/ frenzymovies.net/ supernova.to/ vumoo.to/ hulu.sc/ watchtvepisodes.me/ ww2.123movieshub.tc/ ww0.0gomovies.fm/ soap2day.to/ www1.movie4u.live/ cinehub.wtf/ openloadfreetv.me/ allmoviesforyou.co/ kisscartoon.info/ 9anime.to/ animesuge.io/ animeheaven.pro/ gogoanime.vc/ anime8.ru/ animeowl.net/ animefrenzy.org/ www1.kiss-anime.asia/ animevibe.wtf/ animixplay.to/ www2.kickassanime.ro/ animepahe.com/ ww1.animesimple.com/ zoro.to/ www1.animeultima.to/ animedao.to/ kissanimefree.to/ www1.7anime.io/ twist.moe/ runnel.ir/ time4tv.stream/ `123tv.live/ `livetv.sx/ iptv.stream2watch.sx/ sportplus.live/ sportsbay.org/live-streams thehomesport.com/

:CONTINUESTREAMINGEN
call :SCALE 101 51
echo !cyan!
echo [40C����������������������
echo [39C// !red!�!bgyellow!!black! STREAMING [EN] !red!�!bgblack!!cyan! \\
echo [8C�����������������������������������������������������������������������������������ͻ
echo [8C��������������������������������������!bgyellow!!red!� FILMS �!bgblack!!cyan!������������������������������������͹
echo [8C�                                                                                   �
echo [8C�    !1!www.primewire.li!cyan!               �   !16!lookmovie.io!cyan!                   �
echo [8C�    !2!losmovies.app!cyan!                  �   !17!www2.solarmovie.to!cyan!             �
echo [8C�    !3!gomovie.co!cyan!                     �   !18!ww.123movies.sc!cyan!                �
echo [8C�    !4!123movies.jp!cyan!                   �   !19!frenzymovies.net!cyan!               �
echo [8C�    !5!www1.123movies.co!cyan!              �   !20!supernova.to!cyan!                   �
echo [8C�    !6!www4.yesmovies.so!cyan!              �   !21!vumoo.to!cyan!                       �
echo [8C�    !7!5movies.pw!cyan!                     �   !22!hulu.sc!cyan!                        �
echo [8C�    !8!gomovies-online.cam!cyan!            �   !23!watchtvepisodes.me!cyan!             �
echo [8C�    !9!myflixertv.to!cyan!                  �   !24!ww2.123movieshub.tc!cyan!            �
echo [8C�   !10!yesmovies.ag!cyan!                   �   !25!ww0.0gomovies.fm!cyan!               �
echo [8C�   !11!www11.123movieshub.one!cyan!         �   !26!soap2day.to!cyan!                    �
echo [8C�   !12!watch-serieshd.cc!cyan!              �   !27!www1.movie4u.live!cyan!              �
echo [8C�   !13!watchseriess.net!cyan!               �   !28!cinehub.wtf!cyan!                    �
echo [8C�   !14!flixtor.to!cyan!                     �   !29!openloadfreetv.me!cyan!              �
echo [8C�   !15!fmovies.to!cyan!                     �   !30!allmoviesforyou.co!cyan!             �
echo [8C�                                                                                   �
echo [8C��������������������������������������!bgyellow!!red!� ANIMES �!bgblack!!cyan!�����������������������������������͹
echo [8C�                                                                                   �
echo [8C�   !31!kisscartoon.info!cyan!               �   !41!animixplay.to!cyan!                  �
echo [8C�   !32!9anime.to!cyan!                      �   !42!www2.kickassanime.ro!cyan!           �
echo [8C�   !33!animesuge.io!cyan!                   �   !43!animepahe.com!cyan!                  �
echo [8C�   !34!animeheaven.pro!cyan!                �   !44!ww1.animesimple.com!cyan!            �
echo [8C�   !35!gogoanime.vc!cyan!                   �   !45!zoro.to!cyan!                        �
echo [8C�   !36!anime8.ru!cyan!                      �   !46!www1.animeultima.to!cyan!            �
echo [8C�   !37!animeowl.net!cyan!                   �   !47!animedao.to!cyan!                    �
echo [8C�   !38!animefrenzy.org!cyan!                �   !48!kissanimefree.to!cyan!               �
echo [8C�   !39!www1.kiss-anime.asia!cyan!           �   !49!www1.7anime.io!cyan!                 �
echo [8C�   !40!animevibe.wtf!cyan!                  �   !50!twist.moe!cyan!                      �
echo [8C�                                                                                   �
echo [8C������������������������������������!bgyellow!!red!� TELEVISION �!bgblack!!cyan!���������������������������������͹
echo [8C�                                                                                   �
echo [8C�   !51!runnel.ir!cyan!                      �   !55!iptv.stream2watch.sx !green!(sport)!cyan!   �
echo [8C�   !52!time4tv.stream!cyan!                 �   !56!sportplus.live !green!(sport)!cyan!         �
echo [8C�   !53!123tv.live!cyan!                     �   !57!sportsbay.org !green!(sport)!cyan!          �
echo [8C�   !54!livetv.sx !green!(sport)!cyan!              �   !58!thehomesport.com !green!(sport)!cyan!       �
echo [8C�                                                                                   �
echo [8C�����������������������������������������������������������������������������������͹
call :DRAW_CENTER "!yellow!59!cyan!  >  !white!Streaming Applications!cyan!" 20
echo [8C�����������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / "!yellow!SEARCH!grey!" / "!yellow!FR!grey!" !t2! !yellow!{!t3!}!grey!." 40
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUESTREAMINGEN
if "!x!"=="59" (set la=EN) & goto :STREAMINGAPPS
call :CHOOSE fr && goto :STREAMINGFR
call :CHOOSE search && (call :IS_SEARCH ef3978005ffa01b49 & goto :CONTINUESTREAMINGEN)
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARSTREAMINGEN
call :ERRORMESSAGE
goto :CONTINUESTREAMINGEN

:STREAMINGFR
call :SCALE 101 46
title Streaming [FR]

:CLEARSTREAMINGFR
call :CLEAR 1 46
set db=www6.filmstreaming.to/ french-stream.re/ wvw.hds.lc/ hdss.papystreaming.net/ fcine.me/ libertyvf.bz/ www.filmstreaminglol.com/ streaming-films.net/ vfstreamiz.com/ wwv.streamfilm.cc/ www.illimitestreaming.co/ www.streaminz.me/ www.cinezzz.org/ voirseries.tv/ www.papystreaming.cc/ streamcomplet.buzz/ tratov.com/ voiranime.com/ neko-sama.fr/ french-manga.net/ www.adkami.com/ www.ianimes.org/ mavanimes.cc/ streaming-integrale.com/ gum-gum-streaming.com/ otakufr.co/ www.mavanimes.co/ vostanimes.tv/ toonanime.tv/ wvw.jetanimes.com/ vostfree.tv/ www.universanime.co/ dbanimes.com/ daijoubu.si/ animevostfr.tv/ animecomplet.me/ `www.anime-ultime.net/ v5.anime-ultime.net/ channelstream.watch/ www.myfree-tivi.com/ `livetv.sx/frx/ antennesport.tv/ fr4.sportplus.live/ sport-stream.live/ `streaming-sport.tv/

:CONTINUESTREAMINGFR
call :SCALE 101 46
echo !cyan!
echo [40C����������������������
echo [39C// !red!�!bgyellow!!black! STREAMING [FR] !red!�!bgblack!!cyan! \\
echo [8C�����������������������������������������������������������������������������������ͻ
echo [8C��������������������������������������!bgyellow!!red!� FILMS �!bgblack!!cyan!������������������������������������͹
echo [8C�                                                                                   �
echo [8C�    !1!www6.filmstreaming.to!cyan!          �   !10!wwv.streamfilm.cc!cyan!
echo [8C�    !2!french-stream.re!cyan!               �   !11!www.illimitestreaming.co!cyan!       �
echo [8C�    !3!wvw.hds.lc!cyan!                     �   !12!www.streaminz.me!cyan!               �
echo [8C�    !4!hdss.papystreaming.net!cyan!         �   !13!www.cinezzz.org!cyan!                �
echo [8C�    !5!fcine.me!cyan!                       �   !14!voirseries.tv !green!(series)!cyan!         �
echo [8C�    !6!libertyvf.bz!cyan!                   �   !15!www.papystreaming.cc!cyan!           �
echo [8C�    !7!www.filmstreaminglol.com!cyan!       �   !16!streamcomplet.buzz!cyan!             �
echo [8C�    !8!streaming-films.net!cyan!            �   !17!tratov.com!cyan!                     �
echo [8C�    !9!vfstreamiz.com!cyan!                 �                                         �
echo [8C�                                                                                   �
echo [8C��������������������������������������!bgyellow!!red!� ANIMES �!bgblack!!cyan!�����������������������������������͹
echo [8C�                                                                                   �
echo [8C�   !18!voiranime.com!cyan!                  �   !29!toonanime.tv!cyan!                   �
echo [8C�   !19!neko-sama.fr!cyan!                   �   !30!wvw.jetanimes.com!cyan!              �
echo [8C�   !20!french-manga.net!cyan!               �   !31!vostfree.tv!cyan!                    �
echo [8C�   !21!www.adkami.com!cyan!                 �   !32!www.universanime.co!cyan!            �
echo [8C�   !22!www.ianimes.org!cyan!                �   !33!dbanimes.com!cyan!                   �
echo [8C�   !23!mavanimes.cc!cyan!                   �   !34!daijoubu.si!cyan!                    �
echo [8C�   !24!streaming-integrale.com!cyan!        �   !35!animevostfr.tv!cyan!                 �
echo [8C�   !25!gum-gum-streaming.com!cyan!          �   !36!animecomplet.me!cyan!                �
echo [8C�   !26!otakufr.co!cyan!                     �   !37!www.anime-ultime.net!cyan!           �
echo [8C�   !27!www.mavanimes.co!cyan!               �   !38!v5.anime-ultime.net!cyan!            �
echo [8C�   !28!vostanimes.tv!cyan!                  �                                         �
echo [8C�                                                                                   �
echo [8C������������������������������������!bgyellow!!red!� TELEVISION �!bgblack!!cyan!���������������������������������͹
echo [8C�                                                                                   �
echo [8C�   !39!channelstream.watch!cyan!            �   !43!fr4.sportplus.live !green!(sport)!cyan!     �
echo [8C�   !40!www.myfree-tivi.com!cyan!            �   !44!sport-stream.live !green!(sport)!cyan!      �
echo [8C�   !41!livetv.sx !green!(sport)!cyan!              �   !45!streaming-sport.tv !green!(sport)!cyan!     �
echo [8C�   !42!antennesport.tv !green!(sport)!cyan!        �                                         �
echo [8C�                                                                                   �
echo [8C�����������������������������������������������������������������������������������͹
call :DRAW_CENTER "!yellow!46!cyan!  >  !white!Streaming Applications!cyan!" 20
echo [8C�����������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / "!yellow!SEARCH!grey!" / "!yellow!EN!grey!" !t2! !yellow!{!t3!}!grey!." 40
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUESTREAMINGFR
if "!x!"=="46" (set la=FR) & goto :STREAMINGAPPS
call :CHOOSE en && goto :STREAMINGEN
call :CHOOSE search && (call :IS_SEARCH e49c0bfe5fd6d7fb6 & goto :CONTINUESTREAMINGFR)
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARSTREAMINGFR
call :ERRORMESSAGE
goto :CONTINUESTREAMINGFR

:STREAMINGAPPS
call :SCALE 109 36
title Streaming Applications
call :ROSE "Streaming Applications"

:CLEARSTREAMINGAPPS
call :CLEAR 1 16
set db=popcorn-time.tw/ www.stremio.com/ cinemaapk.com/ www.cinehub.app/ teatv.net/ www.morpheustvbox.com/ mediaboxhd.net/ www.vivatv.io/ www.beetvapk.me/ filmplus.app/ www.novatvapk.com/ kisscartoon.info/kisscartoon-official-android-app/ animixplay.to/android/app animeglare.xyz/ tvmob.net/ www.livenettv.bz/

:CONTINUESTREAMINGAPPS
call :SCALE 109 36
echo !cyan!
echo [40C������������������������������
echo [39C// !red!�!bgyellow!!black! STREAMING APPLICATIONS !red!�!bgblack!!cyan! \\
echo [6C�����������������������������������������������������������������������������������������������ͻ
echo [6C�����������!bgyellow!!red!� Windows �!bgblack!!cyan!����������������������!bgyellow!!red!� macOS �!bgblack!!cyan!�����������������������!bgyellow!!red!� Linux �!bgblack!!cyan!����������͹
echo [6C�                               �                               �                               �
echo [6C�    !1!popcorn-time.tw!cyan!      �    !1!popcorn-time.tw!cyan!      �    !1!popcorn-time.tw!cyan!      �
echo [6C�    !2!www.stremio.com!cyan!      �    !2!www.stremio.com!cyan!      �    !2!www.stremio.com!cyan!      �
echo [6C�                               �                               �                               �
echo [6C�����������������������������������������������������������������������������������������������͹
echo [6C�������������������!bgyellow!!red!� Android �!bgblack!!cyan!���������������������������������������!bgyellow!!red!� iOS �!bgblack!!cyan!�������������������͹
echo [6C�                                               �                                               �
echo [6C�        !1!popcorn-time.tw!cyan!                  �          !1!popcorn-time.tw!cyan!                �
echo [6C�        !2!www.stremio.com!cyan!                  �          !2!www.stremio.com!cyan!                �
echo [6C�        !3!cinemaapk.com!cyan!                    �          !7!mediaboxhd.net!cyan!                 �
echo [6C�        !4!www.cinehub.app!cyan!                  �         !11!animeglare.xyz !green!(animes)!cyan!        �
echo [6C�        !5!teatv.net!cyan!                        �                                               �
echo [6C�        !6!www.morpheustvbox.com!cyan!            �                                               �
echo [6C�        !7!mediaboxhd.net!cyan!                   �                                               �
echo [6C�        !8!www.vivatv.io!cyan!                    �                                               �
echo [6C�        !9!www.beetvapk.me!cyan!                  �                                               �
echo [6C�       !10!filmplus.app!cyan!                     �                                               �
echo [6C�       !11!www.novatvapk.com!cyan!                �                                               �
echo [6C�       !12!kisscartoon.info !green!(animes)!cyan!        �                                               �
echo [6C�       !13!animixplay.to !green!(animes)!cyan!           �                                               �
echo [6C�       !14!animeglare.xyz !green!(animes)!cyan!          �                                               �
echo [6C�       !15!tvmob.net !green!(television)!cyan!           �                                               �
echo [6C�       !16!www.livenettv.bz !green!(television)!cyan!    �                                               �
echo [6C�                                               �                                               �
echo [6C�����������������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 20
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUESTREAMINGAPPS
call :CHOOSE back && goto :CLEARSTREAMING!la!
call :WEBSITESTART && goto :CLEARSTREAMINGAPPS
call :ERRORMESSAGE
goto :CONTINUESTREAMINGAPPS

:TORRENTING
call :SCALE 133 53
title Torrenting
call :ROSE Torrenting

:CLEARTORRENTING
call :CLEAR 1 78
set db=bitsearch.to/ www.limetorrents.pro/ www.torrentfunk.com/ www.toros.co/ www.gtdb.to/ www.torrentdownloads.pro/ 1337x.to/ rarbg.to/index80.php www.ettvcentral.com/ torrentz2k.xyz/ thepiratebay.org/index.html prostylex.org/ torrentgalaxy.to/ yourbittorrent.com/ anidex.info/ www.demonoid.is/ angietorrents.cc/ www.torrentdownload.info/ badasstorrents.com/ concen.org/torrents nyaa.si/ www.anirena.com/ subsplease.org/ mac-torrent-download.net/ mac-torrents.io/ yts.mx/ eztv.re/ www3.yggtorrent.nz/ www.sharewood.tv/ www.montorrent.com/ www.oxtorrent.cx/ torrent9.to/ filelisting.com/ bt4g.org/ www.7torrents.cc/ bitcq.com/ knaben.eu/ torrentproject2.com/ torrent-paradise.ml/ btdig.com/ ext.to/ www.torlock.com/ ibit.to/ zooqle.com/ torrentparadise.pm/ snowfl.com/ idope.se/ isohunt.app/ extratorrents.it/ pirateiro.com/ torrentseeker.com/ otorrents.com/ vstorrent.org/ torrents-csv.ml/ search.torrends.to/ proxy-bay.net/ proxygalaxy.pw/ yifystatus.com/ eztvstatus.com/ ettvproxies.com/ siteunblocked.info/ unblockproject.monster/ unblocksource.net/ unblockit.ch/ torrentbay.to/ proxyninja.org/ knaben.info/ unblocktorrent.com/ torrends.to/ github.com/Jackett/Jackett www.qbittorrent.org/ www.torrentrover.com/ sonarr.tv/ radarr.video/ lidarr.audio/ github.com/SchizoDuckie/DuckieTV couchpota.to/

:CONTINUETORRENTING
call :SCALE 133 53
echo !cyan!
echo [57C������������������
echo [56C// !red!�!bgyellow!!black! TORRENTING !red!�!bgblack!!cyan! \\
echo [8C�����������������������������������������������//������������������\\����������������������������������������������ͻ
echo [8C�����������������������������������������������������!bgyellow!!red!� English �!bgblack!!cyan!���������������������������������������������������͹
echo [8C�                                                                                                                   �
echo [8C�    !1!bitsearch.to!cyan!               �   !10!torrentz2k.xyz!cyan!           �   !19!www.torrentdownload.info!cyan!       �
echo [8C�    !2!www.limetorrents.pro!cyan!       �   !11!thepiratebay.org!cyan!         �   !20!concen.org!cyan!                     �
echo [8C�    !3!www.torrentfunk.com!cyan!        �   !12!prostylex.org!cyan!            �   !21!nyaa.si !green!(animes)!cyan!               �
echo [8C�    !4!www.toros.co!cyan!               �   !13!torrentgalaxy.to!cyan!         �   !22!www.anirena.com !green!(animes)!cyan!       �
echo [8C�    !5!www.gtdb.to!cyan!                �   !14!yourbittorrent.com!cyan!       �   !23!subsplease.org !green!(animes)!cyan!        �
echo [8C�    !6!www.torrentdownloads.pro!cyan!   �   !15!anidex.info!cyan!              �   !24!mac-torrent-download.net !green!(MAC)!cyan! �
echo [8C�    !7!1337x.to!cyan!                   �   !16!www.demonoid.is!cyan!          �   !25!mac-torrents.io !green!(MAC)!cyan!          �
echo [8C�    !8!rarbg.to!cyan!                   �   !17!angietorrents.cc!cyan!         �   !26!yts.mx !green!(movies)!cyan!                �
echo [8C�    !9!www.ettvcentral.com!cyan!        �   !18!badasstorrents.com!cyan!       �   !27!eztv.re !green!(TV)!cyan!                   �
echo [8C�                                                                                                                   �
echo [8C�����������������������������������������������������!bgyellow!!red!� French �!bgblack!!cyan!����������������������������������������������������͹
echo [8C�                                                                                                                   �
echo [8C�   !28!www3.yggtorrent.nz!cyan!         �   !30!www.montorrent.com!cyan!       �   !32!torrent9.to!cyan!                    �
echo [8C�   !29!www.sharewood.tv!cyan!           �   !31!www.oxtorrent.cx!cyan!         �                                         �
echo [8C�                                                                                                                   �
echo [8C������������������������������������������������!bgyellow!!red!� Torrent Searching �!bgblack!!cyan!����������������������������������������������͹
echo [8C�                                                                                                                   �
echo [8C�   !33!filelisting.com!cyan!            �   !41!ext.to!cyan!                   �   !49!extratorrents.it!cyan!               �
echo [8C�   !34!bt4g.org!cyan!                   �   !42!www.torlock.com!cyan!          �   !50!pirateiro.com!cyan!                  �
echo [8C�   !35!www.7torrents.cc!cyan!           �   !43!ibit.to!cyan!                  �   !51!torrentseeker.com!cyan!              �
echo [8C�   !36!bitcq.com!cyan!                  �   !44!zooqle.com!cyan!               �   !52!otorrents.com!cyan!                  �
echo [8C�   !37!knaben.eu!cyan!                  �   !45!torrentparadise.pm!cyan!       �   !53!vstorrent.org!cyan!                  �
echo [8C�   !38!torrentproject2.com!cyan!        �   !46!snowfl.com!cyan!               �   !54!torrents-csv.ml!cyan!                �
echo [8C�   !39!torrent-paradise.ml!cyan!        �   !47!idope.se!cyan!                 �   !55!search.torrends.to!cyan!             �
echo [8C�   !40!btdig.com!cyan!                  �   !48!isohunt.app!cyan!              �                                         �
echo [8C�                                                                                                                   �
echo [8C�������������������������������������������������!bgyellow!!red!� Torrent Proxys �!bgblack!!cyan!������������������������������������������������͹
echo [8C�                                                                                                                   �
echo [8C�   !56!proxy-bay.net!cyan!              �   !61!siteunblocked.info!cyan!       �   !66!proxyninja.org!cyan!                 �
echo [8C�   !57!proxygalaxy.pw!cyan!             �   !62!unblockproject.monster!cyan!   �   !67!knaben.info!cyan!                    �
echo [8C�   !58!yifystatus.com!cyan!             �   !63!unblocksource.net!cyan!        �   !68!unblocktorrent.com!cyan!             �
echo [8C�   !59!eztvstatus.com!cyan!             �   !64!unblockit.ch!cyan!             �   !69!torrends.to!cyan!                    �
echo [8C�   !60!ettvproxies.com!cyan!            �   !65!torrentbay.to!cyan!            �                                         �
echo [8C�                                                                                                                   �
echo [8C����������������������������������������������!bgyellow!!red!� Torrent Applications �!bgblack!!cyan!���������������������������������������������͹
echo [8C�                                                                                                                   �
echo [8C�   !70!Jacket!cyan!                     �   !73!sonarr.tv!cyan!                �   !76!DuckieTV!cyan!                       �
echo [8C�   !71!www.qbittorrent.org!cyan!        �   !74!radarr.video!cyan!             �   !77!couchpota.to!cyan!                   �
echo [8C�   !72!www.torrentrover.com!cyan!       �   !75!lidarr.audio!cyan!             �                                         �
echo [8C�                                                                                                                   �
echo [8C�������������������������������������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / "!yellow!INSTALL!grey!" / "!yellow!SEARCH!grey!" / "!yellow!ADD!grey!" / "!yellow!HELP!grey!" !t2! !yellow!{!t3!}!grey!." 60
echo !red!
>nul 2>&1 reg query "HKCR\.torrent" || (
if "!Language!"=="EN" call :DRAW_CENTER "ERROR: To be able to use !yellow!TORRENTING!red!, first you need to choose: !yellow![INSTALL]" 15
if "!Language!"=="FR" call :DRAW_CENTER "ERREUR: Pour pouvoir utiliser !yellow!TORRENTING!red!, vous devez d'abord choisir: !yellow![INSTALL]" 15
echo:
)
call :PROMPT
call :WEBSITECHECK && goto :CONTINUETORRENTING
call :CHOOSE install && (call :INSTALL_FILE qBittorent & goto :CONTINUETORRENTING)
call :CHOOSE search && (call :IS_SEARCH 4d5e330a21ba32b26 & goto :CONTINUETORRENTING)
call :CHOOSE add && goto :ADDTORRENT
call :CHOOSE help && goto :TORRENTTUTORIAL
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARTORRENTING
call :ERRORMESSAGE
goto :CONTINUETORRENTING

:TORRENTTUTORIAL
call :SCALE 150 23
call :ROSE "Torrent Tutorial"

:CONTINUETORRENTTUTORIAL
call :SCALE 150 23
title Torrent Tutorial
echo !cyan!
echo [42C������������������������
if "!Language!"=="EN" set t=TUTORIAL
if "!Language!"=="FR" set t=TUTORIEL
echo [41C// !red!�!bgyellow!!black! TORRENT !t! !red!�!bgblack!!cyan! \\
echo [4C�������������������������������������������������������������������������������������������������������������������������������������������ͻ
echo [4C�                                                                                                                                           �
if "!Language!"=="EN" echo [4C�                          ��!bgyellow!!red!�  What's a torrent (Wikipedia) ? �!bgblack!!cyan!��                                                                         �
if "!Language!"=="FR" echo [4C�                          ��!bgyellow!!red!�  Qu'est-ce qu'un torrent (Wikipedia) ? �!bgblack!!cyan!��                                                                  �
echo [4C�                                                                                                                                           �
if "!Language!"=="EN" echo [4C�  Torrents are a method of distributing files over the internet.                                                                           �
if "!Language!"=="FR" echo [4C�  Le Torrent est une m�thode de distribution de fichiers sur Internet.                                                                     �
if "!Language!"=="EN" echo [4C�  It operate over the BitTorrent protocol to facilitate what's called peer-to-peer (P2P) file sharing.                                     �
if "!Language!"=="FR" echo [4C�  Il fonctionne sur le protocole Bittorrent pour faciliter ce que l'on appelle le partage de fichiers peer-to-peer (P2P).                  �
if "!Language!"=="EN" echo [4C�  The most common way to use torrents is through a special file that uses the .torrent file extension.                                     �
if "!Language!"=="FR" echo [4C�  La fa�ont la plus courante d'utiliser des torrents consiste � utiliser un fichier sp�cial qui utilise l'extension de fichier .torrent    �
echo [4C�                                                                                                                                           �
if "!Language!"=="EN" echo [4C�                           ��!bgyellow!!red!�  How to open .torrent files ? �!bgblack!!cyan!��                                                                          �
if "!Language!"=="FR" echo [4C�                          ��!bgyellow!!red!�  Comment ouvrir des fichiers .torrent ? �!bgblack!!cyan!��                                                                 �
echo [4C�                                                                                                                                           �
if "!Language!"=="EN" echo [4C�  !yellow!1!cyan!  ^> !white! Download and install qBittorrent.!cyan!                                                                                                  �
if "!Language!"=="FR" echo [4C�  !yellow!1!cyan!  ^> !white! T�l�chargez et installer qBittorrent.!cyan!                                                                                              �
if "!Language!"=="EN" echo [4C�  Then you can run the .torrent that you have downloaded in one of the previous Illegal Services Torrenting links.                         �
if "!Language!"=="FR" echo [4C�  Ensuite, vous pouvez ex�cuter le .torrent que vous avez t�l�charg� dans l'un des liens de Torrenting depuis Illegal Services.            �
echo [4C�                                                                                                                                           �
echo [4C�������������������������������������������������������������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 20
echo:
call :PROMPT
if "!x!"=="1" call :INSTALL_FILE qBittorent & goto :CONTINUETORRENTTUTORIAL
call :CHOOSE back && goto :TORRENTING
call :ERRORMESSAGE
goto :CONTINUETORRENTTUTORIAL

:ADDTORRENT
echo !cyan!
if "!Language!"=="EN" (
echo This option allow you to create a magnet link with an HASH.
echo Exemple of an HASH: "c12fe1c06bba254a9dc9f519b335aa7c1367a88a"
)
if "!Language!"=="FR" (
echo Cette option vous permet de cr�er un lien magn�tique avec un HASH.
echo Exemple d'un HASH: "c12fe1c06bba254a9dc9f519b335aa7c1367a88a"
)
>nul 2>&1 reg query "HKCR\magnet\shell\open\command" || goto :ERROR_ADDTORRENT
echo !cyan!
if "!Language!"=="EN" set t=Type the torrent's HASH
if "!Language!"=="FR" set t=Entrez le HASH du torrent
%showcursor%
set x=
set /p "x=!t!: !yellow!"
%hidecursor%
call :CHOOSE back && goto :CONTINUETORRENTING
if defined x if "!x:~39!"=="!x:~-1!" start "" "magnet:?xt=urn:btih:!x!" && goto :CONTINUETORRENTING || goto :ERROR_ADDTORRENT
echo !cyan!
call :ERRORMESSAGE
goto :CONTINUETORRENTING

:ERROR_ADDTORRENT
echo !red!
if "!Language!"=="EN" (
echo ERROR: You need a working bittorrent platform in order to make magnet links working.
echo Do you want to install qBittorrent in order to make it working ? [!yellow!YES!red!] / [!yellow!NO!red!]
>nul choice /n /c YN
)
if "!Language!"=="FR" (
echo ERREUR: vous avez besoin d'une plate-forme bittorrent fonctionnelle pour que les liens magn�tiques fonctionnent.
echo Voulez-vous installer qBittorrent pour le faire fonctionner ? [!yellow!OUI!red!] / [!yellow!NON!red!]
>nul choice /n /c ON
)
if "!errorlevel!"=="1" call :INSTALL_FILE qBittorent
goto :CONTINUETORRENTING

:SUBTITLES
call :SCALE 72 35
title Subtitles
call :ROSE Subtitles

:CLEARSUBTITLES
call :CLEAR 1 23
set db=subscene.com/ www.opensubtitles.com/ www.opensubtitles.org/ opensubtitle.info/ ytsubtitles.com/ yifysubtitles.org/ yts-subs.com/ subs.dog/ www.subs4free.info/ www.subtitledb.org/ www.addic7ed.com/ isubtitles.org/ subdl.com/ `www.moviesubtitles.net/ www.podnapisi.net/ tvsubs.net/ www.tvsubtitles.net/ www.subdivx.com/ www.subtitlecat.com/ www.sous-titres.eu/ www.u-sub.net/ www.kitsunekko.net/ subs.nandesuka.workers.dev/

:CONTINUESUBTITLES
call :SCALE 72 35
echo !cyan!
echo [9C�����������������������������������������������������ͻ
echo [9C���������������������!bgyellow!!red!� SUBTITLES �!bgblack!!cyan!�������������������͹
echo [9C�                                                     �
echo [9C�    !1!subscene.com!cyan!                               �
echo [9C�    !2!www.opensubtitles.com!cyan!                      �
echo [9C�    !3!www.opensubtitles.org!cyan!                      �
echo [9C�    !4!opensubtitle.info!cyan!                          �
echo [9C�    !5!ytsubtitles.com!cyan!                            �
echo [9C�    !6!yifysubtitles.org!cyan!                          �
echo [9C�    !7!yts-subs.com!cyan!                               �
echo [9C�    !8!subs.dog!cyan!                                   �
echo [9C�    !9!www.subs4free.info!cyan!                         �
echo [9C�   !10!www.subtitledb.org!cyan!                         �
echo [9C�   !11!www.addic7ed.com!cyan!                           �
echo [9C�   !12!isubtitles.org!cyan!                             �
echo [9C�   !13!subdl.com!cyan!                                  �
echo [9C�   !14!www.moviesubtitles.net!cyan!                     �
echo [9C�   !15!www.podnapisi.net!cyan!                          �
echo [9C�   !16!tvsubs.net!cyan!                                 �
echo [9C�   !17!www.tvsubtitles.net!cyan!                        �
echo [9C�   !18!www.subdivx.com!cyan!                            �
echo [9C�   !19!www.subtitlecat.com!cyan!                        �
echo [9C�   !20!www.sous-titres.eu!cyan!                         �
echo [9C�   !21!www.u-sub.net!cyan!                              �
echo [9C�   !22!www.kitsunekko.net !green!(animes)!cyan!                �
echo [9C�   !23!subs.nandesuka.workers.dev !green!(animes) [FR]!cyan!   �
echo [9C�                                                     �
echo [9C�����������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / "!yellow!SEARCH!grey!" !t2! !yellow!{!t3!}!grey!." 30
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUESUBTITLES
call :CHOOSE search && (call :IS_SEARCH 44c549fe875e83514 & goto :CONTINUESUBTITLES)
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARSUBTITLES
call :ERRORMESSAGE
goto :CONTINUESUBTITLES

:WINDOWS
call :SCALE 136 52
title Cracked Windows apps
call :ROSE "Cracked Windows apps"

:CLEARWINDOWS
call :CLEAR 1 76
set db=getintopc.com/ crackingpatching.com/ karanpc.com/ filecr.com/ s0ft4pc.com/ www.mazterize.com/ gigapurbalingga.net/ appnee.com/ www.sadeempc.com/ shareappscrack.com/ free4pc.org/ appload.club/ izofile.com/ www.novahax.com/ haxnode.net/ lostvayne.com/ filewomen.com/ crackshash.com/ www.cybermania.ws/ cracksurl.com/ fileriver.net/ piratepc.me/ ftuapps.dev/ starcrack.net/ startcrack.net/ keygenninja.net/ fileash.com/ www.trucnet.com/ w14.monkrus.ws/ `www.intercambiosvirtuales.org/ diakov.net/ lrepacks.net/ repack.me/ portable4pc.com/ www.fcportables.com/software/ portableappz.blogspot.com/ igg-games.com/ pcgamestorrents.com/ www.skidrowcodex.net/ www.mrpcgamer.co/ www.game3rb.com/ agfy.co/ cracked-games.org/ www.ovagames.com/ steamunlocked.net/ gog-games.com/ codex-games.com/ getgamez.net/ www.elamigos-games.com/ crackhub.site/ freegameshub.co/ gogunlocked.com/ alltorrents.co/ www.myabandonware.com/ gamesnostalgia.com/ cygames.fr/ telecharger-jeuxpc.fr/ www.gamestorrents.fm/ repack-games.com/ www.game-repack.site/ elamigos.site/ fitgirl-repacks.site/ repack-mechanics.com/ gamesdrive.net/ darckrepacks.com/ dodi-repacks.site/ www.blackboxrepack.com/ masquerade.site/ scooter-repacks.site/ www.gnarly-repacks.site/ cpgrepacks.site/ www.tiny-repacks.win/ repack.info/ m4ckd0ge-repacks.me/ e13.xatab-repack.com/ qoob.name/

:CONTINUEWINDOWS
call :SCALE 136 52
echo !cyan!
echo [56C����������������������������
echo [55C// !red!�!bgyellow!!black! CRACKED WINDOWS APPS !red!�!bgblack!!cyan! \\
echo [8C����������������������������������������������������������������������������������������������������������������������ͻ
echo [8C����������������������������������������������������!bgyellow!!red!� Applications �!bgblack!!cyan!��������������������������������������������������͹
echo [8C�                                                                                                                      �
echo [8C�    !1!getintopc.com!cyan!           �   !11!free4pc.org!cyan!                �   !21!fileriver.net!cyan!                      �
echo [8C�    !2!crackingpatching.com!cyan!    �   !12!appload.club!cyan!               �   !22!piratepc.me!cyan!                        �
echo [8C�    !3!karanpc.com!cyan!             �   !13!izofile.com!cyan!                �   !23!ftuapps.dev!cyan!                        �
echo [8C�    !4!filecr.com!cyan!              �   !14!www.novahax.com!cyan!            �   !24!starcrack.net!cyan!                      �
echo [8C�    !5!s0ft4pc.com!cyan!             �   !15!haxnode.net!cyan!                �   !25!startcrack.net!cyan!                     �
echo [8C�    !6!www.mazterize.com!cyan!       �   !16!lostvayne.com!cyan!              �   !26!keygenninja.net!cyan!                    �
echo [8C�    !7!gigapurbalingga.net!cyan!     �   !17!filewomen.com!cyan!              �   !27!fileash.com!cyan!                        �
echo [8C�    !8!appnee.com!cyan!              �   !18!crackshash.com!cyan!             �   !28!www.trucnet.com !green!(FR)!cyan!               �
echo [8C�    !9!www.sadeempc.com!cyan!        �   !19!www.cybermania.ws!cyan!          �   !29!w14.monkrus.ws !green!(RU)!cyan!                �
echo [8C�   !10!shareappscrack.com!cyan!      �   !20!cracksurl.com!cyan!              �   !30!www.intercambiosvirtuales.org !green!(ES)!cyan! �
echo [8C�                                                                                                                      �
echo [8C������������������������������������������������!bgyellow!!red!� Application Repacks �!bgblack!!cyan!�����������������������������������������������͹
echo [8C�                                                                                                                      �
echo [8C�   !31!diakov.net !green!(RU)!cyan!         �   !32!lrepacks.net !green!(RU)!cyan!          �   !33!repack.me !green!(RU)!cyan!                     �
echo [8C�                                                                                                                      �
echo [8C���������������������������������������������������!bgyellow!!red!� Portable Apps �!bgblack!!cyan!��������������������������������������������������͹
echo [8C�                                                                                                                      �
echo [8C�   !34!portable4pc.com!cyan!         �   !35!www.fcportables.com!cyan!        �   !36!portableappz.blogspot.com!cyan!          �
echo [8C�                                                                                                                      �
echo [8C�����������������������������������������������������!bgyellow!!red!� Videogames �!bgblack!!cyan!���������������������������������������������������͹
echo [8C�                                                                                                                      �
echo [8C�   !37!igg-games.com !red!(unsafe)!cyan!  �   !45!steamunlocked.net!cyan!          �   !53!alltorrents.co!cyan!                     �
echo [8C�   !38!pcgamestorrents.com!cyan!     �   !46!gog-games.com!cyan!              �   !54!www.myabandonware.com !green!(retro)!cyan!      �
echo [8C�   !39!www.skidrowcodex.net!cyan!    �   !47!codex-games.com!cyan!            �   !55!gamesnostalgia.com !green!(retro)!cyan!         �
echo [8C�   !40!www.mrpcgamer.co!cyan!        �   !48!getgamez.net!cyan!               �   !56!cygames.fr !green!(FR)!cyan!                    �
echo [8C�   !41!www.game3rb.com!cyan!         �   !49!www.elamigos-games.com!cyan!     �   !57!telecharger-jeuxpc.fr !green!(FR)!cyan!         �
echo [8C�   !42!agfy.co!cyan!                 �   !50!crackhub.site!cyan!              �   !58!www.gamestorrents.fm !green!(ES)!cyan!          �
echo [8C�   !43!cracked-games.org!cyan!       �   !51!freegameshub.co!cyan!            �                                             �
echo [8C�   !44!www.ovagames.com!cyan!        �   !52!gogunlocked.com!cyan!            �                                             �
echo [8C�                                                                                                                      �
echo [8C�������������������������������������������������!bgyellow!!red!� Videogame Repacks �!bgblack!!cyan!������������������������������������������������͹
echo [8C�                                                                                                                      �
echo [8C�   !59!repack-games.com!cyan!        �   !65!darckrepacks.com!cyan!           �   !71!cpgrepacks.site!cyan!                    �
echo [8C�   !60!www.game-repack.site!cyan!    �   !66!dodi-repacks.site!cyan!          �   !72!www.tiny-repacks.win!cyan!               �
echo [8C�   !61!elamigos.site!cyan!           �   !67!www.blackboxrepack.com!cyan!     �   !73!repack.info!cyan!                        �
echo [8C�   !62!fitgirl-repacks.site!cyan!    �   !68!masquerade.site!cyan!            �   !74!m4ckd0ge-repacks.me!cyan!                �
echo [8C�   !63!repack-mechanics.com!cyan!    �   !69!scooter-repacks.site!cyan!       �   !75!e13.xatab-repack.com !green!(RU)!cyan!          �
echo [8C�   !64!gamesdrive.net!cyan!          �   !70!www.gnarly-repacks.site!cyan!    �   !76!qoob.name !green!(RU)!cyan!                     �
echo [8C�                                                                                                                      �
echo [8C����������������������������������������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / "!yellow!SEARCH!grey!" !t2! !yellow!{!t3!}!grey!." 30
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEWINDOWS
call :CHOOSE search && (call :IS_SEARCH c63a5dfcf766495b0 & goto :CONTINUEWINDOWS)
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARWINDOWS
call :ERRORMESSAGE
goto :CONTINUEWINDOWS

:ANDROID
call :SCALE 85 33
title Cracked Android APK's
call :ROSE "Cracked Android APK"

:CLEARANDROID
call :CLEAR 1 27
set db=a2zapk.com/ apkhome.net/ apkmagic.com.ar/ oceanofapk.com/ apkgod.net/ 5mod.ru/ apkmb.com/ apk4free.org/ dlandroid.com/ apk4all.com/ rexdl.com/ moddroid.co/ apkmody.io/ inewkhushi.com/ proapk.in/mod-apk/ www.apps4download.com/ ihackedit.com/ iplayplus.org/ apkhouse.com/ www.rockmods.net/ www.ytricks.net/ www.apkheist.com/ apkfolks.com/ bluesmods.com/ www.whatsappmods.net/ vancedapp.com/ github.com/xManager-v2/xManager-Spotify

:CONTINUEANDROID
call :SCALE 85 33
echo !cyan!
echo [28C����������������������������
echo [27C// !red!�!bgyellow!!black! CRACKED ANDROID APPS !red!�!bgblack!!cyan! \\
echo [7C���������������������������������������������������������������������ͻ
echo [7C�                                                                     �
echo [7C�    !1!a2zapk.com!cyan!             �   !13!apkmody.io!cyan!               �
echo [7C�    !2!apkhome.net!cyan!            �   !14!inewkhushi.com!cyan!           �
echo [7C�    !3!apkmagic.com.ar!cyan!        �   !15!proapk.in!cyan!                �
echo [7C�    !4!oceanofapk.com!cyan!         �   !16!www.apps4download.com!cyan!    �
echo [7C�    !5!apkgod.net!cyan!             �   !17!ihackedit.com!cyan!            �
echo [7C�    !6!5mod.ru!cyan!                �   !18!iplayplus.org!cyan!            �
echo [7C�    !7!apkmb.com!cyan!              �   !19!apkhouse.com!cyan!             �
echo [7C�    !8!apk4free.org!cyan!           �   !20!www.rockmods.net!cyan!         �
echo [7C�    !9!dlandroid.com!cyan!          �   !21!www.ytricks.net!cyan!          �
echo [7C�   !10!apk4all.com!cyan!            �   !22!www.apkheist.com!cyan!         �
echo [7C�   !11!rexdl.com!cyan!              �   !23!apkfolks.com!cyan!             �
echo [7C�   !12!moddroid.co!cyan!            �                                   �
echo [7C�                                                                     �
echo [7C��������!bgyellow!!red!� Discord Modded �!bgblack!!cyan!����������������!bgyellow!!red!� Whats App Modded �!bgblack!!cyan!�������͹
echo [7C�                                 �                                   �
echo [7C�   !24!bluesmods.com!cyan!          �   !25!www.whatsappmods.net!cyan!     �
echo [7C�                                 �                                   �
echo [7C��������!bgyellow!!red!� YouTube Modded �!bgblack!!cyan!�����������������!bgyellow!!red!� Spotify Modded �!bgblack!!cyan!��������͹
echo [7C�                                 �                                   �
echo [7C�   !26!vancedapp.com!cyan!          �   !27!xManager-v2!cyan!              �
echo [7C�                                 �                                   �
echo [7C���������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / !yellow!SEARCH!grey! !t2! !yellow!{!t3!}!grey!." 30
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEANDROID
call :CHOOSE search && (call :IS_SEARCH 9cf300c9ec1262a39 & goto :CONTINUEANDROID)
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARANDROID
call :ERRORMESSAGE
goto :CONTINUEANDROID

:YOUTUBEDL
call :SCALE 104 32
title YouTube Downloader
call :ROSE "YouTube Downloader"

:CLEARYOUTUBEDL
for %%a in (YOUTUBEDLP YOUTUBEDLGEOBYPASS YOUTUBEDLPRIORITY YOUTUBEDLOUTPUTDIRECTORY) do call :CHECK_%%a
if "!Language!"=="EN" (
set "YouTubeDLDirectoryInfo=Change download location!cyan!                                   �"
if "!YouTubeDLGeoBypass!"=="0" set "YouTubeDLGeoBypassInfo=Bypass geographic restriction !cyan!(!red!OFF!!cyan!)                        �"
if "!YouTubeDLGeoBypass!"=="1" set "YouTubeDLGeoBypassInfo=Bypass geographic restriction !cyan!(!green!ON!!cyan!)                         �"
)
if "!Language!"=="FR" (
set "YouTubeDLDirectoryInfo=Changer l'emplacement de t�l�chargement!cyan!                    �"
if "!YouTubeDLGeoBypass!"=="0" set "YouTubeDLGeoBypassInfo=Contournement de la restriction g�ographique !cyan!(!red!OFF!!cyan!)         �"
if "!YouTubeDLGeoBypass!"=="1" set "YouTubeDLGeoBypassInfo=Contournement de la restriction g�ographique !cyan!(!green!ON!!cyan!)          �"
)
if "!YouTubeDLP!"=="0" (
set youtube_dl=youtube-dl
set "YouTubeDLPInfo=YouTube DLP !cyan!(!red!OFF!!cyan!)                                          �"
)
if "!YouTubeDLP!"=="1" (
set youtube_dl=yt-dlp
set "YouTubeDLPInfo=YouTube DLP !cyan!(!green!ON!!cyan!)                                           �"
)
if not exist "Portable_Apps\YouTube-DL\" md "Portable_Apps\YouTube-DL"

:CONTINUEYOUTUBEDL
call :SCALE 104 32
echo !cyan!
echo [39C��������������������������
echo [38C// !red!�!bgyellow!!black! YOUTUBE DOWNLOADER !red!�!bgblack!!cyan! \\
echo [8C��������������������������������������������������������������������������������������ͻ
if "!Language!"=="EN" (set t1=Video Formats) & set t2=Audio Formats
if "!Language!"=="FR" (set t1=Formats vid�o) & set t2=Formats Audio
echo [8C��������������!bgyellow!!red!� !t1! �!bgblack!!cyan!��������������������������!bgyellow!!red!� !t2! �!bgblack!!cyan!������������͹
echo [8C�                                           �                                          �
echo [8C�    !yellow!1!cyan!  ^> !white! BEST!cyan!                             �     !yellow!7!cyan!  ^> !white! BEST!cyan!                           �
echo [8C�    !yellow!2!cyan!  ^> !white! .mp4!cyan!                             �     !yellow!8!cyan!  ^> !white! .mp3!cyan!                           �
echo [8C�    !yellow!3!cyan!  ^> !white! .webm!cyan!                            �     !yellow!9!cyan!  ^> !white! .m4a!cyan!                           �
echo [8C�    !yellow!4!cyan!  ^> !white! .flv!cyan!                             �    !yellow!10!cyan!  ^> !white! .flac!cyan!                          �
echo [8C�    !yellow!5!cyan!  ^> !white! .mkv!cyan!                             �    !yellow!11!cyan!  ^> !white! .aac!cyan!                           �
echo [8C�    !yellow!6!cyan!  ^> !white! .avi!cyan!                             �    !yellow!12!cyan!  ^> !white! .opus!cyan!                          �
echo [8C�                                           �    !yellow!13!cyan!  ^> !white! .ogg!cyan!                           �
echo [8C�                                           �    !yellow!14!cyan!  ^> !white! .wav!cyan!                           �
echo [8C��������������������������������������������������������������������������������������͹
if "!Language!"=="EN" echo [8C��������������������������������������!bgyellow!!red!� Settings �!bgblack!!cyan!������������������������������������͹
if "!Language!"=="FR" echo [8C�������������������������������������!bgyellow!!red!� Param�tres �!bgblack!!cyan!�����������������������������������͹
echo [8C�                                                                                      �
echo [8C�                    !yellow!15!cyan!  ^> !white! !YouTubeDLPInfo!
echo [8C�                    !yellow!16!cyan!  ^> !white! !YouTubeDLDirectoryInfo!
echo [8C�                    !yellow!17!cyan!  ^> !white! !YouTubeDLGeoBypassInfo!
echo [8C��������������������������������������������������������������������������������������͹
if "!Language!"=="EN" (
echo [8C�    !brightmagenta!YouTube DL automatically download the best quality as available at the source.!cyan!    �
echo [8C�         !brightmagenta!We do not convert to 320 Kbps just for saying it's the best quality.!cyan!         �
)
if "!Language!"=="FR" (
echo [8C� !brightmagenta!YouTube DL t�l�charge la meilleure qualit� telle qu'elle est disponible � la source.!cyan! �
echo [8C� !brightmagenta!Nous ne convertissons pas � 320 Kbps juste pour dire que c'est la meilleure qualit�.!cyan! �
)
echo [8C��������������������������������������������������������������������������������������͹
if "!Language!"=="EN" set t=Download location:
if "!Language!"=="FR" set t=Emplacement de t�l�chargement:
echo           !brightmagenta!!t!!white! !YouTubeDLOutputDirectory!!cyan!
echo [8C��������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / "!yellow!OPEN!grey!" / "!yellow!PRIORITY!grey!" / "!yellow!INSTALL!grey!" !t2! !yellow!{!t3!}!grey!." 50
echo:
call :PROMPT
for /l %%a in (1,1,14) do if "!x!"=="%%a" call :CHECK_INTERNET && goto :GOYOUTUBEDL || (call :ERROR_INTERNET & goto :CONTINUEYOUTUBEDL)
if "!x!"=="15" (
if "!YouTubeDLP!"=="0" >nul reg add "!IS_Reg!" /v "YouTubeDLP" /t REG_DWORD /d 1 /f
if "!YouTubeDLP!"=="1" >nul reg add "!IS_Reg!" /v "YouTubeDLP" /t REG_DWORD /d 0 /f
goto :CLEARYOUTUBEDL
)
if "!x!"=="16" goto :YOUTUBEDLDIRECTORY
if "!x!"=="17" (
if "!YouTubeDLGeoBypass!"=="0" >nul reg add "!IS_Reg!" /v "YouTubeDLGeoBypass" /t REG_DWORD /d 1 /f
if "!YouTubeDLGeoBypass!"=="1" >nul reg add "!IS_Reg!" /v "YouTubeDLGeoBypass" /t REG_DWORD /d 0 /f
goto :CLEARYOUTUBEDL
)
call :CHOOSE open && (call :OPEN_FOLDER "!YouTubeDLOutputDirectory!" & goto :CONTINUEYOUTUBEDL)
call :CHOOSE priority && goto :YOUTUBEDL_PRIORITY
call :CHOOSE install && goto :YOUTUBEDLINSTALL
call :CHOOSE back && goto :MAINMENU
call :ERRORMESSAGE
goto :CONTINUEYOUTUBEDL

:GOYOUTUBEDL
if "!x!"=="1" (
set o1=Convert to BEST
set a=--format bestvideo[ext=best]+bestaudio[ext=best]/best
)
if "!x!"=="2" (
set o1=Convert to .mp4
set a=--merge-output-format mp4 --recode-video mp4
)
if "!x!"=="3" (
set o1=Convert to .webm
set a=--format bestvideo[ext=best]+bestaudio[ext=best]/best --recode-video webm
)
if "!x!"=="4" (
set o1=Convert to .flv
set a=--recode-video flv
)
if "!x!"=="5" (
set o1=Convert to .mkv
set a=--merge-output-format mkv --recode-video mkv
)
if "!x!"=="6" (
set o1=Convert to .avi
set a=--recode-video avi
)
if "!x!"=="7" (
set o1=Convert to BEST
set a=--extract-audio --format bestaudio[ext=best]/best --audio-quality 0
)
if "!x!"=="8" (
set o1=Convert to .mp3
set a=--extract-audio --audio-format mp3 --audio-quality 0
)
if "!x!"=="9" (
set o1=Convert to .m4a
set a=--extract-audio --audio-format m4a --audio-quality 0
)
if "!x!"=="10" (
set o1=Convert to .flac
set a=--extract-audio --audio-format flac --audio-quality 0
)
if "!x!"=="11" (
set o1=Convert to .aac
set a=--extract-audio --audio-format aac --audio-quality 0
)
if "!x!"=="12" (
set o1=Convert to .opus
set a=--extract-audio --audio-format opus --audio-quality 0
)
if "!x!"=="13" (
set o1=Convert to .ogg
set a=--merge-output-format ogg --extract-audio --audio-format vorbis --audio-quality 0
)
if "!x!"=="14" (
set o1=Convert to .wav
set a=--extract-audio --audio-format wav --audio-quality 0
)
echo !grey!
if "!Language!"=="EN" set "t=Enter "
if "!Language!"=="FR" set t=Entrer l'
%showcursor%
set x=
set /p "x=!t!URL: !yellow!"
%hidecursor%
call :CHECK_URL x URL || goto :CONTINUEYOUTUBEDL
set a=--add-metadata !a! "!x!"
echo:
if not exist "Portable_Apps\YouTube-DL\ffmpeg.exe" call :CURL "Portable_Apps\YouTube-DL\ffmpeg.7z" "`git_raw_downloads`/ffmpeg.7z" || (call :ERROR_INTERNET & goto :CONTINUEYOUTUBEDL)
if "!youtube_dl!"=="youtube-dl" if not exist "Portable_Apps\YouTube-DL\youtube-dl.exe" call :CURL "Portable_Apps\YouTube-DL\youtube-dl.exe" "https://yt-dl.org/downloads/latest/youtube-dl.exe" || (call :ERROR_INTERNET & goto :CONTINUEYOUTUBEDL)
if "!youtube_dl!"=="yt-dlp" if not exist "Portable_Apps\YouTube-DL\yt-dlp.exe" call :CURL "Portable_Apps\YouTube-DL\yt-dlp.exe" "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_x86.exe" || (call :ERROR_INTERNET & goto :CONTINUEYOUTUBEDL)
pushd "Portable_Apps\YouTube-DL"
2>nul !youtube_dl!.exe -U | findstr /vic:"!youtube_dl! is up" /c:"Current Build Hash"
:YOUTUBEDL_UPDATER
for %%a in (*.new *updater.bat *updater.cmd) do if exist "%%a" goto :YOUTUBEDL_UPDATER
popd
start "" "%~f0" YOUTUBEDL
goto :CONTINUEYOUTUBEDL

:YOUTUBEDLINSTALL
call :CURL "!TMPF!\vcredist_x86.exe" "https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x86.exe" || (call :ERROR_INTERNET & goto :CONTINUEYOUTUBEDL)
call :START_DOWNLOADED_FILE vcredist_x86.exe
goto :CONTINUEYOUTUBEDL

:YOUTUBEDLDIRECTORY
echo:
if "!Language!"=="EN" echo NOTE: Leaving blank will replace the original download location.
if "!Language!"=="FR" echo NOTE: Laisser vide remplacera l'emplacement de t�l�chargement originale.
echo:
if "!Language!"=="EN" set t=Enter new download location
if "!Language!"=="FR" set t=Entrer le nouvel emplacement de t�l�chargement
%showcursor%
set x=
set /p "x=!grey!!t!: !yellow!"
%hidecursor%
if defined x (
set "x=!x:"=!"
if "!x:~-1!"=="\" set "x=!x:~,-1!"
for %%a in ("!x!") do >nul reg add "!IS_Reg!" /v "YouTubeDLOutputDirectory" /t REG_SZ /d "%%~fa" /f
) else >nul 2>&1 reg delete "!IS_Reg!" /v "YouTubeDLOutputDirectory" /f
call :CHECK_YOUTUBEDLOUTPUTDIRECTORY
goto :CONTINUEYOUTUBEDL

:YOUTUBEDL_PRIORITY
call :PRIORITY_PROCESS YouTubeDLPriority
>nul reg add "!IS_Reg!" /v "YouTubeDLPriority" /t REG_SZ /d !YouTubeDLPriority! /f && (
if "!Language!"=="EN" set t="YouTube DL priority has been replaced to: '!YouTubeDLPriority!'"
if "!Language!"=="FR" set t="La priorit� de YouTube DL a bien �t� remplac�e par: '!YouTubeDLPriority!'"
call :MSGBOX 1 !t! 69696 "Illegal Services Checker"
)
call :CHECK_YOUTUBEDLPRIORITY
goto :CONTINUEYOUTUBEDL

:USEFULWEBSITES
call :SCALE 139 44
title Useful Websites
call :ROSE "Useful Websites"

:CLEARUSEFULWEBSITES
call :CLEAR 1 52
set db=www.virustotal.com/gui/ www.hybrid-analysis.com/ metadefender.opswat.com/ antiscan.me/ virusscan.jotti.org/ urlscan.io/ www.security.org/how-secure-is-my-password/ breachalarm.com/ haveibeenpwned.com/ monitor.firefox.com/ cybernews.com/personal-data-leak-check/ leakedsource.ru/ doxbin.org/ leak.sx/ dehashed.com/ leak-lookup.com/search/ webresolver.nl/tools/leaked_database weleakinfo.to/ protonvpn.com/ courvix.com/ sshdropbear.net/ freevpn.me/ www.vpnbook.com/ cloudssh.net/ www.freeopenvpn.org/ free-proxy-list.net/ protonmail.com/ www.startmail.com/ temp-mail.org/ dropmail.me/ yopmail.com/ generator.email/blog/gmail-generator temp-sms.org/ cyber-hub.pw/ webresolver.nl/ www.vedbex.com/tools/home wannabe1337.xyz/ mostwantedhf.info/ shadowcrypt.net/tools/ xresolver.com/ fakepersongenerator.com/ www.fakeimess.com/generator/ fakeproof.xenot.pro/ www.vedbex.com/tools/fake_proof torrentfreak.com/ `nextwarez.com/ www.journaldupirate.net/ filepursuit.com/ www.aiosearch.com/ www.filechef.com/ onehack.us/ www.torproject.org/

:CONTINUEUSEFULWEBSITES
call :SCALE 139 44
echo !cyan!
echo [58C�����������������������
echo [57C// !red!�!bgyellow!!black! USEFUL WEBSITES !red!�!bgblack!!cyan! \\
echo [8C������������������������������������������������//�����������������������\\��������������������������������������������ͻ
echo [8C�����������!bgyellow!!red!� Virus Scanners �!bgblack!!cyan!��������������������������!bgyellow!!red!� Security �!bgblack!!cyan!������������������������������!bgyellow!!red!� Leaks �!bgblack!!cyan!�������������͹
echo [8C�                                      �                                          �                                     �
echo [8C�    !1!www.virustotal.com!cyan!          �    !7!www.security.org!cyan!                �   !12!leakedsource.ru!cyan!            �
echo [8C�    !2!www.hybrid-analysis.com!cyan!     �    !8!breachalarm.com!cyan!                 �   !13!doxbin.org!cyan!                 �
echo [8C�    !3!metadefender.opswat.com!cyan!     �    !9!haveibeenpwned.com!cyan!              �   !14!leak.sx!cyan!                    �
echo [8C�    !4!antiscan.me!cyan!                 �   !10!monitor.firefox.com!cyan!             �   !15!dehashed.com!cyan!               �
echo [8C�    !5!virusscan.jotti.org!cyan!         �   !11!cybernews.com!cyan!                   �   !16!leak-lookup.com!cyan!            �
echo [8C�    !6!urlscan.io!cyan!                  �                                          �   !17!webresolver.nl/leaked!cyan!      �
echo [8C�                                      �                                          �   !18!weleakinfo.to!cyan!              �
echo [8C�                                      �                                          �                                     �
echo [8C�������!bgyellow!!red!� Free VPN's or Proxy's �!bgblack!!cyan!����������������������!bgyellow!!red!� Mails/SMS �!bgblack!!cyan!��������������������������!bgyellow!!red!� Web Resolvers �!bgblack!!cyan!���������͹
echo [8C�                                      �                                          �                                     �
echo [8C�   !19!protonvpn.com!cyan!               �   !27!protonmail.com!cyan!                  �    !35!webresolver.nl!cyan!              �
echo [8C�   !20!courvix.com!cyan!                 �   !28!www.startmail.com!cyan!               �    !36!www.vedbex.com!cyan!            �
echo [8C�   !21!sshdropbear.net!cyan!             �   !29!temp-mail.org!cyan!                   �    !37!wannabe1337.xyz!cyan!            �
echo [8C�   !22!freevpn.me!cyan!                  �   !30!dropmail.me!cyan!                     �    !38!mostwantedhf.info!cyan!
echo [8C�   !23!www.vpnbook.com!cyan!             �   !31!yopmail.com!cyan!                     �    !39!shadowcrypt.net!cyan!           �
echo [8C�   !24!cloudssh.net!cyan!                �   !32!generator.email!cyan!                 �    !40!xresolver.com!cyan!             �
echo [8C�   !25!www.freeopenvpn.org!cyan!         �   !33!temp-sms.org!cyan!                    �                                     �
echo [8C�   !26!free-proxy-list.net!cyan!         �   !34!cyber-hub.pw!cyan!                    �                                     �
echo [8C�                                      �                                          �                                     �
echo [8C������������!bgyellow!!red!� Fake Persons �!bgblack!!cyan!��������������������������!bgyellow!!red!� Warez News �!bgblack!!cyan!������������������������!bgyellow!!red!� File Searching �!bgblack!!cyan!���������͹
echo [8C�                                      �                                          �                                     �
echo [8C�   !41!fakepersongenerator.com!cyan!     �   !45!torrentfreak.com!cyan!                �    !49!www.aiosearch.com!cyan!         �
echo [8C�   !42!www.fakeimess.com!cyan!           �   !46!nextwarez.com !green!(FR)!cyan!              �    !50!www.filechef.com!cyan!          �
echo [8C�   !43!fakeproof.xenot.pro!cyan!         �   !47!www.journaldupirate.net !green!(FR)!cyan!    �                                     �
echo [8C�   !44!www.vedbex.com/fakeproof!cyan!    �   !48!filepursuit.com!cyan!                 �                                     �
echo [8C�                                      �                                          �                                     �
echo [8C��������������������������������������������������������!bgyellow!!red!� Others �!bgblack!!cyan!�����������������������������������������������������͹
echo [8C�                                                                                                                       �
echo [8C�                                          !51!onehack.us!cyan!                                                            �
echo [8C�                                          !52!www.torproject.org!cyan!                                                    �
echo [8C�                                                                                                                       �
echo [8C�����������������������������������������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 20
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEUSEFULWEBSITES
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARUSEFULWEBSITES
call :ERRORMESSAGE
goto :CONTINUEUSEFULWEBSITES

:DDOS
call :SCALE 82 31
title Denial Of Services (DDoS)
call :ROSE "IP Denial of Services"

:CLEARDDOS
call :CLEAR 1 18
set db=instant-stresser.com/ freestresser.to/ www.ipstresser.com/ ipstress.in/ royalstresser.com/ anonboot.com/ stresser.zone/ xtremebooter.xyz/ stresser.be/ eor-n.to/ str3ssed.co/ wannabe1337.xyz/stresser vtoxicity.net/ str3sser.io/ databooter.to/ asylumstresser.to/ deltastress.com/ ddosforhire.net/

:CONTINUEDDOS
call :SCALE 82 31
echo !cyan!
echo [23C��������������������������������������
echo [22C// !red!�!bgyellow!!black! DENIAL OF SERVICES (100%% Free) !red!�!bgblack!!cyan! \\
echo [8C����������������������������������������������������������������ͻ
echo [8C�   !1!instant-stresser.com!cyan!   �  [BEST]   [  1/Gbps] [300/s]  �
echo [8C�   !2!freestresser.to!cyan!        �           [  1/Gbps] [300/s]  �
echo [8C�   !3!www.ipstresser.com!cyan!     �           [200/Mbps] [300/s]  �
echo [8C�   !4!ipstress.in!cyan!            �           [  ?/Gbps] [250/s]  �
echo [8C�   !5!royalstresser.com!cyan!      �           [  ?/Gbps] [200/s]  �
echo [8C�   !6!anonboot.com!cyan!           �           [  ?/Gbps] [120/s]  �
echo [8C�   !7!stresser.zone!cyan!          �           [  ?/Gbps] [120/s]  �
echo [8C�   !8!xtremebooter.xyz!cyan!       �           [  ?/Gbps] [120/s]  �
echo [8C�   !9!stresser.be!cyan!            �           [  ?/Gbps] [120/s]  �
echo [8C�  !10!eor-n.to!cyan!               �           [  ?/Gbps] [120/s]  �
echo [8C�  !11!str3ssed.co!cyan!            �           [  1/Gbps] [120/s]  �
echo [8C�  !12!wannabe1337.xyz!cyan!        �           [  ?/Gbps] [120/s]  �
echo [8C�  !13!vtoxicity.net!cyan!          �           [100/Mbps] [120/s]  �
echo [8C�  !14!str3sser.io!cyan!            �           [  1/Gbps] [ 60/s]  �
echo [8C�  !15!databooter.to!cyan!          �           [  1/Gbps] [ 60/s]  �
echo [8C�  !16!asylumstresser.to!cyan!      �           [  1/Gbps] [ 60/s]  �
echo [8C�  !17!deltastress.com!cyan!        �           [  ?/Gbps] [ 30/s]  �
echo [8C����������������������������������������������������������������͹
if "!Language!"=="EN" (
echo [29C!brightmagenta!Last Updated: !white!23/08/2021
echo [15C!brightmagenta!Alternatively you can visit: !18!ddosforhire.net
)
if "!Language!"=="FR" (
echo [28C!brightmagenta!Mise � jour le: !white!23/08/2021
echo [11C!brightmagenta!Alternativement vous pouvez visiter: !18!ddosforhire.net
)
echo [8C!cyan!����������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 20
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEDDOS
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARDDOS
call :ERRORMESSAGE
goto :CONTINUEDDOS

:IPLOOKUP
call :SCALE 73 27
title IP Address Lookup
call :ROSE "IP Address Lookup"

:CLEARIPLOOKUP
call :CLEAR 1 8
set db=check-host.net/ dnschecker.org/ www.iplocation.net/ www.ip-tracker.org/ whatismyipaddress.com/
if exist "!TMPF!\IS_Log.txt" del /f /q "!TMPF!\IS_Log.txt"

:CONTINUEIPLOOKUP
call :SCALE 73 27
title IP Address Lookup
echo !cyan!
echo [28C�����������������
echo [27C// !red!�!bgyellow!!black! IP LOOKUP !red!�!bgblack!!cyan! \\
echo [17C�������������������������������������ͻ
echo [17C����!bgyellow!!red!�  Illegal Services IP Lookup �!bgblack!!cyan!��͹
echo [17C�                                     �
if "!Language!"=="EN" echo [17C�    !yellow!1!cyan!  ^> !white! View your IP!cyan!               �
if "!Language!"=="FR" echo [17C�    !yellow!1!cyan!  ^> !white! Regarder mon IP!cyan!            �
if "!Language!"=="EN" echo [17C�    !yellow!2!cyan!  ^> !white! Lookup an other IP!cyan!         �
if "!Language!"=="FR" echo [17C�    !yellow!2!cyan!  ^> !white! Regarder une autre IP!cyan!      �
if "!Language!"=="EN" echo [17C�    !yellow!3!cyan!  ^> !white! Lookup an other URL!cyan!        �
if "!Language!"=="FR" echo [17C�    !yellow!3!cyan!  ^> !white! Regarder une autre URL!cyan!     �
echo [17C�                                     �
if "!Language!"=="EN" echo [17C��������!bgyellow!!red!�  IP Lookup websites �!bgblack!!cyan!������͹
if "!Language!"=="FR" echo [17C����!bgyellow!!red!�  Sites Internet d'IP Lookup �!bgblack!!cyan!��͹
echo [17C�                                     �
echo [17C�    !4!check-host.net!cyan!             �
echo [17C�    !5!dnschecker.org!cyan!             �
echo [17C�    !6!www.iplocation.net!cyan!         �
echo [17C�    !7!www.ip-tracker.org!cyan!         �
echo [17C�                                     �
if "!Language!"=="EN" echo [17C�����!bgyellow!!red!�  IP Dynamic or Static ? �!bgblack!!cyan!�����͹
if "!Language!"=="FR" echo [17C����!bgyellow!!red!�  IP Dynamique ou Satique ? �!bgblack!!cyan!���͹
echo [17C�                                     �
echo [17C�    !8!whatismyipaddress.com!cyan!      �
echo [17C�������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / "!yellow!READ!grey!" / "!yellow!DELETE!grey!" !t2! !yellow!{!t3!}!grey!." 40
echo:
call :PROMPT
for %%a in (1 2 3) do if "%%a"=="!x!" call :CHECK_INTERNET && set "_el=!x!" || (call :ERROR_INTERNET & goto :CLEARIPLOOKUP)
if "!x!"=="1" goto :IPLOOKUP_RESPONSE
if "!x!"=="2" call :ENTER_LOOKUP IP && goto :IPLOOKUP_RESPONSE || goto :CLEARIPLOOKUP
if "!x!"=="3" call :ENTER_LOOKUP IP/URL && goto :IPLOOKUP_RESPONSE || goto :CLEARIPLOOKUP
call :WEBSITECHECK && goto :CONTINUEIPLOOKUP
call :CHOOSE back && goto :MAINMENU
call :CHOOSE read && (call :READ_IPLOOKUP & goto :CLEARIPLOOKUP)
call :CHOOSE delete && (call :DELETE_IPLOOKUP & goto :CLEARIPLOOKUP)
if not defined x for /l %%a in (!c1!,1,!c2!) do if "!%%a!"=="!yellow!%%a !checked!" call :ENTER_LOOKUP IP/URL && goto :CLEARIPLOOKUP || goto :CONTINUEIPLOOKUP
call :ERRORMESSAGE
goto :CONTINUEIPLOOKUP

:IPLOOKUP_RESPONSE
cls
if "!x!"=="1" title Looking up ^> ... & for /f %%a in ('Curl\x!arch!\curl.exe -fkLs "https://api.ipify.org"') do set x=%%a
>nul chcp 65001
for %%a in (1 2) do if "!_el!"=="%%a" (
title Looking up ^> !x!
call :IP_DETECTOR
)
if "!_el!"=="3" call :URL_DETECTOR
call :PROXY_DETECTOR
call :VPN_DETECTOR
echo !cyan!
type "!TMPF!\IS_Log.txt"
>nul chcp !CP!
echo !grey!
if "!Language!"=="EN" set t=Do you want to
if "!Language!"=="FR" set t=Voulez vous
call :DRAW_CENTER "!t! Save (!yellow!S!grey!) / Read (!yellow!R!grey!) / Delete (!yellow!D!grey!) / Back (!yellow!B!grey!) ?" 40

:CHOICE_IPLOOKUP
>nul choice /n /c SRDB
if "!errorlevel!"=="1" goto :IPLOOKUP_SAVE
if "!errorlevel!"=="2" call :READ_IPLOOKUP
if "!errorlevel!"=="3" call :DELETE_IPLOOKUP
if "!errorlevel!"=="4" goto :CLEARIPLOOKUP
goto :CHOICE_IPLOOKUP

:IPLOOKUP_SAVE
if "!Language!"=="EN" set t=Enter victim's name
if "!Language!"=="FR" set t=Entrez le nom de la victime
call :INPUTBOX "!t!: "
if not exist "!ISOutputDirectory!\IP Lookup Saved.txt" (
2>nul md "!ISOutputDirectory!"
echo =============================================>"!ISOutputDirectory!\IP Lookup Saved.txt"
)
>nul chcp 1252
echo   Name: !ID!>>"!ISOutputDirectory!\IP Lookup Saved.txt"
>nul chcp !CP!
echo =============================================>>"!ISOutputDirectory!\IP Lookup Saved.txt"
type "!TMPF!\IS_Log.txt">>"!ISOutputDirectory!\IP Lookup Saved.txt"
echo =============================================>>"!ISOutputDirectory!\IP Lookup Saved.txt"
if "!errorlevel!"=="0" (
if "!Language!"=="EN" set t="IP Lookup successfully saved at: " "'!ISOutputDirectory!\IP Lookup Saved.txt'" "Do you want to open it now ?"
if "!Language!"=="FR" set t="IP Lookup enregistr�s avec succ�s �: " "'!ISOutputDirectory!\IP Lookup Saved.txt'" "Voulez-vous l'ouvrir maintenant ?"
call :MSGBOXLEVEL 3 !t! 69668 "Illegal Services Checker"
if "!el!"=="6" start /max explorer.exe "!ISOutputDirectory!\IP Lookup Saved.txt"
) else (
if "!Language!"=="EN" set t=An unexpected error has occurred
if "!Language!"=="FR" set t=Une erreur inattendue est survenue
call :MSGBOX 1 "!t!." 69648 "Illegal Services Checker"
)
goto :CLEARIPLOOKUP

:PORT
call :SCALE 101 33
title IP Port Scanning
call :ROSE "IP Port Scanning"

:CLEARPORT
call :CLEAR 8 11
set db=www.adminsub.net/tcp-udp-port-finder www.speedguide.net/ports.php www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml portforward.com/ports.htm

:CONTINUEPORT
call :SCALE 101 33
echo !cyan!
echo [37C����������������������������
echo [36C// !red!�!bgyellow!!black! IP TCP PORT SCANNING !red!�!bgblack!!cyan! \\
echo [8C�����������������������������������������������������������������������������������ͻ
if "!Language!"=="EN" echo [8C���������������������������������!bgyellow!!red!� Scan all Ports �!bgblack!!cyan!��������������������������������͹
if "!Language!"=="FR" echo [8C�������������������������������!bgyellow!!red!� Scan tous les ports �!bgblack!!cyan!�����������������������������͹
echo [8C�                                                                                   �
if "!Language!"=="EN" echo [8C�                       !yellow!1!cyan!  ^> !white! Python: Scan all 65535 ports.!cyan!                         �
if "!Language!"=="FR" echo [8C�                     !yellow!1!cyan!  ^> !white! Python: Scan tous les 65535 ports.!cyan!                      �
if "!Language!"=="EN" echo [8C�                       !yellow!2!cyan!  ^> !white! NMAP  : Scan all 65535 ports.!cyan!                         �
if "!Language!"=="FR" echo [8C�                     !yellow!2!cyan!  ^> !white! NMAP  : Scan tous les 65535 ports.!cyan!                      �
echo [8C�����������������������������������������������������������������������������������͹
if "!Language!"=="EN" echo [8C������������������������������!bgyellow!!red!� Scan Most Used Ports �!bgblack!!cyan!�����������������������������͹
if "!Language!"=="FR" echo [8C������������������������!bgyellow!!red!� Scan les ports les plus utilis�s �!bgblack!!cyan!�����������������������͹
echo [8C�                                                                                   �
if "!Language!"=="EN" echo [8C�    !yellow!3!cyan!  ^> !white! NMAP: Scan only ports listeds in the file nmap-services.!cyan!                 �
if "!Language!"=="FR" echo [8C�    !yellow!3!cyan!  ^> !white! NMAP: Scan uniquement les ports list�s dans le fichier nmap-services.!cyan!    �
if "!Language!"=="EN" echo [8C�    !yellow!4!cyan!  ^> !white! NMAP: Scan + than 1660 ports.!cyan!                                            �
if "!Language!"=="FR" echo [8C�    !yellow!4!cyan!  ^> !white! NMAP: Scan + de 1660 ports.!cyan!                                              �
if "!Language!"=="EN" echo [8C�    !yellow!5!cyan!  ^> !white! NMAP: Scan top most useds ports.!cyan!                                         �
if "!Language!"=="FR" echo [8C�    !yellow!5!cyan!  ^> !white! NMAP: Scan les principaux ports les plus utilis�s.!cyan!                       �
if "!Language!"=="EN" echo [8C�    !yellow!6!cyan!  ^> !white! NMAP: Scan with version detection.!cyan!                                       �
if "!Language!"=="FR" echo [8C�    !yellow!6!cyan!  ^> !white! NMAP: Scan avec la d�tection de version.!cyan!                                 �
echo [8C�����������������������������������������������������������������������������������͹
if "!Language!"=="EN" echo [8C�����������������������������!bgyellow!!red!� Custom Port Range Scan �!bgblack!!cyan!����������������������������͹
if "!Language!"=="FR" echo [8C��������������������!bgyellow!!red!� Scan personnalis� de la plage des ports �!bgblack!!cyan!��������������������͹
echo [8C�                                                                                   �
if "!Language!"=="EN" echo [8C�                   !yellow!7!cyan!  ^> !white! NMAP: Scan your range of custom ports!cyan!                     �
if "!Language!"=="FR" echo [8C�               !yellow!7!cyan!  ^> !white! NMAP: Scan votre plage personnalis� de ports.!cyan!                 �
echo [8C�����������������������������������������������������������������������������������͹
if "!Language!"=="EN" set t=Description
if "!Language!"=="FR" set t=D�scription
echo [8C������������������������������!bgyellow!!red!� Portlist !t! �!bgblack!!cyan!�����������������������������͹
echo [8C�                                                                                   �
echo [8C�                             !8!www.adminsub.net!cyan!                                �
echo [8C�                             !9!www.speedguide.net!cyan!                              �
echo [8C�                            !10!www.iana.org!cyan!                                    �
echo [8C�                            !11!portforward.com!cyan!                                 �
echo [8C�����������������������������������������������������������������������������������ͼ
echo:
>nul 2>&1 sc query npcap || (
if "!Language!"=="EN" call :DRAW_CENTER "!red!ERROR: !grey!To use NMAP, you must first choose: "!yellow!INSTALL!grey!"" 20
if "!Language!"=="FR" call :DRAW_CENTER "!red!ERREUR: !grey!Pour utiliser NMAP, vous devez d'abord choisir: "!yellow!INSTALL!grey!"" 20
echo:
)
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!grey!!t1! "!yellow!BACK!grey!" / "!yellow!INSTALL!grey!" / "!yellow!PRIORITY!grey!" !t2! !yellow!{!t3!}!grey!." 45
echo:
call :PROMPT
for /l %%a in (1,1,7) do if "!x!"=="%%a" call :CHECK_INTERNET && goto :GOPORTSCANNING || (call :ERROR_INTERNET & goto :CONTINUEPORT)
call :WEBSITECHECK && goto :CONTINUEPORT
call :CHOOSE install && goto :NMAPINSTALL
call :CHOOSE priority && goto :PORT_PRIORITY
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARPORT
call :ERRORMESSAGE
goto :CONTINUEPORT

:GOPORTSCANNING
set o1=
set o2=
set a=
if "!x!"=="2" (
if "!Language!"=="EN" set o1=all 65535 ports.
if "!Language!"=="FR" set o1=tous les 65535 ports.
set o2=minimum 1 minute.
set a=-p-
)
if "!x!"=="3" (
if "!Language!"=="EN" set o1=only ports listeds in the file nmap-services.
if "!Language!"=="FR" set o1=uniquement les ports list�s dans le fichier nmap-services.
set o2=minimum 3 seconds.
set a=-F
)
if "!x!"=="4" (
if "!Language!"=="EN" set o1=+ than 1660 ports.
if "!Language!"=="FR" set o1=+ de 1660 ports.
set o2=minimum 3 seconds.
)
if "!x!"=="5" (
if "!Language!"=="EN" set o1=top most useds ports.
if "!Language!"=="FR" set o1=Scan les principaux ports les plus utilis�s.
set o2=minimum 13 seconds.
set a=--top-ports 65535
)
if "!x!"=="6" (
if "!Language!"=="EN" set o1=Scan with version detection.
if "!Language!"=="FR" set o1=Scan avec la d�tection de version.
set o2=minimum 19 seconds.
set a=-sV --allports
)
if "!x!"=="7" (
if "!Language!"=="EN" set t=Enter start port
if "!Language!"=="FR" set t=Entrer le port de d�but
set p1=
set /p "p1=!grey!!t!: !yellow!"
call :CHECK_PORT p1 || goto :CLEARPORT
if "!Language!"=="EN" set t=Enter end port
if "!Language!"=="FR" set t=Entrer le port de fin
set p2=
set /p "p2=!grey!!t!: !yellow!"
call :CHECK_PORT p2 || goto :CLEARPORT
set a=-p!p1!-!p2!
if "!Language!"=="EN" set o1=Scan your range of custom ports.
if "!Language!"=="FR" set o1=Scan votre plage personnalis� de ports.
set o2=Unknow.
)
if "!Language!"=="EN" set "t=Enter "
if "!Language!"=="FR" set t=Entrer l'
%showcursor%
set x=
set /p "x=!grey!!t!IP/URL: !yellow!"
call :CHECK_URL x IP/URL || goto :CLEARPORT
if not defined o1 (
if not exist "TCP_Port_Scanner.exe" call :CURL "Portable_Apps\TCP_Port_Scanner.exe" "`git_raw_downloads`/TCP_Port_Scanner.exe" || (call :ERROR_INTERNET & goto :CLEARPORT)
pushd "Portable_Apps"
call :CHECK_PORTPRIORITY
start !PortPriority! TCP_Port_Scanner.exe "!x!"
popd
goto :CLEARPORT
)
set a=-T5 --open !a! "!x!"
set a=!a:  = !
if not exist "Portable_Apps\NMAP\nmap.exe" call :CURL "Portable_Apps\NMAP.7z" "`git_raw_downloads`/NMAP.7z" || (call :ERROR_INTERNET & goto :CLEARPORT)
start "" "%~f0" NMAP
goto :CLEARPORT

:NMAPINSTALL
call :CURL "!TMPF!\vcredist_x86.exe" "https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x86.exe" || (call :ERROR_INTERNET & goto :CONTINUEPORT)
call :START_DOWNLOADED_FILE vcredist_x86.exe
call :CURL "!TMPF!\npcap-1.31.exe" "https://nmap.org/npcap/dist/npcap-1.50.exe" || (call :ERROR_INTERNET & goto :CONTINUEPORT)
call :START_DOWNLOADED_FILE npcap-1.31.exe
goto :CONTINUEPORT

:PORT_PRIORITY
call :PRIORITY_PROCESS PortPriority
>nul reg add "!IS_Reg!" /v "PortPriority" /t REG_SZ /d !PortPriority! /f && (
if "!Language!"=="EN" set t="Port Scanning priority has been replaced to: '!PortPriority!'"
if "!Language!"=="FR" set t="La priorit� du Port Scanning a bien �t� remplac�e par: '!PortPriority!'"
call :MSGBOX 1 !t! 69696 "Illegal Services Checker"
)
goto :CONTINUEPORT

:PINGERPORT
title IP Port Pinger
call :ROSE "IP Port Pinger"
if "!Language!"=="EN" set "t=Enter "
if "!Language!"=="FR" set t=Entrer l'
%showcursor%
set x=
set /p "x=!grey!!t!IP/URL: !yellow!"
%hidecursor%
call :CHECK_URL x IP/URL || goto :MAINMENU
if "!Language!"=="EN" set t=Enter Port
if "!Language!"=="FR" set t=Entrer le Port
%showcursor%
set p1=
set /p "p1=!grey!!t!: !yellow!"
%hidecursor%
call :CHECK_PORT p1 || goto :MAINMENU
if not exist "Portable_Apps\paping.exe" call :CURL "Portable_Apps\paping.exe" "`git_raw_downloads`/paping.exe" || (call :ERROR_INTERNET & goto :MAINMENU)
pushd "Portable_Apps"
start paping.exe !x! -p !p1!
popd
goto :MAINMENU

:IPPINGER
title IP Pinger
call :ROSE "IP Pinger"
if "!Language!"=="EN" set "t=Enter "
if "!Language!"=="FR" set t=Entrer l'
%showcursor%
set x=
set /p "x=!grey!!t!IP/URL: !yellow!"
%hidecursor%
call :CHECK_URL x IP/URL || goto :MAINMENU
start "" "%~f0" PINGER
goto :MAINMENU

:IPLOGGERS
call :SCALE 65 24
title IP Loggers
if "!Language!"=="EN" set t="INFORMATION: Url Shortners are useful for hiding the original links of your suspect IPLogger." "This solution does not work with some services that will redirect your shortened links directly to the last linked url. Example FaceBook, Instagram, Twitter..."
if "!Language!"=="FR" set t="INFORMATION: Les URL Shortners sont utiles pour cacher les liens originaux de votre IPLogger suspect." "Cette solution ne fonctionne pas avec certains services qui redirigeront directement votre lien raccourci a la derniere URL liee. Exemple Facebook, Instagram, Twitter..."
call :MSGBOX 2 !t! 69680 "Illegal Services Checker"
call :ROSE "IP Loggers"
goto :CLEARIPLOGGERS

:CLEARIPLOGGERS
call :CLEAR 1 9
set db=iplogger.org/ grabify.link/ webresolver.nl/tools/iplogger lstu.fr/ kutt.it/ www.shorturl.at/ shorturl.com/ tiny.cc/ bitly.com/

:CONTINUEIPLOGGERS
call :SCALE 65 24
echo !cyan!
echo [22C������������������
echo [21C// !red!�!bgyellow!!black! IP LOGGERS !red!�!bgblack!!cyan! \\
echo [16C�����������������������������ͻ
echo [16C�                             �
echo [16C�    !1!iplogger.org!cyan!       �
echo [16C�    !2!grabify.link!cyan!       �
echo [16C�    !3!webresolver.nl!cyan!     �
echo [16C�����������������������������͹
echo [16C�������!bgyellow!!red!�  Url Shortners �!bgblack!!cyan!����͹
echo [16C�                             �
echo [16C�    !4!lstu.fr!cyan!            �
echo [16C�    !5!kutt.it!cyan!            �
echo [16C�    !6!www.shorturl.at!cyan!    �
echo [16C�    !7!shorturl.com!cyan!       �
echo [16C�    !8!tiny.cc!cyan!            �
echo [16C�    !9!bitly.com!cyan!          �
echo [16C�����������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 20
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEIPLOGGERS
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARIPLOGGERS
call :ERRORMESSAGE
goto :CONTINUEIPLOGGERS

:DOXING
call :SCALE 104 42
title Doxing
call :ROSE Doxing

:CLEARDOXING
call :CLEAR 1 31
set db=pimeyes.com/ tineye.com/ yandex.com/images images.google.com/ www.bing.com/?scope=images image.baidu.com/ ascii2d.net/ trace.moe/ saucenao.com/ iqdb.org/ www.pic2map.com/ onlineexifviewer.com/ www.metadata2go.com/ searx.neocities.org/ www.etools.ch/ search.carrot2.org/ www.excite.co.jp/ www.infospace.com/ biznar.com/ metager.org/ www.entireweb.com/ www.delta-search.com/ www.startpage.com/do/advanced-search www.google.com/advanced_search www.google.com/advanced_image_search "Dox Tool v2" checkusernames.com/ knowem.com/ www.toolsbug.com/youtube-video-tag-extractor.php online-free-tools.com/en/youtube_video_tags_extract_url ytubetool.com/

:CONTINUEDOXING
call :SCALE 104 42
echo !cyan!
echo [45C��������������
echo [44C// !red!�!bgyellow!!black! DOXING !red!�!bgblack!!cyan! \\
echo [8C�������������������������������������������������������������������������������������ͻ
echo [8C��������!bgyellow!!red!� Image Search �!bgblack!!cyan!��������������������������������!bgyellow!!red!� Image Research �!bgblack!!cyan!�����������͹
echo [8C�                                          �                                          �
echo [8C�     !1!pimeyes.com!cyan!                    �    !11!www.pic2map.com!cyan!                �
echo [8C�     !2!tineye.com!cyan!                     �    !12!onlineexifviewer.com!cyan!           �
echo [8C�     !3!yandex.com!cyan!                     �    !13!www.metadata2go.com!cyan!            �
echo [8C�     !4!images.google.com!cyan!              �                                          �
echo [8C�     !5!www.bing.com!cyan!                   �                                          �
echo [8C�     !6!image.baidu.com!cyan!                �                                          �
echo [8C�     !7!ascii2d.net!cyan!                    �                                          �
echo [8C�     !8!trace.moe!cyan!                      �                                          �
echo [8C�     !9!saucenao.com!cyan!                   �                                          �
echo [8C�    !10!iqdb.org!cyan!                       �                                          �
echo [8C�                                          �                                          �
echo [8C������������!bgyellow!!red!� Metaseach Engine �!bgblack!!cyan!���������������������!bgyellow!!red!� Advanced Seach Engine �!bgblack!!cyan!�������͹
echo [8C�                                          �                                          �
echo [8C�    !14!searx.neocities.org!cyan!            �    !23!www.startpage.com!cyan!              �
echo [8C�    !15!www.etools.ch!cyan!                  �    !24!www.google.com/web!cyan!             �
echo [8C�    !16!search.carrot2.org!cyan!             �    !25!www.google.com/image!cyan!           �
echo [8C�    !17!www.excite.co.jp!cyan!               �                                          �
echo [8C�    !18!www.infospace.com!cyan!              �                                          �
echo [8C�    !19!biznar.com!cyan!                     �                                          �
echo [8C�    !20!metager.org!cyan!                    �                                          �
echo [8C�    !21!www.entireweb.com!cyan!              �                                          �
echo [8C�    !22!www.delta-search.com!cyan!           �                                          �
echo [8C�                                          �                                          �
echo [8C���������!bgyellow!!red!� Usernames Doxing �!bgblack!!cyan!����������������������!bgyellow!!red!� YouTube TAGS Extractors �!bgblack!!cyan!�������͹
echo [8C�                                          �                                          �
echo [8C�    !26!Dox Tool v2!cyan!                    �    !29!www.toolsbug.com!cyan!               �
echo [8C�    !27!checkusernames.com!cyan!             �    !30!online-free-tools.com!cyan!          �
echo [8C�    !28!knowem.com!cyan!                     �    !31!ytubetool.com!cyan!                  �
echo [8C�                                          �                                          �
echo [8C�������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 20
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEDOXING
call :CHOOSE back && goto :MAINMENU
call :WEBSITESTART && goto :CLEARDOXING
call :ERRORMESSAGE
goto :CONTINUEDOXING

:PORTABLEAPPS
call :SCALE 138 43
title Portable Apps
call :ROSE "Portable Apps"

:CLEARPORTABLEAPPS
call :CLEAR 1 53
set db="Winaero Tweaker" "Ultimate Windows Tweaker" "TCP Optimizer" "DNS Jumper" Autoruns SpeedyFox "CCleaner + CCEnhancer" BleachBit Dism++ "Glary Utilities" "Revo Uninstaller" "Windows Repair AIO" "Windows Repair Toolbox" FixWin "Patch My PC" "UCheck" "Windows Update MiniTool" "WSUS Offline Update" DriversCloud "Snappy Driver Installer" "Driver Store Explorer" "Device Cleanup Tool" "Display Driver Uninstaller" "Radeon Software Slimmer" NVSlimmer "MSI Util v3" CPU-Z "OOSU10 (Win 10)" "Ashampoo AntiSpy (Win 10)" "DoNotSpy 10" "Windows Privacy Dashboard" "Windows 10 Privacy" "Windows Spy Blocker" "Destroy Windows 10 Spying" Blackbird "ADW Cleaner" "ZHP Cleaner" "Rogue Killer" "No Bot" "Kaspersky KVRT" "Kaspersky TDSSKiller" "Microsoft Safety Scanner" "Spybot - Search and Destroy" "Batch Antivirus" Everything "Process Hacker" CrystalDiskInfo "Defender Control" "Edge Blocker" "Mem Reduct" GiveMePower RegScanner ISLC
if exist "!TMPF!\IS_Log.txt" del /f /q "!TMPF!\IS_Log.txt"

:CONTINUEPORTABLEAPPS
call :SCALE 138 43
echo !cyan!
echo [59C���������������������
echo [58C// !red!�!bgyellow!!black! PORTABLE APPS !red!�!bgblack!!cyan! \\
echo [8C�������������������������������������������������//���������������������\\����������������������������������������������ͻ
echo [8C���������������!bgyellow!!red!� Tweakers �!bgblack!!cyan!�����������������������������!bgyellow!!red!� Cleaners �!bgblack!!cyan!�������������������������!bgyellow!!red!� Windows Repairs �!bgblack!!cyan!��������͹
echo [8C�                                        �                                         �                                     �
echo [8C�    !1!Winaero Tweaker!cyan!               �    !7!CCleaner + CCEnhancer!cyan!          �   !12!Windows Repair AIO!cyan!         �
echo [8C�    !2!Ultimate Windows Tweaker!cyan!      �    !8!BleachBit!cyan!                      �   !13!Windows Repair Toolbox!cyan!     �
echo [8C�    !3!TCP Optimizer!cyan!                 �    !9!Dism++!cyan!                         �   !14!FixWin!cyan!                     �
echo [8C�    !4!DNS Jumper!cyan!                    �   !10!Glary Utilities!cyan!                �                                     �
echo [8C�    !5!Autoruns!cyan!                      �   !11!Revo Uninstaller!cyan!               �                                     �
echo [8C�    !6!SpeedyFox!cyan!                     �                                         �                                     �
echo [8C�                                        �                                         �                                     �
echo [8C����������!bgyellow!!red!� Updaters + Drivers �!bgblack!!cyan!�������������������������!bgyellow!!red!� Drivers �!bgblack!!cyan!�����������������������������!bgyellow!!red!� Others �!bgblack!!cyan!�������������͹
echo [8C�                                        �                                         �                                     �
echo [8C�   !15!Patch My PC!cyan!                   �   !21!Driver Store Explorer!cyan!          �   !45!Everything!cyan!                 �
echo [8C�   !16!UCheck!cyan!                        �   !22!Device Cleanup Tool!cyan!            �   !46!Process Hacker!cyan!             �
echo [8C�   !17!Windows Update MiniTool!cyan!       �   !23!Display Driver Uninstaller!cyan!     �   !47!CrystalDiskInfo!cyan!            �
echo [8C�   !18!WSUS Offline Update!cyan!           �   !24!Radeon Software Slimmer!cyan!        �   !48!Defender Control!cyan!           �
echo [8C�   !19!DriversCloud!cyan!                  �   !25!NVSlimmer!cyan!                      �   !49!Edge Blocker!cyan!               �
echo [8C�   !20!Snappy Driver Installer!cyan!       �   !26!MSI Util v3!cyan!                    �   !50!Mem Reduct!cyan!                 �
echo [8C�                                        �   !27!CPU-Z!cyan!                          �   !51!GiveMePower!cyan!                �
echo [8C�                                        �                                         �   !52!RegScanner!cyan!                 �
echo [8C������!bgyellow!!red!� Windows Privacy/Telemetry �!bgblack!!cyan!�������������!bgyellow!!red!� Anti Viruses and Malwares �!bgblack!!cyan!�����͹   !53!ISLC!cyan!                       �
echo [8C�                                        �                                         �                                     �
echo [8C�   !28!OOSU10 (Win 10)!cyan!               �   !36!ADW Cleaner!cyan!                    �                                     �
echo [8C�   !29!Ashampoo AntiSpy (Win 10)!cyan!     �   !37!ZHP Cleaner!cyan!                    �                                     �
echo [8C�   !30!DoNotSpy 10!cyan!                   �   !38!Rogue Killer!cyan!                   �                                     �
echo [8C�   !31!Windows Privacy Dashboard!cyan!     �   !39!No Bot!cyan!                         �                                     �
echo [8C�   !32!Windows 10 Privacy!cyan!            �   !40!Kaspersky KVRT!cyan!                 �                                     �
echo [8C�   !33!Windows Spy Blocker!cyan!           �   !41!Kaspersky TDSSKiller!cyan!           �                                     �
echo [8C�   !34!Destroy Windows 10 Spying!cyan!     �   !42!Microsoft Safety Scanner!cyan!       �                                     �
echo [8C�   !35!Blackbird!cyan!                     �   !43!Spybot - Search and Destroy!cyan!    �                                     �
echo [8C�                                        �   !44!Batch Antivirus!cyan!                �                                     �
echo [8C������������������������������������������������������������������������������������������������������������������������͹
echo [8C�                                             !yellow!54!cyan!  ^>  !white!Windows and Office Cracks!cyan!                                           �
echo [8C������������������������������������������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!OPEN!grey!" / "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 30
echo:
call :PROMPT
for /l %%a in (!c1!,1,!c2!) do if "!x!"=="%%a" call :CHECK_INTERNET || (call :ERROR_INTERNET & goto :CONTINUEPORTABLEAPPS)
if "!x!"=="54" goto :WINDOWSANDOFFICE
call :WEBSITECHECK && goto :CONTINUEPORTABLEAPPS
call :CHOOSE open && (call :OPEN_FOLDER Portable_Apps & goto :CONTINUEPORTABLEAPPS)
call :CHOOSE back && goto :MAINMENU
for /l %%a in (!c1!,1,!c2!) do if "!%%a!"=="!yellow!%%a !checked!" goto :GOPORTABLEAPPS
call :ERRORMESSAGE
goto :CONTINUEPORTABLEAPPS

:GOPORTABLEAPPS
set IS_Log=1
set Start_Folder=
if "!1!"=="!yellow!1 !checked!" call :CURL "Portable_Apps\WinaeroTweaker.7z" "https://winaerotweaker.com/download/winaerotweaker.zip"
if "!2!"=="!yellow!2 !checked!" (
if "!windowsversion!"=="10.0" call :CURL "Portable_Apps\Ultimate Windows Tweaker 4.zip" "https://www.thewindowsclub.com/downloads/UWT4.zip"
for %%a in (6.3 6.2) do if "!windowsversion!"=="%%a" call :CURL "Portable_Apps\Ultimate Windows Tweaker 3.zip" "https://www.thewindowsclub.com/downloads/UWT3.zip"
for %%a in (6.1 6.0) do if "!windowsversion!"=="%%a" call :CURL "Portable_Apps\Ultimate Windows Tweaker.zip" "https://www.thewindowsclub.com/downloads/UWT.zip"
if not "!windowsversion:~,2!"=="10" if not "!windowsversion:~,1!"=="6" call :MSGBOX 2 "Your Windows version is not supported." "Found more informations at: https://www.thewindowsclub.com/ultimate-windows-tweaker-4-windows-10" 69648 "Illegal Services Checker"
)
if "!3!"=="!yellow!3 !checked!" call :CURL "Portable_Apps\TCPOptimizer.exe" "https://www.speedguide.net/files/TCPOptimizer.exe"
if "!4!"=="!yellow!4 !checked!" call :CURL "Portable_Apps\DnsJumper.7z" "`git_raw_downloads`/DnsJumper.7z"
if "!5!"=="!yellow!5 !checked!" call :CURL "Portable_Apps\Autoruns.zip" "https://download.sysinternals.com/files/Autoruns.zip"
if "!6!"=="!yellow!6 !checked!" call :CURL "Portable_Apps\Speedyfox.zip" "https://crystalidea.com/downloads/speedyfox.zip"
if "!7!"=="!yellow!7 !checked!" (
call :CURL "Portable_Apps\CCleaner.zip" "https://download.ccleaner.com/portable/ccsetup584.zip"
call :CURL "Portable_Apps\CCEnhancer Multilingual.zip" "https://singularlabs.com/download/10320/"
)
if "!8!"=="!yellow!8 !checked!" call :CURL "Portable_Apps\BleachBit.zip" "https://download.bleachbit.org/BleachBit-4.2.0-portable.zip"
if "!9!"=="!yellow!9 !checked!" call :CURL "Portable_Apps\Dism++.zip" "https://github.com/Chuyu-Team/Dism-Multi-language/releases/download/v10.1.1002.1/Dism++10.1.1002.1.zip"
if "!10!"=="!yellow!10 !checked!" (
if "!Language!"=="EN" set t=Do you want to
if "!Language!"=="FR" set t=Voulez vous
call :MSGBOXLEVEL 1 "!t! crack Glary Utilities ?" 69668 "Illegal Services Checker"
if "!el!"=="6" start http://www.solidfiles.com/v/kXqVAMLvWaLLL
if "!el!"=="7" call :CURL "Portable_Apps\GlaryUtilities.exe" "https://download.glarysoft.com/guportable.exe"
)
if "!11!"=="!yellow!11 !checked!" call :CURL "Portable_Apps\RevoUninstaller.zip" "https://www.revouninstaller.com/download-free-portable.php"
if "!12!"=="!yellow!12 !checked!" call :CURL "Portable_Apps\Tweaking.com - Windows Repair.7z" "`git_raw_downloads`/Tweaking.com_-_Windows_Repair.7z"
if "!13!"=="!yellow!13 !checked!" call :CURL "Portable_Apps\Windows Repair Toolbox.zip" "https://windows-repair-toolbox.com/files/Windows_Repair_Toolbox.zip"
if "!14!"=="!yellow!14 !checked!" (
if "!windowsversion!"=="10.0" call :CURL "Portable_Apps\FixWin10.zip" "https://www.thewindowsclub.com/downloads/FixWin10.zip"
for %%a in (6.3 6.2) do if "!windowsversion!"=="%%a" call :CURL "Portable_Apps\fixwin2.zip" "https://www.thewindowsclub.com/downloads/fixwin2.zip"
for %%a in (6.1 6.0) do if "!windowsversion!"=="%%a" call :CURL "Portable_Apps\FixWin.zip" "https://www.thewindowsclub.com/downloads/FixWin.zip"
if not "!windowsversion:~,2!"=="10" if not "!windowsversion:~,1!"=="6" call :MSGBOX 2 "Your Windows version is not supported." "Found more informations at: https://www.thewindowsclub.com/fixwin-for-windows-10" 69648 "Illegal Services Checker"
)
if "!15!"=="!yellow!15 !checked!" call :CURL "Portable_Apps\PatchMyPC\PatchMyPC.exe" "https://patchmypc.com/freeupdater/PatchMyPC.exe"
if "!16!"=="!yellow!16 !checked!" (
if "!arch!"=="64" call :CURL "Portable_Apps\UCheck_portable64.exe" "https://download.adlice.com/api/?action=download&app=ucheck&type=x64"
if "!arch!"=="86" call :CURL "Portable_Apps\UCheck_portable32.exe" "https://download.adlice.com/api/?action=download&app=ucheck&type=x86"
)
if "!17!"=="!yellow!17 !checked!" call :CURL "Portable_Apps\Windows Update MiniTool\wumt_x64.exe" "`git_raw_downloads`/Windows_Update_MiniTool.7z"
if "!18!"=="!yellow!18 !checked!" call :CURL "Portable_Apps\WSUS Offline Update.zip" "https://download.wsusoffline.net/wsusoffline120.zip"
if "!19!"=="!yellow!19 !checked!" (
if "!arch!"=="64" call :CURL "Portable_Apps\DriversCloud.zip" "https://www.driverscloud.com/plugins/DriversCloudx64_10_0_11_0.zip"
if "!arch!"=="86" call :CURL "Portable_Apps\DriversCloud.zip" "https://www.driverscloud.com/plugins/DriversCloud_10_0_11_0.zip"
)
if "!20!"=="!yellow!20 !checked!" call :CURL "Portable_Apps\Snappy Driver Installer.zip" "https://sdi-tool.org/releases/SDI_R2000.zip"
if "!21!"=="!yellow!21 !checked!" call :CURL "Portable_Apps\Driver Store Explorer.zip" "https://github.com/lostindark/DriverStoreExplorer/releases/download/v0.11.72/DriverStoreExplorer.v0.11.72.zip"
if "!22!"=="!yellow!22 !checked!" call :CURL "Portable_Apps\DeviceCleanup.zip" "https://www.uwe-sieber.de/files/DeviceCleanup.zip"
if "!23!"=="!yellow!23 !checked!" call :CURL "Portable_Apps\DDU.zip" "https://ftp.nluug.nl/pub/games/PC/guru3d/ddu/%%%%5BGuru3D.com%%%%5D-DDU.zip"
if "!24!"=="!yellow!24 !checked!" (
call :CURL "Portable_Apps\RadeonSoftwareSlimmer_1.2.0_net48.zip" "https://github.com/GSDragoon/RadeonSoftwareSlimmer/releases/download/1.2.0/RadeonSoftwareSlimmer_1.2.0_net48.zip"
call :CURL "Portable_Apps\RadeonSoftwareSlimmer_1.2.0_net50.zip" "https://github.com/GSDragoon/RadeonSoftwareSlimmer/releases/download/1.2.0/RadeonSoftwareSlimmer_1.2.0_net50.zip"
call :CURL "Portable_Apps\RadeonSoftwareSlimmer_1.2.0_netcoreapp31.zip" "https://github.com/GSDragoon/RadeonSoftwareSlimmer/releases/download/1.2.0/RadeonSoftwareSlimmer_1.2.0_netcoreapp31.zip"
)
if "!25!"=="!yellow!25 !checked!" call :CURL "Portable_Apps\NVSlimmer.zip" "https://ftp.nluug.nl/pub/games/PC/guru3d/nvslimmer/%%%%5BGuru3D.com%%%%5D-NVSlimmer.zip"
if "!26!"=="!yellow!26 !checked!" call :CURL "Portable_Apps\MSI_util_v3.exe" "`git_raw_downloads`/MSI_util_v3.exe"
if "!27!"=="!yellow!27 !checked!" call :CURL "Portable_Apps\CPU-Z.zip" "https://download.cpuid.com/cpu-z/cpu-z_1.95-en.zip"
if "!28!"=="!yellow!28 !checked!" call :CURL "Portable_Apps\OOSU10\OOSU10.exe" "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe"
if "!29!"=="!yellow!29 !checked!" call :CURL "Portable_Apps\Ashampoo_AntiSpy\Ashampoo_AntiSpy.exe" "https://cdn1.ashampoo.net/public/ashf/1004/Ashampoo_AntiSpy.exe"
if "!30!"=="!yellow!30 !checked!" call :CURL "Portable_Apps\DoNotSpy10.7z" "`git_raw_downloads`/DoNotSpy10.7z"
if "!31!"=="!yellow!31 !checked!" call :CURL "Portable_Apps\Windows Privacy Dashboard.zip" "https://wpd.app/get/latest.zip"
if "!32!"=="!yellow!32 !checked!" call :CURL "Portable_Apps\W10Privacy.zip" "https://www.w10privacy.de/app/download/12302828636/W10Privacy.zip?t=1603644531"
if "!33!"=="!yellow!33 !checked!" call :CURL "Portable_Apps\WindowsSpyBlocker\WindowsSpyBlocker.exe" "https://github.com/crazy-max/WindowsSpyBlocker/releases/latest/download/WindowsSpyBlocker.exe"
if "!34!"=="!yellow!34 !checked!" (
call :CURL "Portable_Apps\Destroy Windows 10 Spying.zip" "https://github.com/Wohlstand/Destroy-Windows-10-Spying/releases/download/2.2.2.2.27/DWS-build-Win7881-2.2.2.2.27.zip"
call :CURL "Portable_Apps\Destroy Windows 10 Spying RE.zip" "https://github.com/Wohlstand/Destroy-Windows-10-Spying/releases/download/RE-1.0.2.0.23.1/DWS-RE-1.0.2.0.23.zip"
)
if "!35!"=="!yellow!35 !checked!" (
if "!arch!"=="64" call :CURL "Portable_Apps\Blackbird.zip" "https://getblackbird.net/download/Blackbird_v1.0.80.2_x64.zip"
if "!arch!"=="86" call :CURL "Portable_Apps\Blackbird.zip" "https://getblackbird.net/download/Blackbird_v1.0.80.2_x32.zip"
)
if "!36!"=="!yellow!36 !checked!" call :CURL "Portable_Apps\AdwCleaner\AdwCleaner.exe" "https://download.toolslib.net/download/direct/1/latest"
if "!37!"=="!yellow!37 !checked!" call :CURL "Portable_Apps\ZHPCleaner\ZHPCleaner.exe" "https://nicolascoolman.eu/download/telechargez-zhpcleaner-gratuit/?wpdmdl=23616"
if "!38!"=="!yellow!38 !checked!" (
if "!arch!"=="64" call :CURL "Portable_Apps\RogueKiller\RogueKiller_portable64.exe" "https://download.adlice.com/api/?action=download&app=roguekiller&type=x64"
if "!arch!"=="86" call :CURL "Portable_Apps\RogueKiller\RogueKiller_portable86.exe" "https://download.adlice.com/api/?action=download&app=roguekiller&type=x86"
)
if "!39!"=="!yellow!39 !checked!" call :CURL "Portable_Apps\NoBot\NoBot.exe" "https://nobotsecurity.com/Software/NoBot.exe"
if "!40!"=="!yellow!40 !checked!" call :CURL "Portable_Apps\KVRT.exe" "https://devbuilds.s.kaspersky-labs.com/devbuilds/KVRT/latest/full/KVRT.exe"
if "!41!"=="!yellow!41 !checked!" call :CURL "Portable_Apps\tdsskiller.exe" "https://media.kaspersky.com/utilities/VirusUtilities/EN/tdsskiller.exe"
if "!42!"=="!yellow!42 !checked!" (
if "!arch!"=="64" call :CURL "Portable_Apps\MSERT.exe" "https://go.microsoft.com/fwlink/?LinkId=212732"
if "!arch!"=="86" call :CURL "Portable_Apps\MSERT.exe" "https://go.microsoft.com/fwlink/?LinkId=212733"
)
if "!43!"=="!yellow!43 !checked!" call :CURL "Portable_Apps\SpybotPortable_2.7.64-2020-02.paf.exe" "https://download3.portableapps.com/portableapps/SpybotPortable/SpybotPortable_2.8.68.paf.exe"
if "!44!"=="!yellow!44 !checked!" call :CURL "Portable_Apps\Batch Antivirus.zip" "https://github.com/anic17/Batch-Antivirus/archive/master.zip"
if "!45!"=="!yellow!45 !checked!" (
if "!arch!"=="64" call :CURL "Portable_Apps\Everything-x64.zip" "https://www.voidtools.com/Everything-1.4.1.1005.x64.zip"
if "!arch!"=="86" call :CURL "Portable_Apps\Everything-x86.zip" "https://www.voidtools.com/Everything-1.4.1.1005.x86.zip"
)
if "!46!"=="!yellow!46 !checked!" call :CURL "Portable_Apps\Process Hacker.zip" "https://ci.appveyor.com/api/buildjobs/rq7c4oi8svf0la0y/artifacts/processhacker-3.0.4330-bin.zip"
if "!47!"=="!yellow!47 !checked!" call :CURL "Portable_Apps\CrystalDiskInfo.zip" "https://crystalmark.info/redirect.php?product=CrystalDiskInfo"
if "!48!"=="!yellow!48 !checked!" call :CURL "Portable_Apps\DefenderControl.zip" "https://www.sordum.org/files/download/d-control/dControl.zip"
if "!49!"=="!yellow!49 !checked!" call :CURL "Portable_Apps\EdgeBlocker.zip" "https://www.sordum.org/files/download/edge-blocker/EdgeBlock.zip"
if "!50!"=="!yellow!50 !checked!" call :CURL "Portable_Apps\memreduct-3.3.5-bin.zip" "https://github.com/henrypp/memreduct/releases/download/v.3.3.5/memreduct-3.3.5-bin.zip"
if "!51!"=="!yellow!51 !checked!" call :CURL "Portable_Apps\GiveMePower v2.1.0.0.exe" "https://www.wagnardsoft.com/DDU/download/GiveMePower%%%%20v2.1.0.0.exe"
if "!52!"=="!yellow!52 !checked!" (
if "!arch!"=="64" call :CURL "Portable_Apps\regscanner-x64.zip" "https://www.nirsoft.net/utils/regscanner-x64.zip"
if "!arch!"=="86" call :CURL "Portable_Apps\regscanner.zip" "https://www.nirsoft.net/utils/regscanner.zip"
)
if "!53!"=="!yellow!53 !checked!" call :CURL "Portable_Apps\ISLC v1.0.2.4.exe" "https://www.wagnardsoft.com/ISLC/ISLC%%%%20v1.0.2.4.exe"
set IS_Log=
if exist "!TMPF!\IS_Log.txt" (
echo !red!
type "!TMPF!\IS_Log.txt"
del /f /q "!TMPF!\IS_Log.txt"
echo !yellow!
pause
)
if defined Start_Folder start /max explorer.exe "Portable_Apps"
goto :CLEARPORTABLEAPPS

:WINDOWSANDOFFICE
call :SCALE 90 31
title Windows and Office Cracks
call :ROSE "Windows and Office Cracks"

:CLEARWINDOWSANDOFFICE
call :CLEAR 1 19
set db=free.appnee.com/consoleact/ free.appnee.com/aact/ free.appnee.com/ra1n-act1vat0r/ free.appnee.com/re-loader-activator/ free.appnee.com/windows-loader/ free.appnee.com/hwid-gen/ free.appnee.com/w10-digital-license-c-sharp/ free.appnee.com/kmsauto-lite/ free.appnee.com/kmsauto-net/ free.appnee.com/kmsoffline/ free.appnee.com/kmsonline/ free.appnee.com/kmsauto-helper/ `www.solidfiles.com/v/QnQeqgqKa3jev `www.solidfiles.com/v/kXqVBML2mmBDA free.appnee.com/msact/ "Windows ISO Downloader" the-eye.eu/public/MSDN/Windows%%207/ tb.rg-adguard.net/public.php free.appnee.com/office-2013-2021-c2r-install/

:CONTINUEWINDOWSANDOFFICE
call :SCALE 90 31
echo !cyan!
echo [30C���������������������������������
echo [29C// !red!�!bgyellow!!black! WINDOWS AND OFFICE CRACKS !red!�!bgblack!!cyan! \\
echo [10C���������������������������������������������������������������������ͻ
echo [10C�����������!bgyellow!!red!� Activators �!bgblack!!cyan!�����������������������!bgyellow!!red!� Tools �!bgblack!!cyan!������������͹
echo [10C�                                  �                                  �
echo [10C�     !1!ConsoleAct!cyan!             �    !12!KMSAuto Helper!cyan!         �
echo [10C�     !2!AAct!cyan!                   �    !13!KMSCleaner!cyan!             �
echo [10C�     !3!Ra1n Act1vat0r!cyan!         �    !14!WAT Fix!cyan!                �
echo [10C�     !4!Re-Loader Activator!cyan!    �    !15!MSAct!cyan!                  �
echo [10C�     !5!Windows Loader!cyan!         �                                  �
echo [10C�     !6!HWID GEN MkVI!cyan!          �                                  �
echo [10C�     !7!W10 Digital License!cyan!    �                                  �
echo [10C�     !8!KMSAuto Lite!cyan!           �                                  �
echo [10C�     !9!KMSAuto Net!cyan!            �                                  �
echo [10C�    !10!KMSoffline!cyan!             �                                  �
echo [10C�    !11!KMSonline!cyan!              �                                  �
echo [10C���������������������������������������������������������������������͹
echo [10C����������������������������!bgyellow!!red!� Downloaders �!bgblack!!cyan!��������������������������͹
echo [10C�                                                                     �
echo [10C�               !16!Windows ISO Downloader!cyan!                         �
echo [10C�               !17!the-eye.eu!cyan!                                     �
echo [10C�               !18!rg-adguard.net!cyan!                                 �
echo [10C�               !19!Office 2013-2019 C2R Install!cyan!                   �
echo [10C���������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!OPEN!grey!" / "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 30
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEWINDOWSANDOFFICE
call :CHOOSE open && (call :OPEN_FOLDER Portable_Apps & goto :CONTINUEWINDOWSANDOFFICE)
call :CHOOSE back && goto :PORTABLEAPPS
call :WEBSITESTART && goto :CLEARWINDOWSANDOFFICE
call :ERRORMESSAGE
goto :CONTINUEWINDOWSANDOFFICE

:MOREFEATURES
call :SCALE 62 20
title More Features
call :ROSE "More Features"

:CONTINUEMOREFEATURES
call :SCALE 62 20
echo !cyan!
echo [20C���������������������
echo [19C// !red!�!bgyellow!!black! MORE FEATURES !red!�!bgblack!!cyan! \\
echo [11C�������������������������������������ͻ
echo [11C�    !yellow!1 !white!Warez Content Creator!cyan!          �
echo [11C�    !yellow!2 !white!Warez Wikis!cyan!                    �
echo [11C�    !yellow!3 !white!Release Logs!cyan!                   �
echo [11C�    !yellow!4 !white!Ebooks!cyan!                         �
echo [11C�    !yellow!5 !white!Musics!cyan!                         �
echo [11C�    !yellow!6 !white!Forum Websites!cyan!                 �
echo [11C�    !yellow!7 !white!Windows Repair!cyan!                 �
echo [11C�    !yellow!8 !white!Windows Tweaks!cyan!                 �
echo [11C�    !yellow!9 !white!Windows Game Booster!cyan!           �
echo [11C�������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!OPEN!grey!" / "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 30
echo:
call :PROMPT
set cn=
for %%a in (WAREZCONTENTCREATOR WAREZWIKIS RELEASELOGS EBOOKS MUSICS FORUMWEBSITES WINDOWSREPAIR WINDOWSTWEAKS) do (
set /a cn+=1
if "!x!"=="!cn!" goto :%%a
)
if "!x!"=="9" (
echo !cyan!
if "!Language!"=="EN" (
call :DRAW_CENTER "Do you want to [!yellow!E!cyan!]nable, [!yellow!D!cyan!]isable or [!yellow!B!cyan!]ack ?" 30
>nul choice /n /c EDB
)
if "!Language!"=="FR" (
call :DRAW_CENTER "Voulez-vous [!yellow!A!cyan!]ctiver, [!yellow!D!cyan!]�sactiver ou [!yellow!R!cyan!]etour ?" 30
>nul choice /n /c ADR
)
if "!errorlevel!"=="1" call :GAME_BOOSTER Enabling normal disabled enabled
if "!errorlevel!"=="2" call :GAME_BOOSTER Disabling normal demand disabled
goto :MOREFEATURES
)
call :CHOOSE open && (call :OPEN_FOLDER Portable_Apps & goto :CONTINUEMOREFEATURES)
call :CHOOSE back && goto :MAINMENU
call :ERRORMESSAGE
goto :CONTINUEMOREFEATURES

:WAREZCONTENTCREATOR
call :SCALE 69 22
title Warez Content Creator
call :ROSE "Warez Content Creator"

:CLEARWAREZCONTENTCREATOR
call :CLEAR 1 9
set db="Mkv Tool Nix" FFmpeg LosslessCut HandBrake "Subtitle Editor" CCExtractor "VLC Media Player" MediaInfo "Open Broadcaster Software"

:CONTINUEWAREZCONTENTCREATOR
call :SCALE 69 22
echo !cyan!
echo [20C�����������������������������
echo [19C// !red!�!bgyellow!!black! WAREZ CONTENT CREATOR !red!�!bgblack!!cyan! \\
echo [5C���������������������������������������������������������ͻ
echo [5C�                                                         �
echo [5C�    !1!Mkv Tool Nix !green!(.mkv Video Editing)!cyan!              �
echo [5C�    !2!FFmpeg !green!(Video/Audio Editing)!cyan!                   �
echo [5C�    !3!LosslessCut !green!(Video/Audio Editing)!cyan!              �
echo [5C�    !4!HandBrake !green!(Video Transcoder)!cyan!                   �
echo [5C�    !5!Subtitle Editor !green!(Subtitle Editor)!cyan!              �
echo [5C�    !6!CCExtractor !green!(Subtitle Extractor)!cyan!               �
echo [5C�    !7!VLC Media Player !green!(Multimedia Player)!cyan!           �
echo [5C�    !8!MediaInfo !green!(Digital Media Analysis)!cyan!             �
echo [5C�    !9!Open Broadcaster Software !green!(Screen Recorder)!cyan!    �
echo [5C�                                                         �
echo [5C���������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 20
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEWAREZCONTENTCREATOR
call :CHOOSE back && goto :MOREFEATURES
if not defined x for /l %%a in (!c1!,1,!c2!) do if "!%%a!"=="!yellow!%%a !checked!" goto :GOWAREZCONTENTCREATOR
call :ERRORMESSAGE
goto :CONTINUEWAREZCONTENTCREATOR

:GOWAREZCONTENTCREATOR
if "!1!"=="!yellow!1 !checked!" start "" "https://mkvtoolnix.download/" && cmdwiz.exe delay 1500
if "!2!"=="!yellow!2 !checked!" start "" "https://ffmpeg.org/" && cmdwiz.exe delay 1500
if "!3!"=="!yellow!3 !checked!" start "" "https://mifi.github.io/lossless-cut/" && cmdwiz.exe delay 1500
if "!4!"=="!yellow!4 !checked!" start "" "https://handbrake.fr/" && cmdwiz.exe delay 1500
if "!5!"=="!yellow!5 !checked!" start "" "https://www.nikse.dk/SubtitleEdit" && cmdwiz.exe delay 1500
if "!6!"=="!yellow!6 !checked!" start "" "https://ccextractor.org/" && cmdwiz.exe delay 1500
if "!7!"=="!yellow!7 !checked!" start "" "https://www.videolan.org/vlc/" && cmdwiz.exe delay 1500
if "!8!"=="!yellow!8 !checked!" start "" "https://mediaarea.net/en/MediaInfo" && cmdwiz.exe delay 1500
if "!9!"=="!yellow!9 !checked!" start "" "https://obsproject.com/"
goto :CLEARWAREZCONTENTCREATOR

:WAREZWIKIS
call :SCALE 76 32
title Warez Wikis
call :ROSE "Warez Wikis"

:CLEARWAREZWIKIS
call :CLEAR 1 19
set db=weboas.is/ dirtywarez.org/ link-base.org/warez p2pfr.com/ www.mega-p2p.net/ lewebde.com/ `machicoulis.over-blog.com/2019/11/les-bons-liens-pour-telecharger.html www.reddit.com/r/Piracy/wiki/megathread www.reddit.com/r/FREEMEDIAHECKYEAH/wiki/index rentry.org/pgames-mega-thread github.com/Igglybuff/awesome-piracy/blob/master/readme.md github.com/nbats/FMHY/blob/main/fmhy.md github.com/Rekulous/FMHY/blob/main/fmhy.md github.com/Rekulous/The-Piratez-List/blob/main/The%%20Safe%%20Shores/Software.md github.com/taskylizard/piratedgames-megathread/blob/main/README.md github.com/Rekulous/Pirated-Games/blob/main/README.md darknetlive.com/onions/ dark.fail/ ddosforhire.net/

:CONTINUEWAREZWIKIS
call :SCALE 76 32
echo !cyan!
echo [28C�������������������
echo [27C// !red!�!bgyellow!!black! WAREZ WIKIS !red!�!bgblack!!cyan! \\
echo [6C��������������������������������������������������������������ͻ
echo [6C�                                                              �
echo [6C�    !1!weboas.is!cyan!                                           �
echo [6C�    !2!dirtywarez.org!cyan!                                      �
echo [6C�    !3!link-base.org!cyan!                                       �
echo [6C�    !4!p2pfr.com !green!(FR)!cyan!                                      �
echo [6C�    !5!www.mega-p2p.net !green!(FR)!cyan!                               �
echo [6C�    !6!lewebde.com !green!(FR)!cyan!                                    �
echo [6C�    !7!machicoulis.over-blog.com !green!(FR)!cyan!                      �
echo [6C�    !8!r/Piracy!cyan!                                            �
echo [6C�    !9!r/FREEMEDIAHECKYEAH!cyan!                                 �
echo [6C�   !10!r/pgames-mega-thread!cyan!                                �
echo [6C�   !11!Igglybuff/awesome-piracy!cyan!                            �
echo [6C�   !12!nbats/FMHY!cyan!                                          �
echo [6C�   !13!Rekulous/FMHY!cyan!                                       �
echo [6C�   !14!taskylizard/piratedgames-megathread !green!(videogames)!cyan!    �
echo [6C�   !15!Rekulous/Pirated-Games !green!(videogames)!cyan!                 �
echo [6C�   !16!Rekulous/The-Piratez-list !green!(softwares)!cyan!               �
echo [6C�   !17!darknetlive.com !green!(darknet)!cyan!                           �
echo [6C�   !18!dark.fail !green!(darknet)!cyan!                                 �
echo [6C�   !19!ddosforhire.net !green!(DDoS)!cyan!                              �
echo [6C�                                                              �
echo [6C��������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / !t2! !yellow!{!t3!}!grey!." 20
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEWAREZWIKIS
call :CHOOSE back && goto :MOREFEATURES
call :WEBSITESTART && goto :CLEARWAREZWIKIS
call :ERRORMESSAGE
goto :CONTINUEWAREZWIKIS

:RELEASELOGS
call :SCALE 71 20
title Release Logs
call :ROSE "Release Logs"

:CLEARRELEASELOGS
call :CLEAR 1 7
set db=predb.me/ corrupt-net.org/ m2v.ru/ forum.squawkr.io/ upawg.ca/ nzbindex.com/ binsearch.info/

:CONTINUERELEASELOGS
call :SCALE 66 20
echo !cyan!
echo [22C��������������������
echo [21C// !red!�!bgyellow!!black! Release Logs !red!�!bgblack!!cyan! \\
echo [12C���������������������������������������ͻ
echo [12C�                                       �
echo [12C�    !1!predb.me!cyan!                     �
echo [12C�    !2!corrupt-net.org!cyan!              �
echo [12C�    !3!m2v.ru!cyan!                       �
echo [12C�    !4!forum.squawkr.io !green!(movies)!cyan!    �
echo [12C�    !5!upawg.ca !green!(audio)!cyan!             �
echo [12C�    !6!nzbindex.com !green!(NZB)!cyan!           �
echo [12C�    !7!binsearch.info !green!(NZB)!cyan!         �
echo [12C�                                       �
echo [12C���������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / "!yellow!SEARCH!grey!" / !t2! !yellow!{!t3!}!grey!." 30
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUERELEASELOGS
call :CHOOSE back && goto :MOREFEATURES
call :CHOOSE search && (call :IS_SEARCH 25be77c4b1e53f006 & goto :CONTINUERELEASELOGS)
call :WEBSITESTART && goto :CLEARRELEASELOGS
call :ERRORMESSAGE
goto :CONTINUERELEASELOGS

:EBOOKS
call :SCALE 100 60
title Ebooks
call :ROSE Ebooks

:CLEAREBOOKS
call :CLEAR 1 77
set db=z-lib.org/ www.pdfdrive.com/ english-bookys.com/ `bookddl.com/ zone-ebook.com/ ww2.bookys-ebooks.com/ `ebook-planete.org/ planete-bd.org/ dbfree.me/ pdf.1001ebooks.com/ www.pdf-ebookys.com/ downmagaz.net/ magazinelib.com/ telecharge-magazines.com/ fr.downmagaz.net/ mangaowl.net/ mangadex.org/ manganato.com/ unionmangas.top/home mangaplus.shueisha.co.jp/updates fascans.com/ mangakatana.com/ manga4life.com/ bato.to/ mangapark.net/ www.mangahere.cc/ fanfox.net/ wuxiaworld.site/ hatigarmscanz.net/home leviatanscans.com/levi/ methodscans.com/home the-nonames.com/home lynxscans.com/home skscans.com/ zeroscans.com/home reader.deathtollscans.net/ reader.kireicake.com/ sensescans.com/ manhuaplus.com/ readm.org/ mangasee123.com/ www.asurascans.com/ naniscans.com/ merakiscans.com/ mangajar.com/ toonily.net/ www.nonstopscans.com/ guya.moe/ mangahub.io/ comick.fun/ www.japanread.cc/ catmanga.org/ mangasushi.net/ arangscans.com/ hunlight-scans.info/home tritinia.com/ readmanhua.net/manga/ flamescans.org/ immortalupdates.com/ manga347.com/ www.bilibilicomics.com/ www.mangatown.com/ www.mangahome.com/ manga47.net/ comix.top/ www.readlightnovel.org/ reaperscans.com/ reaperscans.fr/ scantrad.net/ kangaryu-team.fr/ www.japscan.ws/ www.scan-fr.cc/ lelscan-vf.co/ mangas.heoo.workers.dev/0:/ lectortmo.com/ github.com/MALSync/MALSync/blob/master/pages.md

:CONTINUEEBOOKS
call :SCALE 100 60
echo !cyan!
echo [43C��������������
echo [42C// !red!�!bgyellow!!black! Ebooks !red!�!bgblack!!cyan! \\
echo [7C������������������������������������������������������������������������������������ͻ
echo [7C�                                                                                    �
echo [7C�    !1!z-lib.org!cyan!                      �   !7!ebook-planete.org !green!(FR)!cyan!           �
echo [7C�    !2!www.pdfdrive.com!cyan!               �   !8!planete-bd.org !green!(FR)!cyan!              �
echo [7C�    !3!english-bookys.com!cyan!             �   !9!dbfree.me !green!(FR)!cyan!                   �
echo [7C�    !4!bookddl.com !green!(FR)!cyan!               �  !10!pdf.1001ebooks.com !green!(FR)!cyan!          �
echo [7C�    !5!zone-ebook.com !green!(FR)!cyan!            �  !11!www.pdf-ebookys.com !green!(FR)!cyan!         �
echo [7C�    !6!ww2.bookys-ebooks.com !green!(FR)!cyan!     �                                          �
echo [7C�                                                                                    �
echo [7C������������������������������������!bgyellow!!red!� MAGAZINES �!bgblack!!cyan!�����������������������������������͹
echo [7C�                                                                                    �
echo [7C�   !12!downmagaz.net!cyan!                  �   !14!telecharge-magazines.com !green!(FR)!cyan!   �
echo [7C�   !13!magazinelib.com!cyan!                �   !15!fr.downmagaz.net !green!(FR)!cyan!           �
echo [7C�                                                                                    �
echo [7C��������������������������������������!bgyellow!!red!� MANGAS �!bgblack!!cyan!������������������������������������͹
echo [7C�                                                                                    �
echo [7C�   !16!mangaowl.net!cyan!                   �   !47!toonily.net!cyan!                     �
echo [7C�   !17!www.mangago.me!cyan!                 �   !48!www.nonstopscans.com!cyan!            �
echo [7C�   !18!mangadex.org!cyan!                   �   !49!guya.moe!cyan!                        �
echo [7C�   !19!manganato.com!cyan!                  �   !50!mangahub.io!cyan!                     �
echo [7C�   !20!unionmangas.top!cyan!                �   !51!comick.fun!cyan!                      �
echo [7C�   !21!mangaplus.shueisha.co.jp!cyan!       �   !52!www.japanread.cc!cyan!                �
echo [7C�   !22!fascans.com!cyan!                    �   !53!catmanga.org!cyan!                    �
echo [7C�   !23!mangakatana.com!cyan!                �   !54!mangasushi.net!cyan!                  �
echo [7C�   !24!manga4life.com!cyan!                 �   !55!arangscans.com!cyan!                  �
echo [7C�   !25!bato.to!cyan!                        �   !56!hunlight-scans.info!cyan!             �
echo [7C�   !26!mangapark.net!cyan!                  �   !57!tritinia.com!cyan!                    �
echo [7C�   !27!www.mangahere.cc!cyan!               �   !58!readmanhua.net!cyan!                  �
echo [7C�   !28!fanfox.net!cyan!                     �   !59!flamescans.org!cyan!                  �
echo [7C�   !29!wuxiaworld.site!cyan!                �   !60!immortalupdates.com!cyan!             �
echo [7C�   !30!hatigarmscanz.net!cyan!              �   !61!manga347.com!cyan!                    �
echo [7C�   !31!leviatanscans.com!cyan!              �   !62!www.bilibilicomics.com!cyan!          �
echo [7C�   !32!methodscans.com!cyan!                �   !63!www.mangatown.com!cyan!               �
echo [7C�   !33!the-nonames.com!cyan!                �   !64!www.mangahome.com!cyan!               �
echo [7C�   !34!lynxscans.com!cyan!                  �   !65!manga47.net!cyan!                     �
echo [7C�   !35!skscans.com!cyan!                    �   !66!comix.top!cyan!                       �
echo [7C�   !36!zeroscans.com!cyan!                  �   !67!www.readlightnovel.org!cyan!          �
echo [7C�   !37!reader.deathtollscans.net!cyan!      �   !68!reaperscans.com!cyan!                 �
echo [7C�   !38!reader.kireicake.com!cyan!           �   !69!reaperscans.fr !green!(FR)!cyan!             �
echo [7C�   !39!sensescans.com!cyan!                 �   !70!scantrad.net !green!(FR)!cyan!               �
echo [7C�   !40!manhuaplus.com!cyan!                 �   !71!kangaryu-team.fr !green!(FR)!cyan!           �
echo [7C�   !41!readm.org!cyan!                      �   !72!www.japscan.ws !green!(FR)!cyan!             �
echo [7C�   !42!mangasee123.com!cyan!                �   !73!www.scan-fr.cc !green!(FR)!cyan!             �
echo [7C�   !43!www.asurascans.com!cyan!             �   !74!lelscan-vf.co !green!(FR)!cyan!              �
echo [7C�   !44!naniscans.com!cyan!                  �   !75!mangas.heoo.workers.dev !green!(FR)!cyan!    �
echo [7C�   !45!merakiscans.com!cyan!                �   !76!lectortmo.com !green!(ES)!cyan!              �
echo [7C�   !46!mangajar.com!cyan!                   �                                          �
echo [7C�                                                                                    �
if "!Language!"=="EN" echo [7C�                      !brightmagenta!Alternatively you can visit: !77!MALSync!cyan!                   �
if "!Language!"=="FR" echo [7C�                  !brightmagenta!Alternativement vous pouvez visiter: !77!MALSync!cyan!               �
echo [7C�                                                                                    �
echo [7C������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / "!yellow!SEARCH!grey!" / !t2! !yellow!{!t3!}!grey!." 30
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEEBOOKS
call :CHOOSE back && goto :MOREFEATURES
call :CHOOSE search && (call :IS_SEARCH 6777a3e064386f381 & goto :CONTINUEEBOOKS)
call :WEBSITESTART && goto :CLEAREBOOKS
call :ERRORMESSAGE
goto :CONTINUEEBOOKS

:MUSICS
call :SCALE 68 25
title Musics
call :ROSE Musics

:CLEARMUSICS
call :CLEAR 1 9
set db=flacmusic.info/ losslessma.net/ www.reddit.com/r/riprequests/ downloads.khinsider.com/ www.vgmusic.com/ freshremix.ru/ www.slsknet.org/news/ deemix.app/ freezer.life/

:CONTINUEMUSICS
call :SCALE 68 25
echo !cyan!
echo [27C��������������
echo [26C// !red!�!bgyellow!!black! Musics !red!�!bgblack!!cyan! \\
echo [8C��������������������������������������������������ͻ
echo [8C�                                                  �
echo [8C�    !1!flacmusic.info!cyan!                          �
echo [8C�    !2!losslessma.net!cyan!                          �
echo [8C�    !3!r/riprequests!cyan!                           �
echo [8C�    !4!downloads.khinsider.com !green!(videogames)!cyan!    �
echo [8C�    !5!www.vgmusic.com !green!(videogames)!cyan!            �
echo [8C�    !6!freshremix.ru !green!(remixes)!cyan!                 �
echo [8C�                                                  �
echo [8C���������������!bgyellow!!red!� Music Applications �!bgblack!!cyan!�������������͹
echo [8C�                                                  �
echo [8C�    !7!www.slsknet.org!cyan!                         �
echo [8C�    !8!deemix.app!cyan!                              �
echo [8C�    !9!freezer.life!cyan!                            �
echo [8C�                                                  �
echo [8C��������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" / "!yellow!SEARCH!grey!" / !t2! !yellow!{!t3!}!grey!." 30
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEMUSICS
call :CHOOSE back && goto :MOREFEATURES
call :CHOOSE search && (call :IS_SEARCH 77345bf220e8f0c91 & goto :CONTINUEMUSICS)
call :WEBSITESTART && goto :CLEARMUSICS
call :ERRORMESSAGE
goto :CONTINUEMUSICS

:FORUMWEBSITES
call :SCALE 126 37
title Forum Websites
call :ROSE "Forum Websites"

:CLEARFORUMWEBSITES
call :CLEAR 1 37
set db=www.adit-hd.com/ forum.ddlvalley.me/ www.warezheaven.com/index.php forum.snahp.it/ www.mywarez.org/ ddlbase.net/ forumpoint.org/ www.wawa-rammstein.de/ starwarez-sharing.name/Fofo/ `forum.anime-ultime.net/phpBB3/index.php pirates-forum.org/ eztv.re/forum/ forums.glodls.to/ torrentgalaxy.to/forums.php www.ettvcentral.com/forums.php forums.anidex.moe/ prostylex.org/forums.php/ angietorrents.cc/forum/index.php forum.p2pfr.com/ www.tigers-dl.net/ www.forumzt.com/ www.frboard.com/ rutracker.org/forum/index.php forum.mobilism.me/ forum.release-apk.com/ platinmods.com/ forum.telecharger-jeuxpc.fr/ tapochek.net/ forum.repack.me/ planete-warez.net/ www.nulled.to/ raidforums.com/ hackforums.net/ cracked.to/ payload.sh/ teamos-hkrg.com/ forum.ru-board.com/

:CONTINUEFORUMWEBSITES
call :SCALE 126 37
echo !cyan!
echo [51C����������������������
echo [50C// !red!�!bgyellow!!black! FORUM WEBSITES !red!�!bgblack!!cyan! \\
echo [7C������������������������������������������//����������������������\\������������������������������������������ͻ
echo [7C��������������������������������������������������!bgyellow!!red!� Warez �!bgblack!!cyan!���������������������������������������������������͹
echo [7C�                                                                                                              �
echo [7C�    !1!www.adit-hd.com        !green!DDL        [EN]!cyan!    �   !16!forums.anidex.moe           !green!Torrenting [EN]!cyan!    �
echo [7C�    !2!forum.ddlvalley.me     !green!DDL        [EN]!cyan!    �   !17!prostylex.org               !green!Torrenting [EN]!cyan!    �
echo [7C�    !3!www.warezheaven.com    !green!DDL        [EN]!cyan!    �   !18!angietorrents.cc            !green!Torrenting [EN]!cyan!    �
echo [7C�    !4!forum.snahp.it         !green!DDL        [EN]!cyan!    �   !19!forum.p2pfr.com             !green!Torrenting [FR]!cyan!    �
echo [7C�    !5!www.mywarez.org        !green!DDL        [EN]!cyan!    �   !20!www.tigers-dl.net           !green!Torrenting [FR]!cyan!    �
echo [7C�    !6!ddlbase.net            !green!DDL        [EN]!cyan!    �   !21!www.forumzt.com             !green!Torrenting [FR]!cyan!    �
echo [7C�    !7!forumpoint.org         !green!DDL        [EN]!cyan!    �   !22!www.frboard.com             !green!Torrenting [FR]!cyan!    �
echo [7C�    !8!www.wawa-rammstein.de  !green!DDL        [EN]!cyan!    �   !23!rutracker.org               !green!Torrenting [RU]!cyan!    �
echo [7C�    !9!starwarez-sharing.name !green!DDL        [FR]!cyan!    �   !24!forum.mobilism.me           !green!Cracking   [EN]!cyan!    �
echo [7C�   !10!forum.anime-ultime.net !green!Streaming  [FR]!cyan!    �   !25!forum.release-apk.com       !green!Cracking   [EN]!cyan!    �
echo [7C�   !11!pirates-forum.org      !green!Torrenting [EN]!cyan!    �   !26!platinmods.com              !green!Cracking   [EN]!cyan!    �
echo [7C�   !12!eztv.re                !green!Torrenting [EN]!cyan!    �   !27!forum.telecharger-jeuxpc.fr !green!Cracking   [FR]!cyan!    �
echo [7C�   !13!forums.glodls.to       !green!Torrenting [EN]!cyan!    �   !28!tapochek.net                !green!Cracking   [RU]!cyan!    �
echo [7C�   !14!torrentgalaxy.to       !green!Torrenting [EN]!cyan!    �   !29!forum.repack.me             !green!Cracking   [RU]!cyan!    �
echo [7C�   !15!www.ettvcentral.com    !green!Torrenting [EN]!cyan!    �   !30!planete-warez.net           !green!Warez      [FR]!cyan!    �
echo [7C�                                                                                                              �
echo [7C���������������������!bgyellow!!red!� Hacking �!bgblack!!cyan!���������������������������������������������!bgyellow!!red!� Others �!bgblack!!cyan!�����������������������͹
echo [7C�                                                    �                                                         �
echo [7C�   !31!www.nulled.to  !green![EN]!cyan!                       �   !36!teamos-hkrg.com    !green![EN]!cyan!                        �
echo [7C�   !32!raidforums.com !green![EN]!cyan!                       �   !37!forum.ru-board.com !green![RU]!cyan!                        �
echo [7C�   !33!hackforums.net !green![EN]!cyan!                       �                                                         �
echo [7C�   !34!cracked.to     !green![EN]!cyan!                       �                                                         �
echo [7C�   !35!payload.sh     !green![EN]!cyan!                       �                                                         �
echo [7C�                                                    �                                                         �
echo [7C��������������������������������������������������������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 20
echo:
call :PROMPT
call :WEBSITECHECK && goto :CONTINUEFORUMWEBSITES
call :CHOOSE back && goto :MOREFEATURES
call :WEBSITESTART && goto :CLEARFORUMWEBSITES
call :ERRORMESSAGE
goto :CONTINUEFORUMWEBSITES

:WINDOWSREPAIR
call :SCALE 70 26
title Windows Repair
call :ROSE "Windows Repair"

:CONTINUEWINDOWSREPAIR
call :SCALE 70 26
title Windows Repair
echo !cyan!
echo [26C����������������������
echo [25C// !red!�!bgyellow!!black! WINDOWS REPAIR !red!�!bgblack!!cyan! \\
echo [16C���������������������������������������ͻ
echo [16C�����������!bgyellow!!red!� General Repairs �!bgblack!!cyan!���������͹
echo [16C�                                       �
echo [16C�      !yellow!1!white! System File Checker Utility!cyan!    �
echo [16C�      !yellow!2!white! Repair Windows System Image!cyan!    �
echo [16C�      !yellow!3!white! Check Disk!cyan!                     �
echo [16C�      !yellow!4!white! Re-Register Store Apps!cyan!         �
echo [16C�                                       �
echo [16C����������!bgyellow!!red!� Specified Repairs �!bgblack!!cyan!��������͹
echo [16C�                                       �
echo [16C�      !yellow!5!white! Windows Store!cyan!                  �
echo [16C�      !yellow!6!white! Xbox Game!cyan!                      �
echo [16C�      !yellow!7!white! Push Notifications!cyan!             �
echo [16C�      !yellow!8!white! Wifi Hotspot!cyan!                   �
echo [16C�      !yellow!9!white! Clipboard History!cyan!              �
echo [16C�     !yellow!10!white! Background Apps!cyan!                �
echo [16C���������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 20
echo:
call :PROMPT
if "!x!"=="1" start cmd /c sfc /ScanNow ^& pause ^& exit
if "!x!"=="2" start cmd /c Dism /Online /Cleanup-Image /RestoreHealth ^& pause ^& exit
if "!x!"=="3" start cmd /c chkdsk !SystemDrive! /F /R ^& pause ^& exit
if "!x!"=="4" 2>nul powershell -ExecutionPolicy Unrestricted Get-AppXPackage -AllUsers ^| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"$($_.InstallLocation)\AppXManifest.xml\"}
if "!x!"=="5" for %%a in (10.0 6.3) do if "!windowsversion!"=="%%a" (goto :REPAIR_WINDOWS_STORE) else call :ERROR_WINDOWS_VERSION
if "!x!"=="6" if "!windowsversion!"=="10.0" (goto :REPAIR_XBOX_GAME) else call :ERROR_WINDOWS_VERSION
if "!x!"=="7" goto :REPAIR_PUSH_NOTIFICATIONS
if "!x!"=="8" if "!windowsversion!"=="10.0" (goto :REPAIR_WIFI_HOTSPOT) else call :ERROR_WINDOWS_VERSION
if "!x!"=="9" if "!windowsversion!"=="10.0" (goto :REPAIR_CLIPBOARD_HISTORY) else call :ERROR_WINDOWS_VERSION
if "!x!"=="10" if "!windowsversion!"=="10.0" (goto :REPAIR_BACKGROUND_APPS) else call :ERROR_WINDOWS_VERSION
for /l %%a in (1,1,10) do if "!x!"=="%%a" goto :CONTINUEWINDOWSREPAIR
call :CHOOSE back && goto :MOREFEATURES
call :ERRORMESSAGE
goto :CONTINUEWINDOWSREPAIR

:REPAIR_WINDOWS_STORE
call :SCALE 81 20
title Repair Windows Store
echo !cyan!
echo [7C#################################################################
echo [7C#            . . . I'm repairing Windows Store . . .            #
echo [7C#################################################################
echo:
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /f && echo reg value "RemoveWindowsStore" successfully removed. || echo reg value "RemoveWindowsStore" already removed.
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "DisableStoreApps" /f && echo reg value "DisableStoreApps" successfully removed. || echo reg value "DisableStoreApps" already removed.
if "!windowsversion!"=="10.0" 2>nul powershell -ExecutionPolicy Unrestricted -Command "& {$manifest = (Get-AppxPackage *WindowsStore*).InstallLocation + '\AppxManifest.xml' ; Add-AppxPackage -DisableDevelopmentMode -Register $manifest}"
if "!windowsversion!"=="6.3" 2>nul powershell -ExecutionPolicy Unrestricted Add-AppxPackage -DisableDevelopmentMode -Register $Env:SystemRoot\WinStore\AppxManifest.xml
for %%a in (wuauserv BITS DcomLaunch InstallService wlidsvc WaaSMedicSvc UnistoreSvc StorSvc) do >nul 2>&1 net stop "%%a"
for %%a in (wuauserv BITS DcomLaunch) do >nul 2>&1 sc config "%%a" start=auto && echo service "%%a" successfully set to demand. || echo service "%%a" does not exist or an error happend.
for %%a in (InstallService wlidsvc WaaSMedicSvc UnistoreSvc StorSvc) do >nul 2>&1 sc config "%%a" start=demand && echo service "%%a" successfully set to demand. || echo service "%%a" does not exist or an error happend.
for /f "delims=" %%a in ('2^>nul where "wsreset.exe"') do start "" "%%~fa"
<nul set /p=!yellow!
timeout /t 5
goto :WINDOWSREPAIR

:REPAIR_XBOX_GAME
call :SCALE 81 20
title Repair Xbox Game
echo !cyan!
echo [7C#################################################################
echo [7C#              . . . I'm repairing Xbox Game . . .              #
echo [7C#################################################################
echo:
for %%a in (XboxApp Microsoft.XboxGamingOverlay XboxOneSmartGlass) do 2>nul powershell -ExecutionPolicy Unrestricted -Command "& {$manifest = (Get-AppxPackage *%%a*).InstallLocation + '\AppxManifest.xml' ; Add-AppxPackage -DisableDevelopmentMode -Register $manifest}"
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /f && echo reg value "AllowgameDVR" successfully removed. || echo reg value "AllowgameDVR" already removed.
>nul reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 1 /f && echo reg value "AppCaptureEnabled" successfully added. || echo reg value "AppCaptureEnabled" could not be added.
>nul reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d 1 /f && echo reg value "HistoricalCaptureEnabled" successfully added. || echo reg value "HistoricalCaptureEnabled" could not be added.
>nul reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 1 /f && echo reg value "GameDVR_Enabled" successfully added. || echo reg value "GameDVR_Enabled" could not be added.
for %%a in (BcastDVRUserService xbgm XboxNetApiSvc XboxGipSvc xboxgip XblAuthManager XblGameSave) do (
>nul 2>&1 net stop "%%a"
>nul 2>&1 sc config "%%a" start=demand && echo service "%%a" successfully set to demand. || echo service "%%a" does not exist or an error happend.
)
<nul set /p=!yellow!
timeout /t 5
goto :WINDOWSREPAIR

:REPAIR_PUSH_NOTIFICATIONS
call :SCALE 81 20
title Repair Push Notifications
echo !cyan!
echo [7C#################################################################
echo [7C#         . . . I'm repairing Push Notifications . . .          #
echo [7C#################################################################
echo:
>nul 2>&1 reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /f && echo reg value "ToastEnabled" successfully removed. || echo reg value "ToastEnabled" already removed.
>nul 2>&1 reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "LockScreenToastEnabled" /f && echo reg value "LockScreenToastEnabled" successfully removed. || echo reg value "LockScreenToastEnabled" already removed.
>nul 2>&1 reg delete "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /f && echo reg value "DisableNotificationCenter" successfully removed. || echo reg value "DisableNotificationCenter" already removed.
>nul 2>&1 reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "UseActionCenterExperience" /f && echo reg value "UseActionCenterExperience" successfully removed. || echo reg value "UseActionCenterExperience" already removed.
if "!windowsversion!"=="10.0" >nul 2>&1 reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d 1 /f && echo reg value "EnableBalloonTips" successfully added. || echo reg value "EnableBalloonTips" could not be added.
for %%a in (WpnService WpnUserService) do (
>nul 2>&1 net stop "%%a"
>nul 2>&1 sc config "%%a" start=demand && echo service "%%a" successfully set to demand. || echo service "%%a" does not exist or an error happend.
)
<nul set /p=!yellow!
timeout /t 5
goto :WINDOWSREPAIR

:REPAIR_WIFI_HOTSPOT
call :SCALE 81 20
title Repair WiFi Hotspot
echo !cyan!
echo [7C#################################################################
echo [7C#            . . . I'm repairing WiFi Hotspot . . .             #
echo [7C#################################################################
echo:
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Network Connections" /v "NC_ShowSharedAccessUI" /f && echo reg value "NC_ShowSharedAccessUI" successfully removed. || echo reg value "NC_ShowSharedAccessUI" already removed.
for %%a in (CDPSvc CDPUserSvc icssvc) do >nul 2>&1 net stop "%%a"
for %%a in (CDPSvc CDPUserSvc) do >nul 2>&1 sc config "%%a" start=auto && echo service "%%a" successfully set to auto. || echo service "%%a" does not exist or an error happend.
>nul 2>&1 sc config "icssvc" start=demand && echo service "icssvc" successfully set to demand. || echo service "icssvc" does not exist or an error happend.
<nul set /p=!yellow!
timeout /t 5
goto :WINDOWSREPAIR

:REPAIR_CLIPBOARD_HISTORY
call :SCALE 81 20
title Repair Clipboard History
echo !cyan!
echo [7C#################################################################
echo [7C#          . . . I'm repairing Clipboard History . . .          #
echo [7C#################################################################
echo:
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowCrossDeviceClipboard" /f && echo reg value "AllowCrossDeviceClipboard" successfully removed. || echo reg value "AllowCrossDeviceClipboard" already removed.
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "AllowClipboardHistory" /f && echo reg value "AllowClipboardHistory" successfully removed. || echo reg value "AllowClipboardHistory" already removed.
>nul 2>&1 reg delete "HKCU\SOFTWARE\Microsoft\Clipboard" /v "EnableClipboardHistory" /f && echo reg value "EnableClipboardHistory" successfully removed. || echo reg value "EnableClipboardHistory" already removed.
>nul 2>&1 net stop "cbdhsvc"
>nul 2>&1 sc config "cbdhsvc" start=demand && echo service "cbdhsvc" successfully set to demand. || echo service "cbdhsvc" does not exist or an error happend.
<nul set /p=!yellow!
timeout /t 5
goto :WINDOWSREPAIR

:REPAIR_BACKGROUND_APPS
call :SCALE 81 20
title Repair Backgrounds Apps
echo !cyan!
echo [7C#################################################################
echo [7C#          . . . I'm repairing Backgrounds Apps . . .           #
echo [7C#################################################################
echo:
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /f && echo reg value "LetAppsRunInBackground" successfully removed. || echo reg value "LetAppsRunInBackground" already removed.
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground_UserInControlOfTheseApps" /f && echo reg value "LetAppsRunInBackground_UserInControlOfTheseApps" successfully removed. || echo reg value "LetAppsRunInBackground_UserInControlOfTheseApps" already removed.
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground_ForceAllowTheseApps" /f && echo reg value "LetAppsRunInBackground_ForceAllowTheseApps" successfully removed. || echo reg value "LetAppsRunInBackground_ForceAllowTheseApps" already removed.
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground_ForceDenyTheseApps" /f && echo reg value "LetAppsRunInBackground_ForceDenyTheseApps" successfully removed. || echo reg value "LetAppsRunInBackground_ForceDenyTheseApps" already removed.
>nul 2>&1 reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /f && echo reg value "GlobalUserDisabled" successfully removed. || echo reg value "GlobalUserDisabled" already removed.
>nul reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d 1 /f && echo reg value "BackgroundAppGlobalToggle" successfully added. || echo reg value "BackgroundAppGlobalToggle" could not be added.
<nul set /p=!yellow!
timeout /t 5
goto :WINDOWSREPAIR

:GAME_BOOSTER
call :SCALE 80 29
title %1 Game Boost ^| %1_%2_%3_%4
echo !cyan!
echo [7C#################################################################
echo [7C#              . . . I'm %1 Game Boost . . .             #
echo [7C#################################################################
echo:
>nul 2>&1 netsh interface tcp set global autotuninglevel=%2 && echo netsh interface "tcp global autotuninglevel" successfully set to %3. || echo netsh interface "tcp global autotuninglevel" does not exist or an error happend.
>nul 2>&1 netsh interface tcp set heuristics %3 && echo netsh interface "tcp heuristics" successfully set to %3. || echo netsh interface "tcp heuristics" does not exist or an error happend.
if "%1"=="Enabling" >nul 2>&1 ipconfig /flushdns && echo ipconfig "flushdns" succeeded. || echo ipconfig "flushdns" does not exist or an error happend.
for %%a in (PeerDistSvc MSiSCSI SNMPTRAP napagent CertPropSvc AxInstSV AppMgmt RemoteRegistry SCPolicySvc WebClient WinRM CscService WerSvc PNRPsvc p2psvc p2pimsvc) do (
>nul 2>&1 net stop "%%a"
>nul 2>&1 sc config "%%a" start=%3 && echo service "%%a" successfully set to %3. || echo service "%%a" does not exist or an error happend.
)
echo:
echo [7CDone, now GameBoost is %4. :')
<nul set /p=!yellow!
timeout /t 5
exit /b

:WINDOWSTWEAKS
call :SCALE 74 23
title Windows Tweaks
call :ROSE "Windows Tweaks"

:CONTINUEWINDOWSTWEAKS
call :SCALE 74 23
title Windows Tweaks
echo !cyan!
echo [26C����������������������
echo [25C// !red!�!bgyellow!!black! WINDOWS TWEAKS !red!�!bgblack!!cyan! \\
echo [6C������������������������������������������������������������ͻ
echo [6C�                                                            �
echo [6C�    !yellow!1!white! Disable desktop F1 keyboard "Help" shortcut.!cyan!          �
echo [6C�    !yellow!2!white! Disable context menu "Share with" and "Share".!cyan!        �
echo [6C�    !yellow!3!white! Disable context menu "Troubleshoot compatibility".!cyan!    �
echo [6C�    !yellow!4!white! Disable context menu "Include in library".!cyan!            �
echo [6C�    !yellow!5!white! Disable context menu "Send to".!cyan!                       �
echo [6C�    !yellow!6!white! Disable context menu "Restore previous versions".!cyan!     �
echo [6C�    !yellow!7!white! Disable Properties Tab "Previous Versions".!cyan!           �
echo [6C�    !yellow!8!white! Enable "Ultimate Performance" power scheme.!cyan!           �
echo [6C�    !yellow!9!white! Disk Cleanup.!cyan!                                         �
echo [6C�   !yellow!10!cyan!  ^>  !white!More Windows Tweaks !green!(Portable Apps)!cyan!               �
echo [6C�                                                            �
echo [6C������������������������������������������������������������ͼ
echo !grey!
if "!Language!"=="EN" (set t1=Write a number OR) & (set t2=AND press) & set t3=ENTER
if "!Language!"=="FR" (set t1=Ecrivez un num�ro OU) & (set t2=et appuy� sur) & set t3=ENTRER
call :DRAW_CENTER "!t1! "!yellow!BACK!grey!" !t2! !yellow!{!t3!}!grey!." 20
echo:
call :PROMPT
for /l %%a in (1,1,7) do if "!x!"=="%%a" (
if "!Language!"=="EN" set "t=Do you want to Enable (Yes) or Disable (No) this"
if "!Language!"=="FR" set "t=Voulez-vous Activer (Oui) ou D�sactiver (Non) ce"
call :MSGBOXLEVEL 1 "!t! tweak ?" 69668 "Illegal Services Checker"
)
if "!x!"=="1" (
if "!el!"=="6" (
>nul reg add "HKCU\SOFTWARE\Classes\Typelib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win32" /f
>nul reg add "HKCU\SOFTWARE\Classes\Typelib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0\win64" /f
)
if "!el!"=="7" >nul 2>&1 reg delete "HKCU\SOFTWARE\Classes\Typelib\{8cec5860-07a1-11d9-b15e-000d56bfe6ee}\1.0\0" /f
)
if "!x!"=="2" (
if "!el!"=="6" (
for %%a in ("HKCR\*\shellex\ContextMenuHandlers\Sharing" "HKCR\Directory\Background\shellex\ContextMenuHandlers\Sharing" "HKCR\Directory\shellex\ContextMenuHandlers\Sharing" "HKCR\Directory\shellex\CopyHookHandlers\Sharing" "HKCR\Directory\shellex\PropertySheetHandlers\Sharing" "HKCR\Drive\shellex\ContextMenuHandlers\Sharing" "HKCR\Drive\shellex\PropertySheetHandlers\Sharing" "HKCR\LibraryFolder\background\shellex\ContextMenuHandlers\Sharing" "HKCR\UserLibraryFolder\shellex\ContextMenuHandlers\Sharing") do >nul 2>&1 reg delete "%%~a" /f
if "!windowsversion!"=="10.0" >nul 2>&1 reg delete "HKCR\*\shellex\ContextMenuHandlers\ModernSharing" /f
)
if "!el!"=="7" (
>nul 2>&1 reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}" /f
>nul reg add "HKCR\*\shellex\ContextMenuHandlers\Sharing" /t REG_SZ /d "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}" /f
>nul reg add "HKCR\Directory\Background\shellex\ContextMenuHandlers\Sharing" /t REG_SZ /d "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}" /f
>nul reg add "HKCR\Directory\shellex\ContextMenuHandlers\Sharing" /t REG_SZ /d "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}" /f
>nul reg add "HKCR\Directory\shellex\CopyHookHandlers\Sharing" /t REG_SZ /d "{40dd6e20-7c17-11ce-a804-00aa003ca9f6}" /f
>nul reg add "HKCR\Directory\shellex\PropertySheetHandlers\Sharing" /t REG_SZ /d "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}" /f
>nul reg add "HKCR\Drive\shellex\ContextMenuHandlers\Sharing" /t REG_SZ /d "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}" /f
>nul reg add "HKCR\Drive\shellex\PropertySheetHandlers\Sharing" /t REG_SZ /d "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}" /f
>nul reg add "HKCR\LibraryFolder\background\shellex\ContextMenuHandlers\Sharing" /t REG_SZ /d "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}" /f
>nul reg add "HKCR\UserLibraryFolder\shellex\ContextMenuHandlers\Sharing" /t REG_SZ /d "{f81e9010-6ea4-11ce-a7ff-00aa003ca9f6}" /f
>nul reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInplaceSharing" /t REG_DWORD /d 1 /f
>nul reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "forceguest" /t REG_DWORD /d 0 /f
if "!windowsversion!"=="10.0" >nul reg add "HKCR\*\shellex\ContextMenuHandlers\ModernSharing" /t REG_SZ /d "{e2bf9676-5f8f-435c-97eb-11607a5bedf7}" /f
)
)
if "!x!"=="3" (
if "!el!"=="6" (
for %%a in ("HKCR\batfile\shellEx\ContextMenuHandlers\Compatibility" "HKCR\cmdfile\shellEx\ContextMenuHandlers\Compatibility" "HKCR\exefile\shellex\ContextMenuHandlers\Compatibility" "HKCR\Msi.Package\shellex\ContextMenuHandlers\Compatibility" "HKCR\MSILink\shellex\ContextMenuHandlers\{1d27f844-3a1f-4410-85ac-14651078412d}") do >nul 2>&1 reg delete "%%~a" /f
>nul reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{1d27f844-3a1f-4410-85ac-14651078412d}" /f
)
if "!el!"=="7" (
>nul reg add "HKCR\batfile\shellEx\ContextMenuHandlers\Compatibility" /t REG_SZ /d "{1d27f844-3a1f-4410-85ac-14651078412d}" /f
>nul reg add "HKCR\cmdfile\shellEx\ContextMenuHandlers\Compatibility" /t REG_SZ /d "{1d27f844-3a1f-4410-85ac-14651078412d}" /f
>nul reg add "HKCR\exefile\shellex\ContextMenuHandlers\Compatibility" /t REG_SZ /d "{1d27f844-3a1f-4410-85ac-14651078412d}" /f
>nul reg add "HKCR\Msi.Package\shellex\ContextMenuHandlers\Compatibility" /t REG_SZ /d "{1d27f844-3a1f-4410-85ac-14651078412d}" /f
>nul reg add "HKCR\MSILink\shellex\ContextMenuHandlers" /t REG_SZ /d "{1d27f844-3a1f-4410-85ac-14651078412d}" /f
>nul reg add "HKCR\MSILink\shellex\ContextMenuHandlers\{1d27f844-3a1f-4410-85ac-14651078412d}" /t REG_SZ /d "Compatibility Context Menu" /f
>nul 2>&1 reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{1d27f844-3a1f-4410-85ac-14651078412d}" /f
)
)
if "!x!"=="4" (
if "!el!"=="6" (
>nul 2>&1 reg delete "HKCR\Folder\ShellEx\ContextMenuHandlers\Library Location" /f
>nul 2>&1 reg delete "HKLM\SOFTWARE\Classes\Folder\shellex\ContextMenuHandlers\Library Location" /f
)
if "!el!"=="7" (
>nul reg add "HKCR\Folder\shellex\ContextMenuHandlers\Library Location" /t REG_SZ /d "{3dad6c5d-2167-4cae-9914-f99e41c12cfa}" /f
>nul reg add "HKLM\SOFTWARE\Classes\Folder\shellex\ContextMenuHandlers\Library Location" /t REG_SZ /d "{3dad6c5d-2167-4cae-9914-f99e41c12cfa}" /f
)
)
if "!x!"=="5" (
if "!el!"=="6" (
>nul 2>&1 reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\SendTo" /f
>nul 2>&1 reg delete "HKCR\UserLibraryFolder\shellex\ContextMenuHandlers\SendTo" /f
)
if "!el!"=="7" (
>nul reg add "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\SendTo" /t REG_SZ /d "{7BA4C740-9E81-11CF-99D3-00AA004AE837}" /f
>nul reg add "HKCR\UserLibraryFolder\shellex\ContextMenuHandlers\SendTo" /t REG_SZ /d "{7BA4C740-9E81-11CF-99D3-00AA004AE837}" /f
)
)
if "!x!"=="6" (
if "!el!"=="6" (
>nul 2>&1 reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
>nul 2>&1 reg delete "HKCR\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
>nul 2>&1 reg delete "HKCR\Directory\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
>nul 2>&1 reg delete "HKCR\Drive\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
)
if "!el!"=="7" (
>nul reg add "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
>nul reg add "HKCR\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
>nul reg add "HKCR\Directory\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
>nul reg add "HKCR\Drive\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
)
)
if "!x!"=="7" (
if "!el!"=="6" (
>nul 2>&1 reg delete "HKCR\AllFilesystemObjects\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
>nul 2>&1 reg delete "HKCR\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
>nul 2>&1 reg delete "HKCR\Directory\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
>nul 2>&1 reg delete "HKCR\Drive\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
)
if "!el!"=="7" (
>nul reg add "HKCR\AllFilesystemObjects\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
>nul reg add "HKCR\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
>nul reg add "HKCR\Directory\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
>nul reg add "HKCR\Drive\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
>nul 2>&1 reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "NoPreviousVersionsPage" /f
>nul 2>&1 reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "NoPreviousVersionsPage" /f
>nul 2>&1 reg delete "HKLM\SOFTWARE\Policies\Microsoft\PreviousVersions" /v "DisableLocalPage" /f
>nul 2>&1 reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "NoPreviousVersionsPage" /f
>nul 2>&1 reg delete "HKCU\Software\Policies\Microsoft\PreviousVersions" /v "DisableLocalPage" /f
>nul 2>&1 reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
)
)
if "!x!"=="8" (
if "!windowsversion!"=="10.0" (
>nul 2>&1 reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power\User\PowerSchemes\e9a42b02-d5df-448d-aa00-03f14749eb61
if errorlevel 0 (
set cn=0
for /f "delims=" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power\User\PowerSchemes /f "Ultimate Performance" /s /c ^| findstr /c:"Ultimate Performance"') do set /a cn+=1
if !cn! equ 1 (
for /f "tokens=2delims=:" %%a in ('powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61') do for /f "delims= " %%b in ("%%a") do call :ENABLE_ULTIMATE_PERFORMANCES_POWER_SCHEME %%b
) else (
for /f "delims=" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Power\User\PowerSchemes /f "Ultimate Performance" /s /c ^| findstr /c:"PowerSchemes"') do for /f "tokens=8delims=\" %%b in ("%%a") do if not "%%b"=="e9a42b02-d5df-448d-aa00-03f14749eb61" call :ENABLE_ULTIMATE_PERFORMANCES_POWER_SCHEME %%b
)
) else (
if "!Language!"=="EN" set t=ERROR: Power scheme 'Ultimate Performance' doesn't exist in your computer. You cannot use this script
if "!Language!"=="FR" set t=ERREUR: Le sch�ma d'alimentation 'Ultimate Performance' n'existe pas sur votre ordinateur. Vous ne pouvez pas utiliser ce script
call :MSGBOX 1 "!t!." 69680 "Illegal Services Checker"
)
) else call :ERROR_WINDOWS_VERSION
goto :CONTINUEWINDOWSTWEAKS
)
if "!x!"=="9" start cleanmgr.exe & goto :CONTINUEWINDOWSTWEAKS
if "!x!"=="10" goto :PORTABLEAPPS
for /l %%a in (1,1,7) do if "!x!"=="%%a" call :DONE_REGVALUE & goto :CONTINUEWINDOWSTWEAKS
call :CHOOSE back && goto :MOREFEATURES
call :ERRORMESSAGE
goto :CONTINUEWINDOWSTWEAKS

:CHECKER_SETUP_FOUND
call :MSGBOXLEVEL UPDATER
if "!el!"=="7" exit /b
call :CURL "!TMPF!\IS.Setup.exe" "`git_release`" UPDATER || (call :ERROR_INTERNET & exit /b)
>nul reg add "!IS_Reg!" /v "FirstLaunch" /t REG_DWORD /d 1 /f
pushd "!TMPF!"
start /max IS.Setup.exe
popd
exit

:CHECKER_BUILD_FOUND
call :CURL "Illegal Services.exe" "`git_build`" UPDATER || (call :ERROR_INTERNET & exit /b)
call :CURL "ChangeLog.txt" "`git_changelog`" UPDATER || (call :ERROR_INTERNET & exit /b)
start "" "Illegal Services.exe"
exit

:PROCESS_FAQ
if "!Language!"=="EN" call :SCALE 105 33
if "!Language!"=="FR" call :SCALE 110 33
title Frequently Asked Questions
call :ROSE FAQ
echo !cyan!
if "!Language!"=="EN" set "t=Here is a list of frequently asked questions about "
if "!Language!"=="FR" set "t=Voici une liste questions de questions fr�quemment pos�es � propos d'"
call :DRAW_CENTER "��!bgyellow!!red!� !black!!t!Illegal Services:!red! �!bgblack!!cyan!��" 30
echo:
echo !cyan!
if "!Language!"=="EN" set t=Is Illegal Services illegal
if "!Language!"=="FR" set t=Illegal Services est-il ill�gal
echo    ��!bgwhite!!red!�  !t! ? �!bgblack!!cyan!��
if "!Language!"=="EN" (
set t1=Illegal Services is legal, but services provided inside are mostly illegal
set t2=Illegal Services does not store any copyrighted files locally or on its server
set t3=All contents are provided by non-affiliated third parties
set t4=You are solely responsible for their use at your own risk
)
if "!Language!"=="FR" (
set t1=Illegal Services est l�gal, mais les services fournis � l'int�rieur sont principalement ill�gaux
set t2=Illegal Services ne stocke aucun fichier sous copyright localement ou sur son serveur
set t3=Tous les contenus sont fournis par des tiers non affili�s
set t4=Vous �tes tenu comme seul responsable de leur utilisation � vos propres risques
)
for %%a in (1 2 3 4) do echo [6C!green!!t%%a!.
echo !cyan!
if "!Language!"=="EN" set t=Why Illegal Services is detected by many antiviruses
if "!Language!"=="FR" set t=Pourquoi Illegal Services est detect� par beaucoup d'antivirus
echo    ��!bgwhite!!red!�  !t! ? �!bgblack!!cyan!��
if "!Language!"=="EN" (
set t1=The source code is converted from batch to executable using
set t2=This conversion process leads to believe that it is a
)
if "!Language!"=="FR" (
set t1=Le code source est convertie de batch en executable en utilisant
set t2=Ce processus de conversion fait laisser croire qu'il en est un
)
echo [6C!green!!t1! !underline!https://www.abyssmedia.com/quickbfc/!underlineoff!
echo [6C!green!!t2! virus.
echo !cyan!
if "!Language!"=="EN" set t=Is Illegal Services open source
if "!Language!"=="FR" set t=Est-ce qu'Illegal Services est Open Source
echo    ��!bgwhite!!red!�  !t! ? �!bgblack!!cyan!��
if "!Language!"=="EN" set t=Yes, under the General Public License v3.0 (GNU GPLv3)
if "!Language!"=="FR" set t=Oui, sous la General Public License v3.0 (GNU GPLv3)
echo [6C!green!!t!.
echo [6C!green!!underline!!git_source!!underlineoff!
echo !cyan!
if "!Language!"=="EN" set t=With which operating systems is Illegal Services compatible
if "!Language!"=="FR" set t=Avec qu'elle syst�me d'exploitation Illegal Services est-t'il compatible
echo    ��!bgwhite!!red!�  !t! ? �!bgblack!!cyan!��
echo [6C!green!Windows 7, 8, 8.1, 10 (x86/x64).
echo !cyan!
if "!Language!"=="EN" set t=Can you make Illegal Services compatible with more operating system
if "!Language!"=="FR" set t=Pouvez-vous rendre Illegal Services compatible pour d'autre syst�me d'exploitation
echo    ��!bgwhite!!red!�  !t! ? �!bgblack!!cyan!��
if "!Language!"=="EN" set t=No. But IS Bookmarks and IS search engines are
if "!Language!"=="FR" set t=Non. Mais IS.Bookmarks et IS search engines le sont
echo [6C!green!!t!.
echo !cyan!
if "!Language!"=="EN" set t=In which languages is Illegal Services developed
if "!Language!"=="FR" set t=En quels langages est d�velopp� Illegal Services
echo    ��!bgwhite!!red!�  !t! ? �!bgblack!!cyan!��
echo [6C!green!93%% Batch, 3%% PowerShell, 2%% VBScript, 2%% CSharp.
echo !cyan!
if "!Language!"=="EN" set t=When did you started Illegal Services project
if "!Language!"=="FR" set t=Quand est-ce que le projet d'Illegal Services � commenc�
echo    ��!bgwhite!!red!�  !t! ? �!bgblack!!cyan!��
echo [6C!green!v1.0.0.0 - 22/05/2020
echo:
echo !cyan!
if "!Language!"=="EN" set "t=Press !yellow!{ANY KEY}!cyan! to exit"
if "!Language!"=="FR" set "t=Appuyez sur !yellow!{UNE TOUCHE}!cyan! pour quitter"
call :DRAW_CENTER "!t!..." 10 1
%showcursor%
>nul pause
exit

:PROCESS_SCANWEBSITES
if "!Language!"=="EN" set t=Establishing connection to websites database
if "!Language!"=="FR" set t=Etablissement de la connexion � la base de donn�e des sites internet
set url=!git_raw_downloads!/Websites.txt
title !t!: '!url!'.
>nul Curl\x!arch!\curl.exe -fIkLs "!url!" || (call :ERROR_INTERNET & exit)
for %%a in (index cn result el) do set %%a=0
set s=
if "!Language!"=="EN" (
set o1=Website Down
set o2=Website Changed Domain
)
if "!Language!"=="FR" (
set o1=Site Internet Mort
set o2=Site Internet Chang� de Domaine
)
for /f %%a in ('Curl\x!arch!\curl.exe -fkLs "!url!"') do (
set /a index+=1
title [0 result found from !index! websites indexed]  ^|  [0/100%%]  ^|
)
echo !cyan!
if "!Language!"=="EN" echo Scan of the !index! indexed websites has started. You will be notified if any of them are down or have changed domain.
if "!Language!"=="FR" echo Le scan des !index! sites web index�s a commenc�. Vous serez notifi� si l'un d'entre eux est mort ou a chang� de domaine.
echo:
for /f "tokens=1-4delims=:.," %%a in ("!time: =0!") do set /a "t1=(((1%%a*60)+1%%b)*60+1%%c)*100+1%%d-36610100"
for /f %%a in ('Curl\x!arch!\curl.exe -fkLs "!url!"') do (
set /a "cn+=1, el=cn*100/index"
if defined result set s=s
title [!result! result!s! found from !index! websites indexed]  ^|  [!el!/100%%]  ^|  %%a
>nul ping -w 1000 -n 1 "%%a" || >nul Curl\x!arch!\curl.exe -IkLs "https://%%a/" || >nul Curl\x!arch!\curl.exe -IkLs "http://%%a/" || (
set /a result+=1
echo !red!!o1!: !yellow!%%a !red!seems to be down for you ^^!
Curl\x!arch!\curl.exe -fkLs "https://isitup.org/%%a" | >nul findstr /ic:"Oh no %%a" && (
set /a result+=1
echo !red!!o1!: !yellow!%%a !red!seems to be down for everyone ^^!
)
)
for /f "tokens=1,*delims=-" %%b in ('Curl\x!arch!\curl.exe -Iksw "%%{response_code}-%%{redirect_url}" "https://%%a/"') do if "%%b"=="301" for /f "tokens=2delims=/" %%d in ("%%c") do if not "%%d"=="%%a" if not "%%d"=="github.com" if not "%%d"=="www.microsoft.com" if not "%%d"=="discord.com" if not "%%d"=="danse-musique.org" (
set /a result+=1
for /f "delims=//" %%e in ("%%c") do echo !red!!o2!: !yellow!https://%%a/ !green!^> !yellow!%%e//%%d/
)
)
echo !cyan!
for /f "tokens=1-4delims=:.," %%a in ("!time: =0!") do set /a "t2=(((1%%a*60)+1%%b)*60+1%%c)*100+1%%d-36610100, tDiff=t2-t1, tDiff+=((~(tDiff&(1<<31))>>31)+1)*8640000, seconds=tDiff/100"
title [!result! result!s! found from !index! websites indexed]  ^|  Scan finished in !seconds! seconds.
if "!Language!"=="EN" echo Scan ended with !result! result!s! found from !index! websites indexed in !seconds! seconds.
if "!Language!"=="FR" echo L'analyse s'est termin�e avec !result! r�sultats trouv�s � partir de !index! sites web index�s en !seconds! secondes.
echo:
pause
exit

:PROCESS_YOUTUBEDL
call :CHECK_YOUTUBEDLPRIORITY
title YouTube DL    ^|!youtube_dl!.exe !a!^|    ^|!o1!^|    ^|Priority: !YouTubeDLPriority:~1!^|
echo !grey!
echo [7C##############################################
if "!Language!"=="EN" echo [7C#       !brightred!   !cyan!Welcome in YouTube DL   !brightred!!grey!        #
if "!Language!"=="FR" echo [7C#      !brightred!   !cyan!Bievenue dans YouTube DL   !brightred!!grey!      #
echo [7C##############################################
echo:
if "!Language!"=="EN" (
set t1=Choice
set t2=Please wait while downloading
)
if "!Language!"=="FR" (
set t1=Choix
set t2=Veuillez patienter pendant le t�l�chargement de
)
echo [7C !cyan!!t1!: !yellow!!o1!!grey!
echo [7C !cyan!!t2!: !yellow!!x!!cyan! . . .
echo !grey!
echo =========================================================================================================
echo !red!
>nul chcp 65001
start /b /w !YouTubeDLPriority! Portable_Apps\YouTube-DL\!youtube_dl!.exe --ffmpeg-location "Portable_Apps\YouTube-DL" --output "!YouTubeDLOutputDirectory!\%%(title)s.%%(ext)s" !a!
set el=!errorlevel!
>nul chcp !CP!
echo !grey!
echo =========================================================================================================
echo !cyan!
if "!Language!"=="EN" if "!el!"=="0" (
echo [7C Download finished.
<nul set /p=[7C Press !yellow!{ANY KEY}!cyan! to open download location and exit...
) else (
echo [7C Something went wrong and couldn't download the file.
<nul set /p=[7C Press !yellow!{ANY KEY}!cyan! to exit...
)
if "!Language!"=="FR" if "!el!"=="0" (
echo [7C T�chargement terminer.
<nul set /p=[7C Appuyez sur !yellow!{UNE TOUCHE}!cyan! pour ouvrir l'emplacement de t�chargement et quitter...
) else (
echo [7C Une erreur s'est produite et n'a pas pu t�charger le fichier.
<nul set /p=[7C Appuyez sur !yellow!{UNE TOUCHE}!cyan! pour quitter...
)
%showcursor%
>nul pause
if "!el!"=="0" start /max explorer.exe "!YouTubeDLOutputDirectory!"
exit

:PROCESS_NMAP
call :CHECK_PORTPRIORITY
title NMAP    ^|nmap.exe !a!^|    ^|!o1!^|    ^|!o2!^|    ^|Priority: !PortPriority:~1!^|
>nul 2>&1 net start npcap
>nul 2>&1 reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 64534 /f
>nul 2>&1 reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f
>nul 2>&1 reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "StrictTimeWaitSeqCheck" /t REG_DWORD /d 1 /f
echo !grey!
echo [7C#################################################################
if "!Language!"=="EN" echo [7C#       !brightred!   !cyan!Welcome in the best Port Scanner by NMAP   !brightred!!grey!        #
if "!Language!"=="FR" echo [7C#    !brightred!   !cyan!Bienvenue dans le meilleur Port Scanner par NMAP   !brightred!!grey!   #
echo [7C#################################################################
echo:
if "!Language!"=="EN" (
set t1=Time
set t2=Please wait while scanning
)
if "!Language!"=="FR" (
set t1=Temps
set t2=Veuillez patienter pendant le scan de
)
echo [7C !cyan!Scan: !yellow!!o1!!grey!
echo [7C !cyan!!t1!: !yellow!!o2!!grey!
echo [7C !cyan!!t2!: !yellow!!x!!cyan! . . .
echo !grey!
echo =========================================================================================================
echo !red!
>nul chcp 65000
start /b /w !PortPriority! Portable_Apps\NMAP\nmap.exe !a!
set el=!errorlevel!
>nul chcp !CP!
echo !grey!
echo =========================================================================================================
echo !cyan!
if "!Language!"=="EN" if "!el!"=="0" (
echo [7C Scan finished.
<nul set /p=[7C Press !yellow!{ANY KEY}!cyan! to exit...
) else (
echo [7C Something went wrong and couldn't scan.
<nul set /p=[7C Press !yellow!{ANY KEY}!cyan! to exit...
)
if "!Language!"=="FR" if "!el!"=="0" (
echo [7C Scan terminer.
<nul set /p=[7C Appuyez sur !yellow!{UNE TOUCHE}!cyan! pour quitter...
) else (
echo [7C Une erreur s'est produite et n'a pas pu scanner.
<nul set /p=[7C Appuyez sur !yellow!{UNE TOUCHE}!cyan! pour quitter...
)
%showcursor%
>nul pause
exit

:PROCESS_PINGER
title IP Pinger  ^|Pinging !x!^|
:_PING
cls
echo !cyan!
echo          ____________________________________________
echo         /                                            \
echo        /       -------------/###\-------------        \
echo       /                     \###/                      \      !red!*THIS TOOL WILL ALLOW YOU TO SEE IF YOUR!cyan!
echo      /                     /     \                      \       !red!TARGET IS REACHED BY YOUR DDoS OR NOT.!cyan!
echo     /                     /       \                      \
echo    /                     :   ###   :                      \
echo   /                [O-O-]:    #    :[-O-O]                 \
echo   \                      /\___#___/\                       /
echo    \                    /     0     \                     /   !red!*!underline!WARNING!underlineoff!!red!: SOME ROUTERS DO NOT ALLOW THE PING.!cyan!
echo     \                  /             \                   /        !red!FOR THIS REASON IT IS NORMAL IF SOME!cyan!
echo      \                                                  /            !red!IP ADDRESSES DO NOT RESPOND!cyan!
echo       \________________________________________________/                 !red!WHILE PINGING THEM.!cyan!
echo        \                                              /
echo         \          Made By IB_U_Z_Z_A_R_Dl           /
echo          \__________________________________________/
echo !grey!
if "!Language!"=="EN" echo                       ** PRESS !yellow![CTRL + C]!grey! ^> !yellow![N]!grey! ^> !yellow![ENTER]!grey! to view result and restart. **
if "!Language!"=="FR" echo               ** Presser !yellow![CTRL + C]!grey! ^> !yellow![N]!grey! ^> !yellow![ENTRER]!grey! pour afficher le r�sultat et recommencer. **
echo !white!
ping -t -l 0 !x!
goto :_PING

:DONE_REGVALUE
if "!Language!"=="EN" set t=Reg value successfully added/removed
if "!Language!"=="FR" set t=Valeur du registre ajout�e/supprim�e avec succ�s
call :MSGBOX 1 "!t!." 69696 "Illegal Services Checker"
exit /b

:ENABLE_ULTIMATE_PERFORMANCES_POWER_SCHEME
echo:
for /f "tokens=2delims=:" %%a in ('powercfg /getactivescheme') do for /f "delims= " %%b in ("%%a") do if "%%b"=="%1" (
if "!Language!"=="EN" set t=The 'Ultimate Performance' power scheme is already enabled
if "!Language!"=="FR" set t=Le sch�ma d'alimentation 'Ultimate Performance' est d�j� activ�
call :MSGBOX 1 "!t!." 69696 "Illegal Services Checker"
exit /b
)
powercfg /setactive %1 && (
if "!Language!"=="EN" set t=The 'Ultimate Performance' power scheme successfully enabled
if "!Language!"=="FR" set t=Le sch�ma d'alimentation 'Ultimate Performance' a �t� activ� avec succ�s
call :MSGBOX 1 "!t!." 69696 "Illegal Services Checker"
) || (
if "!Language!"=="EN" set t=ERROR: The 'Ultimate Performance' power scheme couldn't enable
if "!Language!"=="FR" set t=ERREUR: Le sch�ma d'alimentation 'Ultimate Performance' n'a pas pu �tre activ�
call :MSGBOX 1 "!t!." 69680 "Illegal Services Checker"
)
exit /b

:CHECK_INTERNET
for %%a in (https http) do >nul Curl\x!arch!\curl.exe -IkLs "%%a://www.google.com/" && exit /b 0
exit /b 1

:INSTALL_ANSICON
if defined ANSICON_VER exit /b
for %%a in (ansicon.exe ANSI32.dll) do if not exist "Ansicon\x!arch!\%%a" call :CURL "Ansicon\x!arch!\%%a" "`git_raw_main`/Ansicon/x!arch!/%%a" || (call :ERROR_INTERNET & exit)
if "!arch!"=="64" if not exist "Ansicon\x64\ANSI64.dll" call :CURL "Ansicon\x!arch!\ANSI64.dll" "`git_raw_main`/Ansicon/x!arch!/ANSI64.dll" || (call :ERROR_INTERNET & exit)
pushd "Ansicon\x!arch!"
ansicon.exe -i
popd
start "" "%~f1"
exit

:MSGBOX
if "%1"=="UPDATER" mshta vbscript:Execute("msgbox ""%~2"" & Chr(10) & Chr(10) & ""%~3"" & Chr(10) & ""%~4"",%5,""%~6"":close")
if "%1"=="1" mshta vbscript:Execute("msgbox ""%~2"",%3,""%~4"":close")
if "%1"=="2" mshta vbscript:Execute("msgbox ""%~2"" & Chr(10) & Chr(10) & ""%~3"",%4,""%~5"":close")
if "%1"=="3" mshta vbscript:Execute("msgbox ""%~2"" & Chr(10) & Chr(10) & ""%~3"" & Chr(10) & Chr(10) & ""%~4"",%5,""%~6"":close")
if "%1"=="4" mshta vbscript:Execute("msgbox ""%~2"" & Chr(10) & Chr(10) & ""%~3"" & Chr(10) & Chr(10) & ""%~4"" & Chr(10) & Chr(10) & ""%~5"",%6,""%~7"":close")
exit /b

:MSGBOXLEVEL
set el=
if "%1"=="UPDATER" (
echo Dim Msg,Style,Title,Response
if "!Language!"=="EN" echo Msg="New version found. Do you want to update ?"^&vbCrLf^&vbCrLf^&"Current version: !version!"^&vbCrLf^&"Latest version   : !lastversion!"
if "!Language!"=="FR" echo Msg="Nouvelle version trouv�e. Voulez-vous mettre � jour ?"^&vbCrLf^&vbCrLf^&"Version actuelle  : !version!"^&vbCrLf^&"Derni�re version : !lastversion!"
echo Style=69668
echo Title="Illegal Services Updater"
echo Response=MsgBox^(Msg,Style,Title^)
echo If Response=vbYes then
echo wscript.quit ^(6^)
echo End If
echo If Response=vbNo then
echo wscript.quit ^(7^)
echo End If
)>"!TMPF!\msgbox.vbs" && cscript //nologo "!TMPF!\msgbox.vbs" (
if "!errorlevel!"=="6" set el=6
if "!errorlevel!"=="7" set el=7
)
if "%1"=="1" (
echo Dim Msg,Style,Title,Response
echo Msg="%~2"
echo Style=%3
echo Title="%~4"
echo Response=MsgBox^(Msg,Style,Title^)
echo If Response=vbYes then
echo wscript.quit ^(6^)
echo End If
echo If Response=vbNo then
echo wscript.quit ^(7^)
echo End If
)>"!TMPF!\msgbox.vbs" && cscript //nologo "!TMPF!\msgbox.vbs" (
if "!errorlevel!"=="6" set el=6
if "!errorlevel!"=="7" set el=7
)
if "%1"=="2" (
echo Dim Msg,Style,Title,Response
echo Msg="%~2"^&vbCrLf^&vbCrLf^&"%~3"
echo Style=%4
echo Title="%~5"
echo Response=MsgBox^(Msg,Style,Title^)
echo If Response=vbYes then
echo wscript.quit ^(6^)
echo End If
echo If Response=vbNo then
echo wscript.quit ^(7^)
echo End If
)>"!TMPF!\msgbox.vbs" && cscript //nologo "!TMPF!\msgbox.vbs" (
if "!errorlevel!"=="6" set el=6
if "!errorlevel!"=="7" set el=7
)
if "%1"=="3" (
echo Dim Msg,Style,Title,Response
echo Msg="%~2"^&vbCrLf^&vbCrLf^&"%~3"^&vbCrLf^&vbCrLf^&"%~4"
echo Style=%5
echo Title="%~6"
echo Response=MsgBox^(Msg,Style,Title^)
echo If Response=vbYes then
echo wscript.quit ^(6^)
echo End If
echo If Response=vbNo then
echo wscript.quit ^(7^)
echo End If
)>"!TMPF!\msgbox.vbs" && cscript //nologo "!TMPF!\msgbox.vbs" (
if "!errorlevel!"=="6" set el=6
if "!errorlevel!"=="7" set el=7
)
del /f /q "!TMPF!\msgbox.vbs"
exit /b

:INPUTBOX
echo WScript.Echo InputBox^("%~1"^)>"%TMPF%\msgbox.vbs"
set ID=
for /f "delims=" %%a in ('cscript //nologo "%TMPF%\msgbox.vbs"') do set "ID=%%a"
del /f /q "%TMPF%\msgbox.vbs"
exit /b

:ROSE_SETUP
>nul chcp 1252
for /f "tokens=1*delims==" %%a in ('findstr /bc:"[First Launch]=" "Speak\!Language!.lang"') do if defined SPEECH_FR (Speak\speak-x!arch!.exe -t "%%~b") else (
set extd=Speak\extd.exe /speak "%%~b"
!extd!
)
>nul chcp !CP!
if "!Language!"=="EN" set t=Do you want to disable Rose voice assistant
if "!Language!"=="FR" set t=Voulez-vous d�sactiver l'assistante vocale Rose
call :MSGBOXLEVEL 1 "!t! ?" 69668 "Illegal Services Checker"
if "!el!"=="6" >nul reg add "!IS_Reg!" /v "VoiceAssistant" /t REG_DWORD /d 0 /f
if "!el!"=="7" >nul reg add "!IS_Reg!" /v "VoiceAssistant" /t REG_DWORD /d 1 /f
>nul reg add "!IS_Reg!" /v "VoiceAssistantChoice" /t REG_DWORD /d 0 /f
exit /b

:ROSE
if "!VoiceAssistant!"=="0" exit /b
if "%~1"=="" exit /b
for %%a in (extd speak-x!arch!) do >nul 2>&1 taskkill /f /im "%%a.exe" /t
>nul chcp 1252
for /f "tokens=1*delims==" %%a in ('findstr /bc:"[%~1]=" "Speak\!Language!.lang"') do if defined SPEECH_FR (start /b Speak\speak-x!arch!.exe -t "%%~b") else (
set extd=start /b Speak\extd.exe /speak "%%~b"
!extd!
)
>nul chcp !CP!
exit /b

:CURL
call :CHECK_INTERNET || exit /b 1
set "url=%~2"
if not "!url:`=!"=="!url!" (
if "!git!"=="404 Git proxy not found" call :PROXY || if "!git!"=="404 Git proxy not found" exit /b 2
for /f "tokens=1-3delims=`" %%a in ("[!url!]") do set "url=%%a!%%b!%%c"
set "url=!url:~1,-1!"
)
if defined git_backup if not "!url:%git%=!"=="!url!" if not "%3"=="UPDATER" exit /b 3
if "!Language!"=="EN" set t=Downloading
if "!Language!"=="FR" set t=T�l�chargement
<nul set /p="!cyan!!t!: !yellow!!url!!cyan!"
echo:
Curl\x!arch!\curl.exe --create-dirs -f#kLo "%~1" "!url!" || if not "!url:%git%=!"=="!url!" call :CURL_PROXYS "%~1" "!url!" || (call :ERROR_CURL "%~f1" "!url!" & exit /b 4)
if exist "%~f1" for %%a in (7z zip) do if "%~x1"==".%%a" if "%~nx1"=="ffmpeg.7z" (7za\x!arch!\7za.exe x -aoa -bso0 -o"%~dp1" -spe -y "%~f1" || (call :ERROR_CURL "%~f1" "!url!" & exit /b 4) & del /f /q "%~f1") else (7za\x!arch!\7za.exe x -aoa -bso0 -o"%~dpn1" -spe -y "%~f1" || (call :ERROR_CURL "%~f1" "!url!" & exit /b 4) & del /f /q "%~f1")
set Start_Folder=1
exit /b 0

:CURL_PROXYS
set el=
set cn=
for %%a in (main downloads source) do if not "!url:/%%a/=!"=="!url!" set cn=/%%a/
for %%b in (!git_list!) do if not "%%b"=="!git:*://=!" (
if "%%b"=="bitbucket.org/IllegalServices/illegal_services" set el=%%b/raw
if "%%b"=="git.teknik.io/Illegal-Services/Illegal_Services" set el=%%b/raw/branch
if "%%b"=="github.com/Illegal-Services/Illegal_Services" set el=%%b/raw
if "%%b"=="gitee.com/Illegal-Services/illegal_services" set el=%%b/raw
if "!Language!"=="EN" set t=Downloading
if "!Language!"=="FR" set t=T�l�chargement
cmd /c rem
<nul set /p="!cyan!!t!: !yellow!https://!el!!cn!%~nx2!cyan!"
echo:
Curl\x!arch!\curl.exe --create-dirs -f#kLo "%~1" "https://!el!!cn!%~nx2" && exit /b 0
)
exit /b 1

:ERROR_CURL
if defined IS_Log (
if "!Language!"=="EN" >>"!TMPF!\IS_Log.txt" echo ERROR WHILE DOWNLOADING: "%~2"
if "!Language!"=="FR" >>"!TMPF!\IS_Log.txt" echo ERREURE PENDANT LE TELECHARGEMENT DE: "%~2"
)
if "!Language!"=="EN" set t=ERROR WHILE DOWNLOADING
if "!Language!"=="FR" set t=ERREURE PENDANT LE TELECHARGEMENT DE
echo !red!!t!: !yellow!"%~2"
if exist "%~f1" del /f /q "%~f1"
exit /b

:ENTER_LOOKUP
if "!Language!"=="EN" set t=Enter the %1 to track
if "!Language!"=="FR" set t=Entrer l'%1 � tracker
%showcursor%
set x=
set /p "x=!grey!!t!: !yellow!"
%hidecursor%
if "%1"=="IP" (call :CHECK_IP x || exit /b 1) else call :CHECK_URL x IP/URL || exit /b 1
if "!4!"=="!yellow!4 !checked!" start "" "https://check-host.net/ip-info?host=!x!" && cmdwiz.exe delay 1500
if "!5!"=="!yellow!5 !checked!" start "" "https://dnschecker.org/ip-location.php?ip=!x!" && cmdwiz.exe delay 1500
if "!6!"=="!yellow!6 !checked!" start "" "https://www.iplocation.net/ip-lookup" && cmdwiz.exe delay 1500
if "!7!"=="!yellow!7 !checked!" start "" "https://www.ip-tracker.org/locator/ip-lookup.php?ip=!x!" && cmdwiz.exe delay 1500
if "!8!"=="!yellow!8 !checked!" start "" "https://whatismyipaddress.com/ip/!x!"
exit /b 0

:IP_DETECTOR
set height=4
for /f "delims=" %%a in ('Curl\x!arch!\curl.exe -fkLs "https://ipinfo.io/!x!/json" ^| findstr /vc:"{" /c:"}" /c:"ipinfo.io/missingauth"') do (
set /a height+=1
mode 68,!height!
set "data=%%a"
set "data=!data:"=!"
set "data=!data:ip:=IPv4     :!"
set "data=!data:hostname:=Hostname :!"
set "data=!data:anycast:=Anycast  :!"
set "data=!data:city:=City     :!"
set "data=!data:region:=Region   :!"
set "data=!data:country:=Country  :!"
set "data=!data:loc:=Location :!"
set "data=!data:org:=ORG      :!"
set "data=!data:postal:=Postal   :!"
set "data=!data:timezone:=Timezone :!"
set "data=!data:bogon:=Bogon    :!"
set "data=!data:true=True!"
set "data=!data:false=False!"
if "!data:~-1!"=="," set "data=!data:~,-1!"
echo   !data!
)>>"!TMPF!\IS_Log.txt"
exit /b

:URL_DETECTOR
for /f "delims=/" %%a in ("!x:*://=!") do set "x=%%a"
title Looking up ^> !x!
set height=4
for /f "tokens=2delims=</" %%a in ('Curl\x!arch!\curl.exe -fkLs "http://ip-api.com/xml/!x!?fields=8192" ^| findstr /vc:"<?xml version="') do (
set /a height+=1
mode 68,!height!
set "data=%%a"
set "data=!data:query>=IP v4/v6  : !"
echo     !data!
)>>"!TMPF!\IS_Log.txt"
for /f "delims=" %%a in ('Curl\x!arch!\curl.exe -fkLs "http://ip-api.com/xml/!x!?fields=5775161" ^| findstr /vc:"<?xml version=" /c:"query>"') do (
set /a height+=1
mode 68,!height!
set "data=%%a"
set "data=!data:<continent>=Continent : !"
set "data=!data:<country>=Country   : !"
set "data=!data:<regionName>=Region    : !"
set "data=!data:<city>=City      : !"
set "data=!data:<district>=District  : !"
set "data=!data:<zip>=Zip       : !"
set "data=!data:<timezone>=Timezone  : !"
set "data=!data:<isp>=ISP       : !"
set "data=!data:<org>=ORG       : !"
set "data=!data:<as>=AS        : !"
set "data=!data:<asname>=ASName    : !"
set "data=!data:<reverse>=Reverse   : !"
for /f "delims=</" %%a in ("!data!") do echo   %%a
)>>"!TMPF!\IS_Log.txt"
exit /b

:PROXY_DETECTOR
for /f "delims=" %%a in ('Curl\x!arch!\curl.exe -fkLs "https://proxycheck.io/v2/!x!?vpn=1&port=1" ^| findstr /ic:"proxy" /c:"type"') do (
set /a height+=1
mode 68,!height!
set "data=%%a"
set "data=!data:   = !"
set "data=!data:"=!"
set "data=!data:,=!"
set "data=!data:type:=Type     :!"
set "data=!data:proxy:=Proxy    :!"
set "data=!data:no=False!"
set "data=!data:yes=True!"
set "data=!data:message:=Message  :!"
echo !data!
)>>"!TMPF!\IS_Log.txt"
exit /b

:VPN_DETECTOR
for /f "tokens=2delims=</" %%a in ('Curl\x!arch!\curl.exe -fkLs "http://ip-api.com/xml/!x!?fields=16973824" ^| findstr /vc:"<?xml version="') do (
set /a height+=1
mode 68,!height!
set "data=%%a"
set "data=!data:mobile>=Mobile (cellular) connection      : !"
set "data=!data:proxy>=Proxy, VPN or Tor exit address    : !"
set "data=!data:hosting>=Hosting, colocated or data center : !"
set "data=!data:true=True!"
set "data=!data:false=False!"
echo     !data!
)>>"!TMPF!\IS_Log.txt"
exit /b

:IS_SEARCH
echo !cyan!
if "!Language!"=="EN" set t=What do you want to search for
if "!Language!"=="FR" set t=Que voulez-vous rechercher
%showcursor%
set x=
set /p "x=!t! ? !yellow!"
%hidecursor%
call :CHOOSE back && exit /b
if defined x start "" "https://cse.google.com/cse?q=!x!&cx=%1" && exit /b
echo !cyan!
call :ERRORMESSAGE
exit /b

:INSTALL_FILE
if "%1"=="VLC" if "!arch!"=="64" (set url=https://get.videolan.org/vlc/3.0.16/win64/vlc-3.0.16-win64.exe) else set url=https://get.videolan.org/vlc/3.0.16/win32/vlc-3.0.16-win32.exe
if "%1"=="qBittorent" if "!arch!"=="64" (set url=https://downloads.sourceforge.net/project/qbittorrent/qbittorrent-win32/qbittorrent-4.3.8/qbittorrent_4.3.8_x64_setup.exe) else set url=https://downloads.sourceforge.net/project/qbittorrent/qbittorrent-win32/qbittorrent-4.3.8/qbittorrent_4.3.8_setup.exe
for %%a in (!url!) do set filename=%%~nxa
call :CURL "!TMPF!\!filename!" "!url!" || (call :ERROR_INTERNET & exit /b)
call :START_DOWNLOADED_FILE !filename!
exit /b


:CHECK_PORT
if defined %1 if "!%1!"=="!%1:..=!" if !%1! geq 0 if !%1! leq 65535 exit /b 0
call :ERRORMESSAGE %1 "un port" port
exit /b 1

:CHECK_URL
for /f "tokens=1-4delims=." %%a in ("!%1!") do call :CHECKBETWEEN0AND255 %%a && call :CHECKBETWEEN0AND255 %%b && call :CHECKBETWEEN0AND255 %%c && call :CHECKBETWEEN0AND255 %%d && call :CHECK_IP %1
call :_CHECK_URL %1 || (call :ERRORMESSAGE %1 "une URL" URL & exit /b 1)
exit /b 0

:_CHECK_URL
<nul set /p="!%1!" | >nul findstr [A-Z0-9] || exit /b 1
if defined %1 if not "!%1:~,1!"=="." if not "!%1:~-1!"=="." if not "!%1!"=="!%1:~,3!" if not "!%1!"=="!%1:.=!" if "!%1!"=="!%1:..=!" exit /b 0
exit /b 1

:CHECK_IP
call :_CHECK_IP %1 || (call :ERRORMESSAGE %1 "une IP" IP & exit /b 1)
exit /b 0

:_CHECK_IP
if not defined %1 exit /b 1
if "!%1!"=="!%1:~,6!" exit /b 1
if not "!%1!"=="!%1:..=!" exit /b 1
for /f "tokens=1-5delims=." %%a in ("!%1!") do (
if not "%%e"=="" exit /b 1
call :CHECKBETWEEN0AND255 %%a || exit /b 1
call :CHECKBETWEEN0AND255 %%b || exit /b 1
call :CHECKBETWEEN0AND255 %%c || exit /b 1
call :CHECKBETWEEN0AND255 %%d || exit /b 1
)
exit /b 0

:CHECKBETWEEN0AND255
if "%~1"=="" exit /b 1
for /f "delims=1234567890" %%a in ("%~1") do exit /b 1
if %~1 lss 0 exit /b 1
if %~1 gtr 255 exit /b 1
exit /b 0

:CHECK_SETTINGS
for %%a in (LANGUAGE USERNAME YOUTUBEDLPRIORITY PORTPRIORITY BACKGROUNDBORDERTRANSPARENCY BACKGROUNDDISABLED BACKGROUNDTRANSPARENCY BACKGROUNDWALLPAPER FIRSTLAUNCH VOICEASSISTANT VOICEASSISTANTCHOICE YOUTUBEDLP YOUTUBEDLOUTPUTDIRECTORY YOUTUBEDLGEOBYPASS DEVELOPERMODE) do call :CHECK_%%a
exit /b

:APPLY_SETTINGS
for %%a in (BACKGROUNDBORDERTRANSPARENCY BACKGROUNDDISABLED BACKGROUNDTRANSPARENCY BACKGROUNDWALLPAPER) do call :CHECK_%%a
if "!BackgroundDisabled!"=="0" if defined BackgroundWallpaper cmdbkg.exe Backgrounds\background-!BackgroundWallpaper!.jpg!BackgroundBorderTransparency!
if "!BackgroundDisabled!"=="1" cmdbkg.exe
cmdwiz.exe delay 500
if defined BackgroundTransparency cmdwiz.exe setwindowtransparency !BackgroundTransparency!
exit /b

:CHECK_LANGUAGE
set Language=
for /f "tokens=3" %%a in ('2^>nul reg query "!IS_Reg!" /v "Language"') do set "Language=%%~a"
if not "!Language!"=="FR" if not "!Language!"=="EN" (
call :ERROR_REGEDIT Language !Language!
for /f "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Nls\Language" /v "InstallLanguage"') do if "%%a"=="040C" (>nul reg add "!IS_Reg!" /v "Language" /t REG_SZ /d FR /f) else >nul reg add "!IS_Reg!" /v "Language" /t REG_SZ /d EN /f
goto :CHECK_LANGUAGE
)
set SPEECH_FR=
if "!Language!"=="FR" if exist "!windir!\Speech_OneCore\Engines\TTS\fr-FR" 2>nul reg query "HKCU\SOFTWARE\Microsoft\Speech\Voices" /v "DefaultTokenId" | >nul findstr /ic:"FR-FR" /c:"frFR" /c:"ZIRA" && (set SPEECH_FR=1) || set SPEECH_FR=
::2>nul reg query "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Voices\Tokens" | >nul findstr /ic:"FR-FR" /c:"frFR"
::2>nul reg query "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\TextToSpeech" /v "Voice" | >nul findstr /ic:"FR-FR" /c:"frFR"
exit /b

:CHECK_USERNAME
set IS_USERNAME=
for /f "tokens=2*" %%a in ('2^>nul reg query "!IS_Reg!" /v "Username"') do set "IS_USERNAME=%%~b"
if "!IS_USERNAME:~20!"=="" exit /b
call :ERROR_REGEDIT Username "!IS_USERNAME!"
>nul reg add "!IS_Reg!" /v "Username" /t REG_SZ /d "!USERNAME:~,20!" /f
goto :CHECK_USERNAME

:CHECK_PROXY
set Proxy=
for /f "tokens=2*" %%a in ('2^>nul reg query "!IS_Reg!" /v "Proxy"') do set "Proxy=%%~b"
if defined Proxy (
for %%a in (!git_list!) do if "!Proxy:*://=!"=="%%a" exit /b
call :ERROR_REGEDIT Proxy !Proxy!
)
>nul 2>&1 reg delete "!IS_Reg!" /v "Proxy" /f
exit /b

:CHECK_YOUTUBEDLPRIORITY
set YouTubeDLPriority=
for /f "tokens=3" %%a in ('2^>nul reg query "!IS_Reg!" /v "YouTubeDLPriority"') do set "YouTubeDLPriority=%%~a"
if not "!YouTubeDLPriority!"=="REALTIME" if not "!YouTubeDLPriority!"=="HIGH" if not "!YouTubeDLPriority!"=="ABOVENORMAL" if not "!YouTubeDLPriority!"=="NORMAL" if not "!YouTubeDLPriority!"=="BELOWNORMAL" if not "!YouTubeDLPriority!"=="LOW" (
call :ERROR_REGEDIT YouTubeDLPriority !YouTubeDLPriority!
>nul reg add "!IS_Reg!" /v "YouTubeDLPriority" /t REG_SZ /d NORMAL /f
goto :CHECK_YOUTUBEDLPRIORITY
)
set YouTubeDLPriority=/!YouTubeDLPriority!
exit /b

:CHECK_PORTPRIORITY
set PortPriority=
for /f "tokens=3" %%a in ('2^>nul reg query "!IS_Reg!" /v "PortPriority"') do set "PortPriority=%%~a"
if not "!PortPriority!"=="REALTIME" if not "!PortPriority!"=="HIGH" if not "!PortPriority!"=="ABOVENORMAL" if not "!PortPriority!"=="NORMAL" if not "!PortPriority!"=="BELOWNORMAL" if not "!PortPriority!"=="LOW" (
call :ERROR_REGEDIT PortPriority !PortPriority!
>nul reg add "!IS_Reg!" /v "PortPriority" /t REG_SZ /d NORMAL /f
goto :CHECK_PORTPRIORITY
)
set PortPriority=/!PortPriority!
exit /b

:CHECK_BACKGROUNDBORDERTRANSPARENCY
set BackgroundBorderTransparencyValue=
for /f "tokens=3" %%a in ('2^>nul reg query "!IS_Reg!" /v "BackgroundBorderTransparency"') do set /a BackgroundBorderTransparencyValue=%%a
if "!BackgroundBorderTransparencyValue!"=="1" set "BackgroundBorderTransparency=" & exit /b
if "!BackgroundBorderTransparencyValue!"=="0" set "BackgroundBorderTransparency= /b" & exit /b
call :ERROR_REGEDIT BackgroundBorderTransparency !BackgroundBorderTransparencyValue!
>nul reg add "!IS_Reg!" /v "BackgroundBorderTransparency" /t REG_DWORD /d 1 /f
goto :CHECK_BACKGROUNDBORDERTRANSPARENCY

:CHECK_BACKGROUNDDISABLED
set BackgroundDisabled=
for /f "tokens=3" %%a in ('2^>nul reg query "!IS_Reg!" /v "BackgroundDisabled"') do set /a BackgroundDisabled=%%a
for %%a in (0 1) do if "!BackgroundDisabled!"=="%%a" exit /b
call :ERROR_REGEDIT BackgroundDisabled !BackgroundDisabled!
>nul reg add "!IS_Reg!" /v "BackgroundDisabled" /t REG_DWORD /d 0 /f
goto :CHECK_BACKGROUNDDISABLED

:CHECK_BACKGROUNDTRANSPARENCY
set BackgroundTransparency=
for /f "tokens=3" %%a in ('2^>nul reg query "!IS_Reg!" /v "BackgroundTransparency"') do set /a BackgroundTransparency=%%a
if !BackgroundTransparency! geq 1 if !BackgroundTransparency! leq 100 exit /b
call :ERROR_REGEDIT BackgroundTransparency !BackgroundTransparency!
>nul reg add "!IS_Reg!" /v "BackgroundTransparency" /t REG_DWORD /d 10 /f
goto :CHECK_BACKGROUNDTRANSPARENCY

:CHECK_BACKGROUNDWALLPAPER
set BackgroundWallpaper=
for /f "tokens=3" %%a in ('2^>nul reg query "!IS_Reg!" /v "BackgroundWallpaper"') do set /a BackgroundWallpaper=%%a
if !BackgroundWallpaper! geq 1 if !BackgroundWallpaper! leq 12 exit /b
call :ERROR_REGEDIT BackgroundWallpaper !BackgroundWallpaper!
>nul reg add "!IS_Reg!" /v "BackgroundWallpaper" /t REG_DWORD /d 6 /f
goto :CHECK_BACKGROUNDWALLPAPER

:CHECK_FIRSTLAUNCH
set FirstLaunch=
for /f "tokens=3" %%a in ('2^>nul reg query "!IS_Reg!" /v "FirstLaunch"') do set /a FirstLaunch=%%a
for %%a in (0 1) do if "!FirstLaunch!"=="%%a" exit /b
call :ERROR_REGEDIT FirstLaunch !FirstLaunch!
>nul reg add "!IS_Reg!" /v "FirstLaunch" /t REG_DWORD /d 1 /f
goto :CHECK_FIRSTLAUNCH

:CHECK_VOICEASSISTANT
set VoiceAssistant=
for /f "tokens=3" %%a in ('2^>nul reg query "!IS_Reg!" /v "VoiceAssistant"') do set /a VoiceAssistant=%%a
for %%a in (0 1) do if "!VoiceAssistant!"=="%%a" exit /b
call :ERROR_REGEDIT VoiceAssistant !VoiceAssistant!
>nul reg add "!IS_Reg!" /v "VoiceAssistant" /t REG_DWORD /d 0 /f
goto :CHECK_VOICEASSISTANT

:CHECK_VOICEASSISTANTCHOICE
set VoiceAssistantChoice=
for /f "tokens=3" %%a in ('2^>nul reg query "!IS_Reg!" /v "VoiceAssistantChoice"') do set /a VoiceAssistantChoice=%%a
for %%a in (0 1) do if "!VoiceAssistantChoice!"=="%%a" exit /b
call :ERROR_REGEDIT VoiceAssistantChoice !VoiceAssistantChoice!
>nul reg add "!IS_Reg!" /v "VoiceAssistantChoice" /t REG_DWORD /d 1 /f
goto :CHECK_VOICEASSISTANTCHOICE

:CHECK_YOUTUBEDLP
set YouTubeDLP=
for /f "tokens=3" %%a in ('2^>nul reg query "!IS_Reg!" /v "YouTubeDLP"') do set /a YouTubeDLP=%%a
for %%a in (0 1) do if "!YouTubeDLP!"=="%%a" exit /b
call :ERROR_REGEDIT YouTubeDLP !YouTubeDLP!
>nul reg add "!IS_Reg!" /v "YouTubeDLP" /t REG_DWORD /d 0 /f
goto :CHECK_YOUTUBEDLP

:CHECK_YOUTUBEDLOUTPUTDIRECTORY
set YouTubeDLOutputDirectory=
for /f "tokens=2*" %%a in ('2^>nul reg query "!IS_Reg!" /v "YouTubeDLOutputDirectory"') do set "YouTubeDLOutputDirectory=%%~fb"
if defined YouTubeDLOutputDirectory exit /b
call :ERROR_REGEDIT YouTubeDLOutputDirectory "!YouTubeDLOutputDirectory!"
for /f "tokens=3*" %%a in ('reg query "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "My Music"') do >nul reg add "!IS_Reg!" /v "YouTubeDLOutputDirectory" /t REG_SZ /d "%%b\YouTube Downloader" /f
goto :CHECK_YOUTUBEDLOUTPUTDIRECTORY

:CHECK_YOUTUBEDLGEOBYPASS
set YouTubeDLGeoBypass=
for /f "tokens=3" %%a in ('2^>nul reg query "!IS_Reg!" /v "YouTubeDLGeoBypass"') do set /a YouTubeDLGeoBypass=%%a
for %%a in (0 1) do if "!YouTubeDLGeoBypass!"=="%%a" exit /b
call :ERROR_REGEDIT YouTubeDLGeoBypass !YouTubeDLGeoBypass!
>nul reg add "!IS_Reg!" /v "YouTubeDLGeoBypass" /t REG_DWORD /d 0 /f
goto :CHECK_YOUTUBEDLGEOBYPASS

:CHECK_DEVELOPERMODE
set DeveloperKey=
for /f "tokens=3" %%a in ('2^>nul reg query "!IS_Reg!" /v "DeveloperMode"') do set /a DeveloperKey=%%a
set /a c1=DeveloperKey%%12312
if "!c1!"=="826" (
set /a c2=DeveloperKey%%17
if "!c2!"=="6" set DeveloperMode=1
)
if not "!DeveloperMode!"=="1" (
>nul reg add "!IS_Reg!" /v "DeveloperMode" /t REG_DWORD /d 0 /f
set DeveloperMode=0
)
for %%a in (DeveloperKey c1 c2) do set %%a=
if not "!DeveloperMode!"=="0" if not "!DeveloperMode!"=="1" (
call :ERROR_REGEDIT DeveloperMode !DeveloperMode!
>nul reg add "!IS_Reg!" /v "DeveloperMode" /t REG_DWORD /d 0 /f
goto :CHECK_DEVELOPERMODE
)
exit /b

:ERROR_REGEDIT
>nul 2>&1 reg query "!IS_Reg!" /v "%1" && (
if "!Language!"=="FR" set t="Une erreur inattendue est survenue." "Debug: '!IS_Reg!\%1=%~2'" "R�initialisation du param�tre '%1' � la valeur par d�faut."
if "!Language!"=="EN" set t="An unexpected error has occurred." "Debug: '!IS_Reg!\%1=%~2'" "Resetting '%1' setting to default value."
call :MSGBOX 3 !t! 69680 "Illegal Services Checker"
)
exit /b

:SCALE
cls
mode %1,%2
set /a width=%1, height=%2
exit /b

:CLEAR
set /a c1=%1, c2=%2
for /l %%a in (!c1!,1,!c2!) do set "%%a=!yellow!%%a !unchecked!"
exit /b

:PROMPT
%showcursor%
set /a "_sp=width/2"
set x=
set /p "x=!yellow![!_sp!C"
%hidecursor%
exit /b

:CHOOSE
if not defined x exit /b 1
set "c=%1"
if /i "!c:~,1!"=="!x!" exit /b 0
if /i "!c:~,2!"=="!x:~,2!" exit /b 0
exit /b 1

:WEBSITECHECK
if not defined x exit /b 1
for /l %%a in (!c1!,1,!c2!) do if "!x!"=="%%a" if "!%%a!"=="!yellow!%%a !unchecked!" (set "%%a=!yellow!%%a !checked!" & exit /b 0) else set "%%a=!yellow!%%a !unchecked!" & exit /b 0
exit /b 1

:WEBSITESTART
if defined x exit /b 1
set _el=1
set el=
set cn=
for /l %%a in (!c1!,1,!c2!) do if "!%%a!"=="!yellow!%%a !checked!" (
set s=s
set /a cn=c1-1
for %%b in (!db!) do (
set /a cn+=1
if "!cn!"=="%%a" (
if "%%~b"=="Dox Tool v2" (set el=1) else if "%%~b"=="Windows ISO Downloader" (set el=2) else (
set "url=%%b"
if "!url:~,1!"=="`" set s=
start "" "http!s!://!url:*`=!" && cmdwiz.exe delay 1500
)
set _el=0
)
)
)
if "!el!"=="1" call :START_DOXTOOLV2
if "!el!"=="2" call :START_WINDOWSISODOWNLOADER
exit /b !_el!

:ERRORMESSAGE
call :ROSE "Error Choice"
if "%~1"=="" (
if "!Language!"=="EN" set "t=ERROR: !grey!"!yellow!!x!!grey!" is not a valid choice"
if "!Language!"=="FR" set "t=ERREUR: !grey!"!yellow!!x!!grey!" n'est pas un choix valide"
) else (
if "!Language!"=="EN" set "t=ERROR: !grey!"!yellow!!%1!!grey!" is not a valid %~3"
if "!Language!"=="FR" set "t=ERREUR: !grey!"!yellow!!%1!!grey!" n'est pas %~2 valide"
)
set t=!red!!t!...
call :DRAW_CENTER_ERROR t 20
>nul timeout /t 3
exit /b

:START_DOXTOOLV2
for %%a in (Newtonsoft.Json.dll "Dox Tool V2.exe") do if not exist "Portable_Apps\DoxToolV2\%%~a" call :CURL "Portable_Apps\DoxToolV2.7z" "`git_raw_downloads`/DoxToolV2.7z" || (call :ERROR_INTERNET & exit /b)
pushd "Portable_Apps\DoxToolV2"
start "" "Dox Tool V2.exe" && (
if "!Language!"=="EN" set t="Only 'Username Search' & 'Extra Tools' are working." "The tool has not been updated since 05-02-2016."
if "!Language!"=="FR" set t="Seules 'Username Search' & 'Extra Tools' fonctionnent." "L'outil n'a pas �t� mis � jour depuis le 05-02-2016."
call :MSGBOX 2 !t! 69696 "Illegal Services Checker"
)
popd
exit /b

:START_WINDOWSISODOWNLOADER
call :CURL "Portable_Apps\Windows-ISO-Downloader.exe" "https://heidoc.net/php/Windows-ISO-Downloader.exe" || (call :ERROR_INTERNET & exit /b)
pushd "Portable_Apps"
start Windows-ISO-Downloader.exe
popd
exit /b

:PRIORITY_PROCESS
echo:
echo !yellow![R]!cyan! ^> Use REALTIME priority class.
echo !yellow![H]!cyan! ^> Use HIGH priority class.
echo !yellow![A]!cyan! ^> Use ABOVENORMAL priority class.
echo !yellow![N]!cyan! ^> Use NORMAL priority class.
echo !yellow![B]!cyan! ^> Use BELOWNORMAL priority class.
echo !yellow![L]!cyan! ^> Use LOW priority class.
echo:
%showcursor%
>nul choice /n /c RHANBL
if "!errorlevel!"=="1" set %1=REALTIME
if "!errorlevel!"=="2" set %1=HIGH
if "!errorlevel!"=="3" set %1=ABOVENORMAL
if "!errorlevel!"=="4" set %1=NORMAL
if "!errorlevel!"=="5" set %1=BELOWNORMAL
if "!errorlevel!"=="6" set %1=LOW
exit /b

:GET_VERSION
call :CURL_RAW JB0xvJRG lastversion
if defined lastversion (
if "!version:~1,7!" geq "!lastversion:~1,7!" exit /b 0
if "!version:~1,3!" lss "!lastversion:~1,3!" exit /b 1
if "!version:~1,7!" lss "!lastversion:~1,7!" exit /b 2
) else (
call :ROSE "Error Internet"
if "!Language!"=="EN" set t="Checking the latest version has failed." "Can't check the latest version." "Check your current Internet settings and try again."
if "!Language!"=="FR" set t="La v�rification de la derni�re version a �chou�." "Impossible de v�rifier la derni�re version." "V�rifiez vos param�tres Internet actuels et r�essayez."
call :MSGBOX 3 !t! 69680 "Illegal Services Checker"
)
exit /b 3

:DRAW_LOGO
echo     �ۻ�ۻ     �ۻ     ������ۻ �����ۻ  ����ۻ �ۻ         ������ۻ������ۻ�����ۻ �ۻ   �ۻ�ۻ �����ۻ������ۻ������ۻ
echo     �ۺ�ۺ     �ۺ     ������ͼ������ͼ ������ۻ�ۺ         ������ͼ������ͼ������ۻ�ۺ   �ۺ�ۺ������ͼ������ͼ������ͼ
echo     �ۺ�ۺ     �ۺ     ����ۻ  �ۺ  ��ۻ������ۺ�ۺ         ������ۻ����ۻ  ������ɼ�ۺ   �ۺ�ۺ�ۺ     ����ۻ  ������ۻ
echo     �ۺ�ۺ     �ۺ     ����ͼ  �ۺ   �ۺ������ۺ�ۺ         ������ۺ����ͼ  ������ۻ��ۻ ��ɼ�ۺ�ۺ     ����ͼ  ������ۺ
echo     �ۺ������ۻ������ۻ������ۻ�������ɼ�ۺ  �ۺ������ۻ    ������ۺ������ۻ�ۺ  �ۺ �����ɼ �ۺ������ۻ������ۻ������ۺ
echo     �ͼ������ͼ������ͼ������ͼ �����ͼ �ͼ  �ͼ������ͼ    ������ͼ������ͼ�ͼ  �ͼ  ���ͼ  �ͼ �����ͼ������ͼ������ͼ
exit /b

:DRAW_CENTER_ERROR
call :STRLEN "!%1!"
if not "%2"=="" set /a "len-=%2"
if !len! lss !width! (set /a "_sp=(width-len)/2") else set _sp=
<nul set /p="[!_sp!C!%1!"
if not "%3"=="1" echo:
exit /b

:DRAW_CENTER
call :STRLEN "%~1"
if not "%2"=="" set /a "len-=%2"
if !len! lss !width! (set /a "_sp=(width-len)/2") else set _sp=
<nul set /p="[!_sp!C%~1"
if not "%3"=="1" echo:
exit /b

:DRAW_CUSTOM_CENTER
call :STRLEN "%~2"
if not "%3"=="" set /a "len-=%3"
set /a "_sp=(%1-len)/2"
<nul set /p="[!_sp!C%~2"
echo:
exit /b

:STRLEN
::https://www.dostips.com/DtTipsStringOperations.php#Function.strLen
set "str=a%~1"
set len=0
for /l %%a in (12,-1,0) do (
set /a "len|=1<<%%a"
for %%b in (!len!) do if "!str:~%%b,1!"=="" set /a "len&=~1<<%%a"
)
exit /b

:READ_IPLOOKUP
if exist "!ISOutputDirectory!\IP Lookup Saved.txt" (start "" "!ISOutputDirectory!\IP Lookup Saved.txt") else (
if "!Language!"=="EN" set t="IP Lookup list not found." "You must first save a Lookup to be able to read it."
if "!Language!"=="FR" set t="Liste d'IP Lookup non trouv�e." "Vous devez d'abord enregistrer une Lookup pour pouvoir la lire."
call :MSGBOX 2 !t! 69680 "Illegal Services Checker"
)
exit /b

:DELETE_IPLOOKUP
if exist "!ISOutputDirectory!\IP Lookup Saved.txt" (
del /f /q "!ISOutputDirectory!\IP Lookup Saved.txt" && (
if "!Language!"=="EN" set t="IP Lookup list successfully deleted."
if "!Language!"=="FR" set t="La liste d'IP Lookup a bien �t� supprim�e."
call :MSGBOX 1 !t! 69696 "Illegal Services Checker"
)
) else (
if "!Language!"=="EN" set t="IP Lookup list not found." "You must first save a Lookup to be able to delete it."
if "!Language!"=="FR" set t="Liste d'IP Lookup non trouv�e." "Vous devez d'abord enregistrer une Lookup pour pouvoir la supprimer."
call :MSGBOX 2 !t! 69680 "Illegal Services Checker"
)
exit /b

:ERROR_INTERNET
if "!errorlevel!"=="1" (
call :ROSE "Error Internet"
if "!Language!"=="EN" set t="Your Internet access appears to be offline." "You must activate Internet and try again."
if "!Language!"=="FR" set t="Votre acc�s Internet semble �tre hors ligne." "Veuillez activer Internet et r�essayer."
)
if "!errorlevel!"=="2" (
call :ROSE "Error Remote Host"
if "!Language!"=="EN" set t="The remote host appears to be offline." "Downloading '!url!' impossible."
if "!Language!"=="FR" set t="L'h�te distant semble �tre hors ligne." "T�l�chargement de '!url!' impossible."
)
if "!errorlevel!"=="3" (
call :ROSE "Error Git Proxy Backup"
if "!Language!"=="EN" set t="The Git proxy backup server is running. You cannot download external files from it." "Downloading '!url!' impossible."
if "!Language!"=="FR" set t="Le serveur proxy Git de secours est en marche. Vous ne pouvez pas t�l�charger de fichiers externes � partir de celui-ci." "T�l�chargement de '!url!' impossible."
)
if "!errorlevel!"=="4" (
call :ROSE "Error Git Proxy"
if "!Language!"=="EN" set t="IS Git proxy: '!git!' appears to be offline." "Downloading '!url!' impossible." "Try to restart Illegal Services or join our Telegram groups for more updates."
if "!Language!"=="FR" set t="IS Git proxy: '!git!' semble �tre hors ligne." "T�l�chargement de '!url!' impossible." "Essayez de red�marrer Illegal Services ou rejoignez nos groupes Telegram pour plus de mises � jour."
call :MSGBOX 3 !t! 69680 "Illegal Services Checker"
exit /b
)
call :MSGBOX 2 !t! 69680 "Illegal Services Checker"
exit /b

:PROXY
call :CHECK_INTERNET || (call :PROXY_DOWN & exit /b 1)
call :CHECK_PROXY
if defined Proxy for /f %%a in ("!Proxy:*://=!") do call :_PROXY %%a && exit /b 0
for %%a in (!git_list!) do call :_PROXY %%a && exit /b 0
if defined git_backup (exit /b 3) else set "git_backup=backup "
call :PROXY_DOWN
call :CURL_RAW 1ARL0img git
call :CURL_RAW urudZjdg git_build
call :CURL_RAW c5nbugAf git_changelog
call :CURL_RAW ThrdeC97 git_release
if "!Language!"=="EN" set t="Illegal Services cannot connect to its Git proxy server." "The Git proxy backup server is running and only updates for Illegal Services can be performed."
if "!Language!"=="FR" set t="Illegal Services ne peut pas se connecter � son serveur proxy Git." "Le serveur proxy Git de secours est en marche et seules les mises � jour d'Illegal Services peuvent �tre effectu�es."
call :MSGBOX 2 !t! 69648 "Illegal Services Checker"
exit /b 2

:_PROXY
for /f %%a in ('Curl\x!arch!\curl.exe -fIksw "%%{response_code}" -o NUL "https://%1"') do if "%%a"=="200" (
if "%1"=="bitbucket.org/IllegalServices/illegal_services" call :__PROXY %1 raw src/source/ & exit /b 0
if "%1"=="git.teknik.io/Illegal-Services/Illegal_Services" call :__PROXY %1 raw/branch src/branch/source & exit /b 0
if "%1"=="github.com/Illegal-Services/Illegal_Services" call :__PROXY %1 raw tree/source & exit /b 0
if "%1"=="gitee.com/Illegal-Services/illegal_services" call :__PROXY %1 raw tree/source/ & exit /b 0
)
exit /b 1

:__PROXY
set git=https://%1
set git_raw_main=!git!/%2/main
set git_raw_downloads=!git!/%2/downloads
set git_raw_source=!git!/%2/source
set git_build=!git_raw_main!/Illegal_Services.exe
set git_changelog=!git_raw_main!/ChangeLog.txt
set git_release=!git_raw_downloads!/IS.Setup.exe
set git_source=!git!/%3
>nul reg add "!IS_Reg!" /v "Proxy" /t REG_SZ /d "!git!" /f
exit /b

:PROXY_DOWN
for %%a in (
git
git_raw_main
git_raw_downloads
git_raw_source
git_build
git_changelog
git_release
git_source
) do set %%a=404 Git proxy not found
exit /b

:ERROR_WINDOWS_VERSION
if "!Language!"=="EN" set t=Your Windows version is not compatible with that feature
if "!Language!"=="FR" set t=Votre version de Windows n'est pas compatible avec cette fonctionnalit�
call :MSGBOX 1 "!t!." 69648 "Illegal Services Checker"
exit /b

:CURL_RAW
for /f "delims=" %%a in ('Curl\x!arch!\curl.exe -fkLs "https://pastebin.com/raw/%1"') do set %2=%%a
exit /b

:OPEN_FOLDER
if exist "%~1" (start "" "%~1") else (
if "!Language!"=="EN" set t="Folder '%~1' not found." "You must first download to be able to open it."
if "!Language!"=="FR" set t="Dossier '%~1' non trouv�e." "Vous devez d'abord t�l�charger pour pouvoir ouvrir le dossier."
call :MSGBOX 2 !t! 69680 "Illegal Services Checker"
)
exit /b

:START_DOWNLOADED_FILE
pushd "!TMPF!"
if "!Language!"=="EN" echo Please complete "!yellow!%1!cyan!" installation in the window that appeared...
if "!Language!"=="FR" echo Veuillez terminer l'installation de "!yellow!%1!cyan!" dans la fen�tre qui est apparue...
echo:
start /w %1
>nul timeout /t 0 /nobreak
del /f /q %1
popd
exit /b

:SHOW_WINDOW
for /f "tokens=2delims=," %%a in ('tasklist /v /fo csv /fi "imagename eq !IS_Process!" ^| findstr /ic:"%~1"') do (
set el=%%a
set el=!el:"=!
cmdwiz.exe showwindow value:1 /p:!el:"=!
cmdwiz.exe showwindow top /p:!el:"=!
exit /b 0
)
exit /b 1

:MISSING_FILE
if "!Language!"=="EN" set t=The file "!IS_Dir!%1" is missing, trying to download it
if "!Language!"=="FR" set t=Le fichier "!IS_Dir!%1" est manquant, tentative de t�l�chargement
echo !red!!t!...!grey!
exit /b

:ERROR_FATAL
if "!Language!"=="EN" set t="Illegal Services can't start because '!IS_Dir!%1' is missing."
if "!Language!"=="FR" set t="Illegal Services ne peut pas d�marrer car '!IS_Dir!%1' est manquant."
if "!errorlevel!"=="1" (
if "!Language!"=="EN" set t=!t! "You must activate Internet and try again."
if "!Language!"=="FR" set t=!t! "You must activate Internet and try again."
)
if "!errorlevel!"=="2" (
if "!Language!"=="EN" set t=!t! "IS Git proxy: '!git!' appears to be offline. For more updates visit our Telegram."
if "!Language!"=="FR" set t=!t! "IS Git proxy: '!git!' semble �tre hors ligne. Pour plus de mises � jour, visitez notre Telegram."
set el=1
)
call :MSGBOX 2 !t! 69648 "Illegal Services Checker"
if "!el!"=="1" start https://t.me/illegal_services_forum
exit