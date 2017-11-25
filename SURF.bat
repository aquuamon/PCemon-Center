@echo off
set file=bg_sound.mp3
( ECHO Set Sound = CreateObject("WMPlayer.OCX.7"^)
  ECHO Sound.URL = "bg_sound.mp3"
  echo Sound.settings.volume = 7
  echo Sound.settings.setMode "loop", True
  ECHO Sound.Controls.play
  echo While Sound.playState ^<^> 1
  echo      WScript.Sleep 100
  echo Wend
)>sound.vbs
start /min sound.vbs
ECHO OFF
color 1F
mode con cols=100 lines=60
CLS
title SURF
ECHO. 
ECHO                 _~~~~~~~~~~~_             
ECHO               M~~~M ~~~~~~~~~~~           
ECHO              ~~~~NOOM~~~~~~MMZM~         
ECHO             M~~~~:OOO~~~~~~~OOM~~         
ECHO      M~M~~  ?~~~~ OOO~~~~~~~MMM~~        
ECHO     M~~~~~  ?~~~~~~~~~~~~~~~MM~~~        
ECHO     ??~~~~~M??~~~~~~~M~~~~~~~~~~~       
ECHO      ?~~~~~~O?~~D???????????M8MMM       
ECHO      ??~~~~~~~?~~M???????????MNM     M  
ECHO       ?~~~~~~~M??~~~????????M~M  M~~~M  
ECHO       ??~~~~~~~M???~~~~~~~~~M~~~~~~~~~~M
ECHO        ??~~~~~M~???MM???OM?~~~~~~~~~~?  
ECHO        M??~~~~~~~~~~~~~~~~~~~~~~~~~~?   
ECHO        ==?M~~~~~~~~~~~~~~~~~M~~~~??M    
ECHO        M=?~~~~~~~~~~~~~~~~~~~~M??M      
ECHO   ~~~~MM=M~~~~~~~~~~~~~~~~~~~~~M        
ECHO M~~~~~MI,,~~~~~M~~~~~~~~~~~~~~~M        
ECHO ~~MN~~MI,M~~~~~~=~~~~~MMMM~~~~~M        
ECHO ~M~~~~MM,~~~~~~~~~~~~~~~~~~~~~~         
ECHO ?~~~~~~,,~~~~~~~~~~~~~~~~~~~~~MMM       
ECHO  ????~~M,~~~~~~~~~~~~~~~~~~~~~~~~~M     
ECHO   M??~~~,~~~M~~~~~~~~M~~~~M~~~~~~?+  M  
ECHO     M???M~~~~~~~~~~~~~~~MM~~~~~??????   
ECHO         ~~~~~~~~M~~~~~~~~???~~????????M 
ECHO         ~~~~~~~?????????7???~????????M  
ECHO         ~~~~~~???  MM      ?????????    
ECHO         ~~~~~~??           M??????M     
ECHO         M~~~~??M             M?M        
ECHO          M~?????                        
ECHO          ~~~~~~?                        
ECHO         M~~~~~?                         
ECHO         M M~ ~M                         
ECHO.
ECHO A wild Squirtle appeared!
ECHO.
ECHO Squirtle will use SURF to clean your PC network.
ECHO.&pause
ECHO.
ECHO Splash...splash...its a direct hit...splash..
timeout /t 5 /nobreak
ECHO.
ECHO -------------------- Resetting Winsock Protocol --------------------
ECHO.
ECHO.
netsh winsock reset
timeout /t 10 /nobreak
ECHO.
ECHO -------------------- Resetting IP --------------------
ECHO.
ECHO.
netsh int ip reset resetlog.txt
timeout /t 10 /nobreak
ECHO.
ECHO -------------------- Flushing DNS --------------------
ECHO.
ipconfig /flushdns
timeout /t 10 /nobreak
ECHO.
ECHO -------------------- Releasing IP --------------------
ECHO.
ipconfig /release
timeout /t 10 /nobreak
ECHO.
ECHO -------------------- Renewing IP --------------------
ECHO.
ipconfig /renew
timeout /t 5 /nobreak
ECHO.
ECHO -------------------- Status --------------------
ECHO.
ECHO.
ECHO Splash...SURF had an effect..
ECHO.
ECHO.
ECHO Your PC network should now be improved. :)
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