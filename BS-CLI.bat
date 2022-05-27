@echo off
title FFmpeg Buttery Smooth CLI (v1.4.0)
color 0B
set inputnumber=1
set islinkcopied=2
set discordcopythingy=1
:firstrun
IF NOT EXIST "BS-CLI-Config.cfg" (
CLS
echo.     
echo                .;;;, .;;;,                   .;;;, .;;;,
echo           .;;;,;;;;;,;;;;;,.;;;,       .;;;.,;;;;;,;;;;;,;;;.
echo          ;;;;xXXxXXxXXxXXxXXx;;;. .,. .;;;xXXxXXxXXxXXxXX;;;;;
echo      .,,.`xXX'             `xXXx,;;;;;,xXXx'            `XXx;;,,.
echo     ;;;;xXX'                  `xXXx;xXXx'                 `XXx;;;;
echo     `;;XX'                       `XXX'                      `XX;;'
echo    ,;;,XX                         `X'                        XX,;;,
echo    ;;;;XX,                                                  ,XX;;;;
echo     ``.;XX,                                                ,XX;,''
echo       ;;;;XX,                                            ,XX;;;;
echo        ```.;XX,                                        ,XX;,'''
echo           ;;;;XX,                                    ,XX;;;;
echo            ```,;XX,                                ,XX;,'''
echo                ;;;;XX,                          ,XX;;;;
echo                 ````,;XX,                    ,XX;, '''
echo                     ;;;;;XX,              ,XX;;;;
echo                      `````,;XX,        ,XX;,''''
echo                           ;;;;;XX,  ,XX;;;;;
echo                            `````;;XX;;'''''
echo                                 `;;;;'
echo.
echo.
if "%discordcopythingy%"=="1" (
timeout 1 >nul
)

echo                     Thanks for downloading BS-CLI!
echo        If you have any problems, please contact us on our discord!
echo.
if "%discordcopythingy%"=="1" (
timeout 1 >nul
)
if "%discordcopythingy%"=="2" (
echo               Discord link was copied, go to the main menu!
) else (
echo          To copy the link to the discord support server, press 1!
)
echo.
if "%discordcopythingy%"=="1" (
timeout 1 >nul
)
echo                      Press 2 to go to the main menu!
echo.
echo.
echo.
echo                                                    by linka, zaphyr, osr2mp4 gang
choice /c 12 /n /m ""

if errorlevel 2 goto main
if errorlevel 1 goto discordlink


:discordlink
CLS
echo|set /p=https://discord.gg/Xx82QQ3|clip
set discordcopythingy=2
goto firstrun
)

:main
CLS
IF NOT EXIST "BS-CLI-Config.cfg" (
    ECHO Creating config file for BS-CLI!
    timeout 2 >nul
)

IF NOT EXIST "BS-CLI-Config.cfg" (
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
)>BS-CLI-Config.cfg

(
set /p botEnable=
set /p botstatus=
set /p statsEnable=
set /p statsStatus=
set /p queueEnable=
set /p queueStatus=
set /p shutdownEnable=
set /p shutdownStatus=
set /p ffmpegBarEnable=
set /p ffmpegBarStatus=
set /p notificationEnable=
set /p notificationStatus=
)<BS-CLI-Config.cfg
CLS
echo.
echo  _____________________________________________________________________
echo "                              _   _                          _       "
echo "                             | | | |                        | |      "
echo "    ___ _ __ ___   ___   ___ | |_| |__      _ __   __ _  ___| | __   "
echo "   / __| '_ ` _ \ / _ \ / _ \| __| '_ \    | '_ \ / _` |/ __| |/ /   "
echo "   \__ \ | | | | | (_) | (_) | |_| | | |   | |_) | (_| | (__|   <    "
echo "   |___/_| |_| |_|\___/ \___/ \__|_| |_|   | .__/ \__,_|\___|_|\_\   "
echo "                                           | |                       "
echo "                                           |_|                       "
echo "_____________________________________________________________________"
echo.
echo Welcome to the Buttery Smooth CLI!
echo.
timeout 1 >nul
echo Please choose an option:
echo 1) Resampling
echo 2) Upscaling
echo.
echo 3) Cut Video
echo 4) Reducing File Size
echo 5) Other settings
echo.
echo 9) Exit program
echo.
echo.
CHOICE /C 123459 /N /M " "

IF ERRORLEVEL 6 GOTO quitprogramfrommenu
IF ERRORLEVEL 5 GOTO othersettings
IF ERRORLEVEL 4 GOTO reducefilesize
IF ERRORLEVEL 3 GOTO cutVideoTimes
IF ERRORLEVEL 2 GOTO upscaling
IF ERRORLEVEL 1 GOTO main2


:othersettings
CLS
IF NOT EXIST "BS-CLI-Config.cfg" (
    ECHO Config file not found, creating one right now!
    timeout 2 >nul
)

IF NOT EXIST "BS-CLI-Config.cfg" (
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
)>BS-CLI-Config.cfg

(
set /p botEnable=
set /p botstatus=
set /p statsEnable=
set /p statsStatus=
set /p queueEnable=
set /p queueStatus=
set /p shutdownEnable=
set /p shutdownStatus=
set /p ffmpegBarEnable=
set /p ffmpegBarStatus=
set /p notificationEnable=
set /p notificationStatus=
)<BS-CLI-Config.cfg


CLS
echo.
echo  _____________________________________________________________________
echo "                              _   _                          _       "
echo "                             | | | |                        | |      "
echo "    ___ _ __ ___   ___   ___ | |_| |__      _ __   __ _  ___| | __   "
echo "   / __| '_ ` _ \ / _ \ / _ \| __| '_ \    | '_ \ / _` |/ __| |/ /   "
echo "   \__ \ | | | | | (_) | (_) | |_| | | |   | |_) | (_| | (__|   <    "
echo "   |___/_| |_| |_|\___/ \___/ \__|_| |_|   | .__/ \__,_|\___|_|\_\   "
echo "                                           | |                       "
echo "                                           |_|                       "
echo "_____________________________________________________________________"
echo.
echo All settings in here are saved in a .cfg config file. (W.I.P.)
echo.
timeout 1 >nul
echo 1) FFmpegNotifier Discord Bot (%botstatus%)
echo 2) FFmpeg process statistics (%statsStatus%)
echo 3) Queue mode (%queueStatus%)
echo 4) Shutdown PC after resampling (%shutdownStatus%)
echo 5) Show ffmpeg progress bar (%ffmpegBarStatus%)
echo.
echo 8) Go to: Page 2 of settings.
echo.
echo.
echo.
echo 9) Go back to Main Menu.
echo.
echo.
CHOICE /C 1234589 /N /M " "

IF ERRORLEVEL 7 GOTO main
IF ERRORLEVEL 6 GOTO page2
IF ERRORLEVEL 5 GOTO ffmpegbarSwitch
IF ERRORLEVEL 4 GOTO shutdownSwitch
IF ERRORLEVEL 3 GOTO queueSwitch
IF ERRORLEVEL 2 GOTO statsSwitch
IF ERRORLEVEL 1 GOTO botSwitch

:page2
CLS
echo.
echo  _____________________________________________________________________
echo "                              _   _                          _       "
echo "                             | | | |                        | |      "
echo "    ___ _ __ ___   ___   ___ | |_| |__      _ __   __ _  ___| | __   "
echo "   / __| '_ ` _ \ / _ \ / _ \| __| '_ \    | '_ \ / _` |/ __| |/ /   "
echo "   \__ \ | | | | | (_) | (_) | |_| | | |   | |_) | (_| | (__|   <    "
echo "   |___/_| |_| |_|\___/ \___/ \__|_| |_|   | .__/ \__,_|\___|_|\_\   "
echo "                                           | |                       "
echo "                                           |_|                       "
echo "_____________________________________________________________________"
echo.
echo [ Other Settings - Page 2 ]
echo.
timeout 1 >nul
echo 1) Process Finish sound (%notificationStatus%)
echo.
echo 2) View different weighting examples
echo 3) View changelogs.
echo 4) Open ETA calculator.
echo.
echo 9) Go back to Page 1.
echo.
echo.
CHOICE /C 12349 /N /M " "

IF ERRORLEVEL 5 GOTO othersettings
IF ERRORLEVEL 4 GOTO etacalculator
IF ERRORLEVEL 3 GOTO changelog
IF ERRORLEVEL 2 GOTO weightingExamples
IF ERRORLEVEL 1 GOTO notificationsSwitch

:etacalculator
CLS
echo.
echo Hello!
echo.
echo Enter ffmpeg speed value but 1000x.
echo (if 0.124, then type 124)
echo (if 0.013, then type 13)
set /p speedvalue=
echo.
CLS
echo.
echo Ok, now uh tell me how long is your input video IN SECONDS
set /p videolength=
echo.
echo ok tysm
echo.
timeout 1 >nul
CLS
echo Here is your math or smthn idk:
set /a MathPT1=1000 / speedvalue
set /a MathPT2=MathPT1 * %videolength%
set /a MathMinutes=MathPT2 / 60
echo.
echo ETA: %MathPT2% seconds
echo      %MathMinutes% minutes
echo.
echo.
echo.
echo press any key to go back to main menu
pause >nul
goto main

:weightingExamples
CLS
echo.
echo.
echo Choosing an option should copy youtube links to your clipboard.
echo (this just may not work idk)
echo.
timeout 1 >nul
echo 1) Equal
echo 2) Descending
echo 3) Not-So Ascending
echo.
echo 9) Go back to main menu.
CHOICE /C 1239 /N /M " "

IF ERRORLEVEL 4 GOTO main
IF ERRORLEVEL 3 echo|set /p=https://www.youtube.com/watch?v=sevAabXs3yg|clip
IF ERRORLEVEL 2 echo|set /p=https://www.youtube.com/watch?v=bl8NIGl5sIM|clip
IF ERRORLEVEL 1 echo|set /p=https://www.youtube.com/watch?v=bl8NIGl5sIM|clip

:changelog
echo. _______________________________________________________
echo "         _                            _                "
echo "        | |                          | |               "
echo "     ___| |__   __ _ _ __   __ _  ___| | ___   __ _    "
echo "    / __| '_ \ / _` | '_ \ / _` |/ _ \ |/ _ \ / _` |   "
echo "   | (__| | | | (_| | | | | (_| |  __/ | (_) | (_| |   "
echo "    \___|_| |_|\__,_|_| |_|\__, |\___|_|\___/ \__, |   "
echo "                            __/ |              __/ |   "
echo "                           |___/              |___/    "
echo "_______________________________________________________"
echo.
echo           --===[FFmpeg BS-CLI v1.2 ]===--
echo - Started using variables instead of hard-coded presets.
echo - Any framerate support on resampling (pls don't torture this .bat file)
echo - Made the whole menu cleaner
echo - Added "Other Settings" in menu
echo - Config system (wtf pro .bat coder)
echo - Show/Hide ffmpeg progress statistics
echo - Discord Bot disable/enable
echo.
echo          --===[FFmpeg BS-CLI v1.3.1 ]===--
echo - Added queue support (may be buggy, pls dont cry)
echo - Added video cutting (useful if you want to test things)
echo - Added File size reducer (beta)
echo - removed herobrine
echo.
echo          --===[FFmpeg BS-CLI v1.3.2 ]===--
echo - Added ffmpeg-progressbar-cli support. More info in 'Other Settings'!
echo - Removed GPU support for resampling since it only made more problems and didn't bring any profits
echo   (resampling tmix filter is CPU only ;c )
echo - Added nice welcome screen if you first run the batch!
echo - Fixed some things
echo - Removed Herobrine.
echo.
echo          --===[FFmpeg BS-CLI v1.3.3 ]===--
echo - Added some warning to make people not cry in support discord about things that are mentioned in pinned messages, fixes etc. 
echo   JUST READ PINNED MESSAGES ON DISCORD PLS
echo - Added ETA Calculator (go to other settings)
echo - Now you have to choose -crf value of your video before resampling.
echo - fixed weighting examples in other settings (now copies to clipboard)
echo - removed pippi and herobrine (theyre a couple now yes)
echo.
echo          --===[FFmpeg BS-CLI v1.3.31 ]===--
echo - Fixed cutting cuz it wasnt even lossless lol, also this made the cutting almost instant instead of waiting lmao (sorry im dumb)
echo.
echo          --===[FFmpeg BS-CLI v1.3.4 ]===--
echo - Added things to upscaling
echo - Added process finish sound (customizable, read in other settings)
echo - maybe something else idk
echo - removed yo mom (herobrine)
echo.
echo          --===[FFmpeg BS-CLI v1.3.5 ]===--
echo - changed some stuff, probs last update ever
echo.
echo          --===[FFmpeg BS-CLI v1.3.6 ]===--
echo - optimization in the resampling
echo - slightly more user friendly
echo.
echo          --===[FFmpeg BS-CLI v1.3.7 ]===--
echo - the color correction now uses a lut and the colorspace filter (just better in general) instead of the colormatrix filter
echo - selecting the scaling method actually changes the scaling method now
echo - replaced scale with zscale (scale was breaking the colorspace and colormatrix filter somehow)
echo - removed lanczos cause spline36 is better in every way
echo - zscale doesn't have neighbor so replaced it with point
echo.
echo --- Press any key to go back to Main Menu. 

pause >nul
goto main

:botSwitch
cls
echo.
echo ! Don't enable this if you don't even know what the bot is. !
echo This is a discord bot written in python by FireRedz. It dms you that it is done. 
echo Some python knowledge needed. literally newbie shit.
echo.
timeout 1 >nul
echo E) Enable bot
echo D) Disable bot
echo.
CHOICE /C ED /N /M "Choose a setting:"

IF ERRORLEVEL 2 GOTO disableBot
IF ERRORLEVEL 1 GOTO enableBot

GOTO othersettings

:enableBot
REM writing to config
(
echo yes
echo Enabled
echo %statsEnable%
echo %statsStatus%
echo %queueEnable%
echo %queueStatus%
echo %shutdownEnable%
echo %shutdownStatus%
echo %ffmpegBarEnable%
echo %ffmpegBarStatus%
echo %notificationEnable%
echo %notificationStatus%
)>BS-CLI-Config.cfg
cls

GOTO othersettings

:disableBot
REM writing to config
(
echo no
echo Disabled
echo %statsEnable%
echo %statsStatus%
echo %queueEnable%
echo %queueStatus%
echo %shutdownEnable%
echo %shutdownStatus%
echo %ffmpegBarEnable%
echo %ffmpegBarStatus%
echo %notificationEnable%
echo %notificationStatus%
)>BS-CLI-Config.cfg
cls

GOTO othersettings

:statsSwitch
cls
echo.
echo This option shows ffmpeg stats.
echo.
timeout 1 >nul
echo E) Enable stats
echo D) Disable stats
echo.
CHOICE /C ED /N /M "Choose a setting:"

IF ERRORLEVEL 2 GOTO disableStats
IF ERRORLEVEL 1 GOTO enableStats

GOTO othersettings

:enableStats
REM writing to config
(
echo %botEnable%
echo %botstatus%
echo yes
echo Enabled
echo %queueEnable%
echo %queueStatus%
echo %shutdownEnable%
echo %shutdownStatus%
echo %ffmpegBarEnable%
echo %ffmpegBarStatus%
echo %notificationEnable%
echo %notificationStatus%
)>BS-CLI-Config.cfg
cls

GOTO othersettings

:disableStats
REM writing to config
(
echo %botEnable%
echo %botstatus%
echo no
echo Disabled
echo %queueEnable%
echo %queueStatus%
echo %shutdownEnable%
echo %shutdownStatus%
echo %ffmpegBarEnable%
echo %ffmpegBarStatus%
echo %notificationEnable%
echo %notificationStatus%
)>BS-CLI-Config.cfg
cls

GOTO othersettings

:queueSwitch
cls
echo.
echo ! This option is in very alpha state !
echo This option makes a queue thingy, which means it takes 1.mp4 and resamples it, 2.mp4 resample, 3.mp4 resample etc.
echo you get the point.
echo.
timeout 1 >nul
echo E) Enable queue
echo D) Disable queue
echo.
CHOICE /C ED /N /M "Choose a setting:"

IF ERRORLEVEL 2 GOTO disableQueue
IF ERRORLEVEL 1 GOTO enableQueue

GOTO othersettings

:enableQueue
REM writing to config
(
echo %botEnable%
echo %botstatus%
echo %statsEnable%
echo %statsStatus%
echo yes
echo Enabled
echo %shutdownEnable%
echo %shutdownStatus%
echo %ffmpegBarEnable%
echo %ffmpegBarStatus%
echo %notificationEnable%
echo %notificationStatus%
)>BS-CLI-Config.cfg
cls

GOTO othersettings

:disableQueue
REM writing to config
(
echo %botEnable%
echo %botstatus%
echo %statsEnable%
echo %statsStatus%
echo no
echo Disabled
echo %shutdownEnable%
echo %shutdownStatus%
echo %ffmpegBarEnable%
echo %ffmpegBarStatus%
echo %notificationEnable%
echo %notificationStatus%
)>BS-CLI-Config.cfg
cls

GOTO othersettings



:shutdownSwitch
cls
echo.
echo This option turns your PC off after resampling.
echo Before the shutdown happens, program waits for 5 minutes so you have the time to
echo stop the shutdown if you want to.
echo.
timeout 1 >nul
echo E) Enable shutdown
echo D) Disable shutdown
echo.
CHOICE /C ED /N /M "Choose a setting:"

IF ERRORLEVEL 2 GOTO disableShutdown
IF ERRORLEVEL 1 GOTO enableShutdown

GOTO othersettings

:enableShutdown
REM writing to config
(
echo %botEnable%
echo %botstatus%
echo %statsEnable%
echo %statsStatus%
echo %queueEnable%
echo %queueStatus%
echo yes
echo Enabled
echo %ffmpegBarEnable%
echo %ffmpegBarStatus%
echo %notificationEnable%
echo %notificationStatus%
)>BS-CLI-Config.cfg
cls

GOTO othersettings

:disableShutdown
REM writing to config
(
echo %botEnable%
echo %botstatus%
echo %statsEnable%
echo %statsStatus%
echo %queueEnable%
echo %queueStatus%
echo no
echo Disabled
echo %ffmpegBarEnable%
echo %ffmpegBarStatus%
echo %notificationEnable%
echo %notificationStatus%
)>BS-CLI-Config.cfg
cls

GOTO othersettings



:ffmpegBarSwitch
cls
echo.
echo ! This requires ffmpeg-progressbar-cli !
echo Shows you a nice progress bar instead of shitty looking ffmpeg stats!
echo To get the link to the required program, press L.
echo.
timeout 1 >nul
echo E) Enable ffmpeg-progressbar-cli
echo D) Disable ffmpeg-progressbar-cli
echo.
CHOICE /C EDL /N /M "Choose a setting:"

IF ERRORLEVEL 3 GOTO ffmpegBarLink
IF ERRORLEVEL 2 GOTO disableffmpegBar
IF ERRORLEVEL 1 GOTO enableffmpegBar

GOTO othersettings

:ffmpegBarLink
echo.
echo https://github.com/sidneys/ffmpeg-progressbar-cli
echo.
start https://github.com/sidneys/ffmpeg-progressbar-cli
echo.
echo.
echo Going back to the ffmpeg bar switch in 3 seconds!
timeout 3 >nul
goto ffmpegBarSwitch

:enableffmpegBar
REM writing to config
(
echo %botEnable%
echo %botstatus%
echo %statsEnable%
echo %statsStatus%
echo %queueEnable%
echo %queueStatus%
echo %shutdownEnable%
echo %shutdownStatus%
echo yes
echo Enabled
echo %notificationEnable%
echo %notificationStatus%
)>BS-CLI-Config.cfg
cls

GOTO othersettings

:disableffmpegBar
REM writing to config
(
echo %botEnable%
echo %botstatus%
echo %statsEnable%
echo %statsStatus%
echo %queueEnable%
echo %queueStatus%
echo %shutdownEnable%
echo %shutdownStatus%
echo no
echo Disabled
echo %notificationEnable%
echo %notificationStatus%
)>BS-CLI-Config.cfg
cls

GOTO othersettings


:notificationsSwitch
cls
echo.
echo This option allows you to play a certain sound when a process has finished.
echo This sound can be custom. Just replace the notification.mp3 sound with your custom
echo notification.mp3 sound file.
echo.
timeout 1 >nul
echo E) Enable process finish sound
echo D) Disable process finish sound
echo.
CHOICE /C ED /N /M "Choose a setting:"

IF ERRORLEVEL 2 GOTO disableNotifications
IF ERRORLEVEL 1 GOTO enableNotifications

GOTO othersettings

:enableNotifications
REM writing to config
(
echo %botEnable%
echo %botstatus%
echo %statsEnable%
echo %statsStatus%
echo %queueEnable%
echo %queueStatus%
echo %shutdownEnable%
echo %shutdownStatus%
echo %ffmpegBarEnable%
echo %ffmpegBarStatus%
echo yes
echo Enabled
)>BS-CLI-Config.cfg
cls

GOTO othersettings

:disableNotifications
REM writing to config
(
echo %botEnable%
echo %botstatus%
echo %statsEnable%
echo %statsStatus%
echo %queueEnable%
echo %queueStatus%
echo %shutdownEnable%
echo %shutdownStatus%
echo %ffmpegBarEnable%
echo %ffmpegBarStatus%
echo no
echo Disabled
)>BS-CLI-Config.cfg
cls

GOTO othersettings









:main2
CLS
IF NOT EXIST "BS-CLI-Config.cfg" (
    echo.
    ECHO Config file not found, creating one right now! 
    echo Check out the "Other Settings" option in the main menu!
    timeout 2 >nul
    set configthingy=nocfg
)

IF NOT EXIST "BS-CLI-Config.cfg" (
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
)>BS-CLI-Config.cfg

(
set /p botEnable=
set /p botstatus=
set /p statsEnable=
set /p statsStatus=
set /p queueEnable=
set /p queueStatus=
set /p shutdownEnable=
set /p shutdownStatus=
set /p ffmpegBarEnable=
set /p ffmpegBarStatus=
set /p notificationEnable=
set /p notificationStatus=
)<BS-CLI-Config.cfg

if "%configthingy%"=="nocfg" (
set configthingy=cfg
goto main
)

set gpu=-preset ultrafast -c:v libx264 -movflags faststart
CLS
echo               ___________________________________________________________
echo              "                                                           "
echo              "                                        _ _                "
echo              "                                       | (_)               "
echo              "    _ __ ___  ___  __ _ _ __ ___  _ __ | |_ _ __   __ _    "
echo              "   | '__/ _ \/ __|/ _` | '_ ` _ \| '_ \| | | '_ \ / _` |   "
echo              "   | | |  __/\__ \ (_| | | | | | | |_) | | | | | | (_| |   "
echo              "   |_|  \___||___/\__,_|_| |_| |_| .__/|_|_|_| |_|\__, |   "
echo              "                               | |                 __/ |   "
echo              "                               |_|                |___/    "
echo              "                                                           "
echo              "___________________________________________________________"
echo.
echo.
echo                    Here you can resample your input video to 60fps.
echo          ! Make sure your video file is in the same folder as this .bat file !
echo.
echo.
echo.
echo Note: If your output is black screen, it means windows player 
echo       cannot handle high quality like this (low -crf value, like 0)
echo.
echo Enter FPS of your video input (for example 960) and press enter: 
set /p fpsAmount=
set /a framesAmount=(%fpsAmount%/60)-1
echo.
echo.
echo. 
echo Enter desired -crf value (number only) and press enter:
echo (lower is better. 0 is lossless, 10 is visually lossless, keep under 18)
set /p crfValue=

if "%queueEnable%"=="yes" (
    echo.
    echo Thanks!
) ELSE (
    echo.
    echo.
    echo.
    echo Enter the video file's name. You can just type the first few letters then press tab and enter.
    set /p filename=
    echo.
    echo Thanks!
)
goto ResamplingProcessConfirm

:ResamplingProcessConfirm
CLS
echo          __
echo  _(\    ^|@@^|
echo (__/\__ \--/ __
echo    \___^|----^|  ^|__
echo        \ }{ /\ )_ / _\
echo        /\__/\ \__O (__
echo       (--/\--)    \__/
echo       _)(  )(_
echo      `---''---`
echo.
if "%queueEnable%"=="yes" (
    echo Queue mode is enabled.
    echo.
) ELSE (
    echo.
)
echo Can I start resampling?
echo.
echo.
CHOICE /C YN /M "Enter your choice: "

IF ERRORLEVEL 2 GOTO main
IF ERRORLEVEL 1 GOTO ResamplingProcess

:ResamplingProcess
IF "%statsEnable%"=="yes" (
    set ffmpegstats=-i
) ELSE (
    set ffmpegstats=-v quiet -stats -i
)

:startQueue
IF "%queueEnable%"=="yes" (
        IF NOT EXIST "%inputnumber%.mp4" (
        echo.
        ECHO Input file with name %inputnumber%.mp4 not found, please change the input name to %inputnumber%.mp4!
        timeout 5 >nul
        goto main
    )
        :resampleinqueue
        timeout 1 >nul

        echo LoadPlugin("ffms2.dll"^) > avsscript.avs
        echo LoadPlugin("ClipBlend_x64.dll"^) >> avsscript.avs
        echo FFMS2("%inputnumber%.mp4"^) >> avsscript.avs
        echo ClipBlend(delay=%framesAmount%^) >> avsscript.avs
        echo changefps(60, linear=false^) >> avsscript.avs
        

        IF "%ffmpegBarEnable%"=="yes" (
            ffmpeg-bar -i avsscript.avs -i %inputnumber%.mp4 %gpu% -crf %crfValue% -c:a copy %inputnumber%-output-%fpsAmount%fps-resampled.mp4
        ) else (
            ffmpeg %ffmpegstats% avsscript.avs -i %inputnumber%.mp4 %gpu% -crf %crfValue% -c:a copy %inputnumber%-output-%fpsAmount%fps-resampled.mp4
        )
        echo.
        echo Resampling %inputnumber%.mp4 has finished!
        echo.
        DEL /F /Q %inputnumber%.mp4.ffindex
        set /a inputnumber+=1
        timeout 1 >nul
        
        
        IF NOT EXIST "%inputnumber%.mp4" (
        echo.
        ECHO Input file with name %inputnumber%.mp4 not found, I take this as a process finish!
        
        DEL /F /Q avsscript.avs
        

        timeout 1 >nul
        timeout 2 >nul
        goto afterResampling
    ) else (
        goto resampleinqueue
        timeout 1 >nul
)
) else (
    IF NOT EXIST "%filename%" (
        echo.
        ECHO No file named %filename% is found! Going back to main menu!
        timeout 1 >nul
        timeout 5 >nul
        goto main
    )
    echo.
      IF "%ffmpegBarEnable%"=="yes" (
            ffmpeg-bar -i %filename% %gpu% -crf %crfValue% -vf tmix=frames=%framesAmount%:weights="%weighting%",fps=60 -c:a copy output-%fpsAmount%fps-resampled.mp4
        ) else (
            
            echo LoadPlugin("ffms2.dll"^) > avsscript.avs
            echo LoadPlugin("ClipBlend_x64.dll"^) >> avsscript.avs
            echo FFMS2("%filename%"^) >> avsscript.avs
            echo ClipBlend(delay=%framesAmount%^) >> avsscript.avs
            echo changefps(60, linear=false^) >> avsscript.avs


            ffmpeg -i avsscript.avs %ffmpegstats% %filename% %gpu% -crf %crfValue% -c:a copy output-%fpsAmount%fps-resampled.mp4

            DEL /F /Q avsscript.avs
            DEL /F /Q %filename%.ffindex
        )
)

:afterResampling
echo.
IF "%statsEnable%"=="yes" (
    echo.
) else (
    CLS
    echo.
)
echo.
echo The resampling has finished!
echo.
echo.

IF "%botEnable%"=="yes" (
        goto quitprogram
    ) else (
        IF "%shutdownEnable%"=="yes" (
        echo Shutdown option is enabled so the PC is shutting down in 2 minutes!
        echo.
        timeout 10 >nul
        shutdown -s -t 110
        CLS
        echo Press any key to stop the shutdown!
        echo If you have a problem stopping the shutdown, go to cmd and type "shutdown /a"
        echo If you have a problem stopping the shutdown, go to cmd and type "shutdown /a"
        echo.
        pause >nul
        shutdown /a
        echo.
        CLS
        echo Shutdown stopped!
        timeout 2 >nul
        goto End
            ) else (
                    goto End
                )
            )       



:Upscaling
CLS
IF NOT EXIST "BS-CLI-Config.cfg" (
    echo.
    ECHO Config file not found, creating one right now! 
    echo Check out the "Other Settings" option in the main menu!
    timeout 2 >nul
)

IF NOT EXIST "BS-CLI-Config.cfg" (
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
)>BS-CLI-Config.cfg

(
set /p botEnable=
set /p botstatus=
set /p statsEnable=
set /p statsStatus=
set /p queueEnable=
set /p queueStatus=
set /p shutdownEnable=
set /p shutdownStatus=
set /p ffmpegBarEnable=
set /p ffmpegBarStatus=
set /p notificationEnable=
set /p notificationStatus=
)<BS-CLI-Config.cfg


CLS
echo.
echo                 _________________________________________________
echo                "                                                 "
echo                "                              _ _                "
echo                "                             | (_)               "
echo                "    _   _ _ __  ___  ___ __ _| |_ _ __   __ _    "
echo                "   | | | | '_ \/ __|/ __/ _` | | | '_ \ / _` |   "
echo                "   | |_| | |_) \__ \ (_| (_| | | | | | | (_| |   "
echo                "    \__,_| .__/|___/\___\__,_|_|_|_| |_|\__, |   "
echo                "         | |                             __/ |   "
echo                "         |_|                            |___/    "
echo                "                                                 "
echo                "_________________________________________________"
echo.
echo           Note: If your output is black screen, it means windows player 
echo           cannot handle high quality like this (low -crf value, like 0)
echo.
echo.
echo.
echo Enter desired -crf value (number only) and press enter:
echo (lower is better. 0 is lossless, 10 is visually lossless, keep under 18)
set /p crfValue=
echo.
echo Thanks!


:UpscalingPostGPU
CLS
echo.
echo                 _________________________________________________
echo                "                                                 "
echo                "                              _ _                "
echo                "                             | (_)               "
echo                "    _   _ _ __  ___  ___ __ _| |_ _ __   __ _    "
echo                "   | | | | '_ \/ __|/ __/ _` | | | '_ \ / _` |   "
echo                "   | |_| | |_) \__ \ (_| (_| | | | | | | (_| |   "
echo                "    \__,_| .__/|___/\___\__,_|_|_|_| |_|\__, |   "
echo                "         | |                             __/ |   "
echo                "         |_|                            |___/    "
echo                "                                                 "
echo                "_________________________________________________"
echo.
echo.
echo                      Here you can upscale your video to 4K
echo       ! Make sure your video file is in the same folder as this .bat file !
echo.
echo.
echo.
echo Enter the video file's name (e.g. output-960fps-resampled). You can just type the first few letters then press tab and enter.
set /p filename= 
echo.
echo.
echo.
echo Is your input file recorded with osr2mp4? (this is important for me to either apply a color fix or not.)
echo.
CHOICE /C YN /M "Enter your choice: "

IF ERRORLEVEL 2 GOTO NoColorFix
IF ERRORLEVEL 1 GOTO ColorFix

:NoColorFix
set colorfix=
set colorfixstatus=Disabled
goto chooseres

:ColorFix
set colorfix=lut3d="osr2mp4 color correction new.cube",colorspace=bt709:iall=smpte170m:fast=1
set colorfixstatus=Enabled
goto chooseres

:chooseres
CLS
echo.
echo                 _________________________________________________
echo                "                                                 "
echo                "                              _ _                "
echo                "                             | (_)               "
echo                "    _   _ _ __  ___  ___ __ _| |_ _ __   __ _    "
echo                "   | | | | '_ \/ __|/ __/ _` | | | '_ \ / _` |   "
echo                "   | |_| | |_) \__ \ (_| (_| | | | | | | (_| |   "
echo                "    \__,_| .__/|___/\___\__,_|_|_|_| |_|\__, |   "
echo                "         | |                             __/ |   "
echo                "         |_|                            |___/    "
echo                "                                                 "
echo                "_________________________________________________"
echo.
echo.
echo What resolution do you want to upscale/downscale to?
echo.
echo.
echo 1) 4k
echo 2) 1440p (2.5k)
echo.
echo 3) Custom 
echo.
CHOICE /C 123 /N 

IF ERRORLEVEL 3 GOTO custom
IF ERRORLEVEL 2 GOTO 1440p
IF ERRORLEVEL 1 GOTO 4k

:4k
set widthupscale=-8
set heightupscale=2160
goto chooseupscaling

:1440p
set widthupscale=-8
set heightupscale=1440
goto chooseupscaling

:custom
CLS
echo.
echo                 _________________________________________________
echo                "                                                 "
echo                "                              _ _                "
echo                "                             | (_)               "
echo                "    _   _ _ __  ___  ___ __ _| |_ _ __   __ _    "
echo                "   | | | | '_ \/ __|/ __/ _` | | | '_ \ / _` |   "
echo                "   | |_| | |_) \__ \ (_| (_| | | | | | | (_| |   "
echo                "    \__,_| .__/|___/\___\__,_|_|_|_| |_|\__, |   "
echo                "         | |                             __/ |   "
echo                "         |_|                            |___/    "
echo                "                                                 "
echo                "_________________________________________________"
echo.
echo.
echo Please tell me your desired width. (only pixel amount, like 1920)
set /p widthupscale=
echo.
echo.
echo.
echo Please tell me your desired height. 
set /p heightupscale=
echo.
echo Thanks!
echo.
echo Loading...
echo.
timeout 1 >nul

goto chooseupscaling

:chooseupscaling
CLS
echo.
echo                 _________________________________________________
echo                "                                                 "
echo                "                              _ _                "
echo                "                             | (_)               "
echo                "    _   _ _ __  ___  ___ __ _| |_ _ __   __ _    "
echo                "   | | | | '_ \/ __|/ __/ _` | | | '_ \ / _` |   "
echo                "   | |_| | |_) \__ \ (_| (_| | | | | | | (_| |   "
echo                "    \__,_| .__/|___/\___\__,_|_|_|_| |_|\__, |   "
echo                "         | |                             __/ |   "
echo                "         |_|                            |___/    "
echo                "                                                 "
echo                "_________________________________________________"
echo.
echo.
echo Please choose an upscaling method.
echo.
echo 1) Spline - lanczos but better
echo 2) Neighbor - sharp edges, a bit faster than spline
echo.

CHOICE /C 12 /M " "

IF ERRORLEVEL 2 GOTO Neighborasd
IF ERRORLEVEL 1 GOTO Splineasd

:Neighborasd
set upscalingmethod=neighbor
goto UpscalingProcessAsk

:Splineasd
set upscalingmethod=spline
goto UpscalingProcessAsk

:UpscalingProcessAsk
CLS
echo          __
echo  _(\    ^|@@^|
echo (__/\__ \--/ __
echo    \___^|----^|  ^|   __
echo        \ }{ /\ )_ / _\
echo        /\__/\ \__O (__
echo       (--/\--)    \__/
echo       _)(  )(_
echo      `---''---`
echo.
echo.
echo Can I start upscaling "input.mp4"? (Color Fix is %colorfixstatus%)
echo.
echo.
CHOICE /C YN /M "Enter your choice: "

IF ERRORLEVEL 2 GOTO quitprogram
IF ERRORLEVEL 1 GOTO UpscalingProcess


:UpscalingProcess
IF "%statsEnable%"=="yes" (
    set ffmpegstats=-i
) ELSE (
    set ffmpegstats=-v quiet -stats -i
)
      IF "%ffmpegBarEnable%"=="yes" (
            ffmpeg-bar -i %filename% -c:v libx264 -preset:v ultrafast -crf %crfValue% -vf %colorfix%,scale=%widthupscale%:%heightupscale%:flags=%upscalingmethod% -c:a copy Output-Upscale.mp4
        ) else (
            ffmpeg %ffmpegstats% %filename% -c:v libx264 -preset:v ultrafast -crf %crfValue% -vf %colorfix%,scale=%widthupscale%:%heightupscale%:flags=%upscalingmethod% -c:a copy Output-Upscale.mp4
        )

echo.
echo.
IF "%statsEnable%"=="yes" (
    echo.
) ELSE (
    CLS
    echo.
)
echo.
echo The upscaling has finished!
echo.
echo.
IF "%botEnable%"=="yes" (
    goto quitprogram
) ELSE (
    goto End
)



:cutVideoTimes
CLS
IF NOT EXIST "BS-CLI-Config.cfg" (
    echo.
    ECHO Config file not found, creating one right now! 
    echo Check out the "Other Settings" option in the main menu!
    timeout 2 >nul
)

IF NOT EXIST "BS-CLI-Config.cfg" (
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
)>BS-CLI-Config.cfg

(
set /p botEnable=
set /p botstatus=
set /p statsEnable=
set /p statsStatus=
set /p queueEnable=
set /p queueStatus=
set /p shutdownEnable=
set /p shutdownStatus=
set /p ffmpegBarEnable=
set /p ffmpegBarStatus=
set /p notificationEnable=
set /p notificationStatus=
)<BS-CLI-Config.cfg

CLS
echo.
echo  ______________________________________________
echo "                 _    _    _                  "
echo "                | |  | |  (_)                 "
echo "     ___  _   _ | |_ | |_  _  _ __    __ _    "
echo "    / __|| | | || __|| __|| || '_ \  / _` |   "
echo "   | (__ | |_| || |_ | |_ | || | | || (_| |   "
echo "    \___| \__,_| \__| \__||_||_| |_| \__, |   "
echo "                                      __/ |   "
echo "                                     |___/    "
echo "______________________________________________"
echo.
echo Here you can get lossless video cutting.
echo.
echo.
echo.
echo Set starting time (in seconds): 
set /p startingTime=
echo.
timeout 1 >nul
echo How long should the video be? (in seconds): 
set /p howlongTime=
echo.
echo Got it! Proceeding to next step...
timeout 1 >nul
goto cuttingVideoAsk

:cuttingVideoAsk
CLS
echo.
echo  ______________________________________________
echo "                 _    _    _                  "
echo "                | |  | |  (_)                 "
echo "     ___  _   _ | |_ | |_  _  _ __    __ _    "
echo "    / __|| | | || __|| __|| || '_ \  / _` |   "
echo "   | (__ | |_| || |_ | |_ | || | | || (_| |   "
echo "    \___| \__,_| \__| \__||_||_| |_| \__, |   "
echo "                                      __/ |   "
echo "                                     |___/    "
echo "______________________________________________"
echo.
echo.
echo Can I start cutting the video "input.mp4"?
echo.
echo.
CHOICE /C YN /M "Enter your choice: "

IF ERRORLEVEL 2 GOTO main
IF ERRORLEVEL 1 GOTO cuttingVideoProcess

:cuttingVideoProcess
IF "%statsEnable%"=="yes" (
    set ffmpegstats=
) ELSE (
    set ffmpegstats=-v quiet -stats
)


      IF "%ffmpegBarEnable%"=="yes" (
            ffmpeg-bar -ss %startingTime% -i input.mp4 -t %howlongTime% -vcodec copy -acodec copy Output-Cut-Video.mp4
        ) else (
            ffmpeg %ffmpegstats% -ss %startingTime% -i input.mp4 -t %howlongTime% -vcodec copy -acodec copy Output-Cut-Video.mp4
        )


echo.
echo.
IF "%statsEnable%"=="yes" (
    echo.
) ELSE (
    CLS
    echo.
)
echo.
echo The cutting has finished!
echo.
echo.
IF "%botEnable%"=="yes" (
    goto quitprogram
) ELSE (
    goto End
)


:reducefilesize
CLS
IF NOT EXIST "BS-CLI-Config.cfg" (
    echo.
    ECHO Config file not found, creating one right now! 
    echo Check out the "Other Settings" option in the main menu!
    timeout 2 >nul
)

IF NOT EXIST "BS-CLI-Config.cfg" (
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
echo no
echo Disabled
)>BS-CLI-Config.cfg

(
set /p botEnable=
set /p botstatus=
set /p statsEnable=
set /p statsStatus=
set /p queueEnable=
set /p queueStatus=
set /p shutdownEnable=
set /p shutdownStatus=
set /p ffmpegBarEnable=
set /p ffmpegBarStatus=
set /p notificationEnable=
set /p notificationStatus=
)<BS-CLI-Config.cfg

CLS
echo.
echo  ___________________________________
echo "     __ _ _           _            "
echo "    / _(_) |         (_)           "
echo "   | |_ _| | ___  ___ _ _______    "
echo "   |  _| | |/ _ \/ __| |_  / _ \   "
echo "   | | | | |  __/\__ \ |/ /  __/   "
echo "   |_| |_|_|\___||___/_/___\___|   "
echo "___________________________________"
echo.
echo Here you can reduce your file size up to 10x with minimal quality loss.
echo.
echo.
echo Choose quality loss.
echo.
echo 1) Low (medium file size reduce)
echo 2) Medium 
echo 3) High 
echo 4) Insane (big file size reduce)
echo.
CHOICE /C 1234 /M "Enter your choice: "

IF ERRORLEVEL 4 GOTO insaneloss
IF ERRORLEVEL 3 GOTO highloss
IF ERRORLEVEL 2 GOTO mediumloss
IF ERRORLEVEL 1 GOTO lowloss
timeout 1 >nul
goto reducefilesize

:lowloss
set losscrf=10
goto reducefilesizeProcess

:mediumloss
set losscrf=13
goto reducefilesizeProcess

:highloss
set losscrf=16
goto reducefilesizeProcess

:insaneloss
set losscrf=20
goto reducefilesizeProcess

:reducefilesizeProcess
IF "%statsEnable%"=="yes" (
    set ffmpegstats=
) ELSE (
    set ffmpegstats=-v quiet -stats
)

      IF "%ffmpegBarEnable%"=="yes" (
            ffmpeg-bar -i input.mp4 -c:v libx264 -crf %losscrf% -preset veryslow -c:a copy Output-less-file-size.mp4
        ) else (
            ffmpeg %ffmpegstats% -i input.mp4 -c:v libx264 -crf %losscrf% -preset veryslow -c:a copy Output-less-file-size.mp4
        )

echo.
echo.
IF "%statsEnable%"=="yes" (
    echo.
) ELSE (
    CLS
    echo.
)
echo.
echo The file size reducing has finished!
echo.
IF "%botEnable%"=="yes" (
    goto quitprogram
) ELSE (
    goto End
)





:End
echo.
if "%notificationEnable%"=="yes" (
    start notification.mp3
)

echo.
timeout 1 >nul
CHOICE /C YN /M "Do you want to go back to the main menu? "

IF ERRORLEVEL 2 GOTO quitprogramfrommenu
IF ERRORLEVEL 1 GOTO main

timeout 1 >nul


:quitprogram
CLS
IF /I "%botEnable%"=="yes" (
    start FFmpegNotifier.py
)
CLS
color 0B
CLS
echo.
echo.
echo     .-""""""-.
echo   .'          '.
echo  /   O      O   \
echo :           `    :
echo ^|                ^|
echo :    .------.    :
echo  \  '        '  /
echo   '.          .'
echo     '-......-'
echo.
echo    closing in 3...
timeout 1 >nul
CLS
color 09
CLS
echo.
echo.
echo     .-""""""-.
echo   .'          '.
echo  /   O      O   \
echo :           `    :
echo ^|                ^|
echo :    .------.    :
echo  \  '        '  /
echo   '.          .'
echo     '-......-'
echo.
echo    closing in 2...
timeout 1 >nul

CLS
color 08
CLS
echo.
echo.
echo     .-""""""-.
echo   .'          '.
echo  /   O      O   \
echo :           `    :
echo ^|                ^|
echo :    .------.    :
echo  \  '        '  /
echo   '.          .'
echo     '-......-'
echo.
echo    closing in 1...
timeout 1 >nul


:quitprogramfrommenu
CLS
color 08
CLS
echo.
echo     .-""""""-.
echo   .'          '.
echo  /   O      O   \
echo :           `    :
echo ^|                ^|
echo :    .------.    :
echo  \  '        '  /
echo   '.          .'
echo     '-......-'
echo.
timeout 1 >nul
