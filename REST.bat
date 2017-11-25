@echo off
set file=bg_sound.mp3
( ECHO Set Sound = CreateObject("WMPlayer.OCX.7"^)
  ECHO Sound.URL = "bg_sound.mp3"
  echo Sound.settings.volume = 4
  echo Sound.settings.setMode "loop", True
  ECHO Sound.Controls.play
  echo While Sound.playState ^<^> 1
  echo      WScript.Sleep 100
  echo Wend
)>sound.vbs
start /min sound.vbs
ECHO OFF
color 2F
mode con cols=100 lines=60
CLS
title REST
ECHO. 
ECHO                 .OZZZZZZ..        ..MZZZZZ.                 
ECHO                 .OOZZZZZZZZZZZZZZZZZZZZZZZ.                 
ECHO                 .8OZZZ::,:::,ZO:,,:::MZZZZ.                 
ECHO                  MOZ:,,,,,,,,,,,:,,,:,,MZZ.        ..       
ECHO                 .MO:,,-----,,,,,,-----,::Z.      .MI...     
ECHO                 .O==,,,,,,.::::::.,,,,,,:Z.    .OZZZZZ~M    
ECHO                 M===:,,::,;_______;:::::,,,,M  .MOOZZZZZZ.    
ECHO                 O==7,,,,,,,,,,,,,,,,,,,O:,Z .OOOZZZZZZZZ    
ECHO                ..::,,,,,,,,,,,,,,,,,,,,,:,,NOOOZZZZZZZZM    
ECHO              .I:,,,,,,,,,,,,,,,,,,,,,,,,,,,,:MZZZZZZZZZM    
ECHO           ..Z==,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,:,DZZZZZZZ.    
ECHO          ZZZM==,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,:ZZZZZZZ.    
ECHO      ..OZZZZ===,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,ZMZZZZ.    
ECHO     .IZZZZZZ====,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,MZMZZ:     
ECHO    .ZZZZZZZZ~====:,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,IZZOZ.     
ECHO   .ZZZZZZZZZZ=====:,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,ZZZZ~      
ECHO   ZZZZZZZZZZZZZZ=====:,7MOZZZZZZZZZ8N,::,,,,,,,:OZZZZZ.     
ECHO  MZZZZZZZ,ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ$ZZZZZZZZZ.     
ECHO .$ZZZZZZZN,,NZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZN:ZZ.     
ECHO ~OZMMZZ$,,:,,,:NZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZM,,:,,ZZM     
ECHO MNOZ:,,.,,:,::,,:,ZZZZZZZZZZZZZZZZZZZZZZZZZ,:,,,,:MM:,D  .  
ECHO $7M:M~,,,,,,,,,,,,:ZZZZZZZZZZZZZZZZZZZZZOO:,,,,,,,,,,,~,,.  
ECHO   ..,,,,,,,,,::,,,,,ZZZZZZZZZZZZZZZZZZZOO:,:::::,,,,,,,.I   
ECHO    M,,,,,,=======,,,ZZZZZZZZZZZZZZZZZZOOO=========:,,,,,,?  
ECHO  M~~::,:==Z777777==,$ZZZZZZZZZZZZZZZZOOOO===I777N==:,,,,,,  
ECHO    .,,,==~77777777=:ZZOOOOOOOOOOOOOOOOOOO==$777777?=::,,:,,.
ECHO    .+,,===7777777D=+OOOOOOOOOOOOOOOOOOOOOO+:7777777==,,,,.  
ECHO     .N:====M$77M==8OOOOOOOOOOOOOOOOOOOOOOOO=~777777==,,,,.  
ECHO        ?:========.                           ==ND+==,::,    
ECHO          ......                               ...88...      
ECHO.
ECHO A wild Snorlax appeared!
ECHO.
ECHO Snorlax will use REST to restore your PC HP.
ECHO.&pause
ECHO.
ECHO Zzz...zzz...Snorlax is fast asleep...zz..
timeout /t 5 /nobreak
ECHO.
ECHO -------------------- Scan And Repair Windows System Files --------------------
ECHO.
ECHO.
sfc /scannow
timeout /t 10 /nobreak
ECHO.
ECHO -------------------- Scan For Bad Sectors And Errors on HDD --------------------
ECHO.
ECHO.
chkdsk c: /r /f
timeout /t 10 /nobreak
ECHO.
ECHO -------------------- Windows Memory Diagnostics --------------------
ECHO.
ECHO.
mdsched
timeout /t 10 /nobreak
ECHO.
ECHO -------------------- Status --------------------
ECHO.
ECHO.
ECHO Yaawn...Snorlax woke up..
ECHO.
ECHO.
ECHO Your PC health should now be improved. :)
ECHO.
ECHO.
ECHO 1.Close
ECHO.
ECHO or
ECHO.
ECHO 2.Reboot now (recommended)
ECHO.
set /p a=
IF %a%==1 (
   Taskkill /f /im "wscript.exe" >nul
   del sound.vbs
   del bg_sound.mp3
   exit/b
)
IF %a%==2 (shutdown -r -t 00)