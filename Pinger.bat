@echo off
chcp 65001 >nul
title .                                                                                                        pinger // Made by M1
mode 117,29

:login
echo.
echo [40;31m                                       ██▓     ▒█████    ▄████  ██▓ ███▄    █ 
echo [40;31m                                      ▓██▒    ▒██▒  ██▒ ██▒ ▀█▒▓██▒ ██ ▀█   █ 
echo [40;31m                                      ▒██░    ▒██░  ██▒▒██░▄▄▄░▒██▒▓██  ▀█ ██▒
echo [40;31m                                      ▒██░    ▒██   ██░░▓█  ██▓░██░▓██▒  ▐▌██▒
echo [40;31m                                      ░██████▒░ ████▓▒░░▒▓███▀▒░██░▒██░   ▓██░
echo [40;31m                                      ░ ▒░▓  ░░ ▒░▒░▒░  ░▒   ▒ ░▓  ░ ▒░   ▒ ▒ 
echo [40;31m                                      ░ ░ ▒  ░  ░ ▒ ▒░   ░   ░  ▒ ░░ ░░   ░ ▒░
echo [40;31m                                        ░ ░   ░ ░ ░ ▒  ░ ░   ░  ▒ ░   ░   ░ ░ 
echo [40;31m                                          ░  ░    ░ ░        ░  ░           ░ 
echo.
set /p user= user: 
cls
echo.
echo [40;31m                                       ██▓     ▒█████    ▄████  ██▓ ███▄    █ 
echo [40;31m                                      ▓██▒    ▒██▒  ██▒ ██▒ ▀█▒▓██▒ ██ ▀█   █ 
echo [40;31m                                      ▒██░    ▒██░  ██▒▒██░▄▄▄░▒██▒▓██  ▀█ ██▒
echo [40;31m                                      ▒██░    ▒██   ██░░▓█  ██▓░██░▓██▒  ▐▌██▒
echo [40;31m                                      ░██████▒░ ████▓▒░░▒▓███▀▒░██░▒██░   ▓██░
echo [40;31m                                      ░ ▒░▓  ░░ ▒░▒░▒░  ░▒   ▒ ░▓  ░ ▒░   ▒ ▒ 
echo [40;31m                                      ░ ░ ▒  ░  ░ ▒ ▒░   ░   ░  ▒ ░░ ░░   ░ ▒░
echo [40;31m                                        ░ ░   ░ ░ ░ ▒  ░ ░   ░  ▒ ░   ░   ░ ░ 
echo [40;31m                                          ░  ░    ░ ░        ░  ░           ░ 
echo.
set /p pass=[40;31mpass: [30;40m
if %user% == root if %Pass% == root goto ippinger
if %user% == user if %Pass% == pass goto ippinger
cls
echo [31mWrong Login, Try Again..[0m
timeout 3 >nul
cls
goto login 

:ippinger
cls
title .                                                                                                        pinger // Made by M1
echo.
echo.
echo                                                  [7;31m ╔═╗╦╔╗╔╔═╗╔═╗╦═╗ [0m
echo                                                  [7;31m ╠═╝║║║║║ ╦║╣ ╠╦╝ [0m  
echo                                                  [7;31m ╩  ╩╝╚╝╚═╝╚═╝╩╚═ [0m
echo.   
echo                                      [40;31m╔═════════════[ [40;37mIP PINGER [0m[40;31m]═════════════╗
echo                                      [40;31m║                                       [40;31m║
echo                                      [40;31m║         [0m[[31mWelcome[0m] [31m @%user% [0m[40;37m             [40;31m║                               
echo                                      [40;31m║        [40;37m [[31mDiscord[0m] [31m m1ontop2 [0m[40;37m          [40;31m║                     
echo                                      [40;31m║                                       [40;31m║
echo                                      [40;31m║[40;37m         Please [7;31mPROVIDE[0m The IP         [40;31m║
echo                                      [40;31m║                                       [40;31m║
echo                                      [40;31m╚═══════════════════════════════════════╝
echo.

set /p IP= [37m[root@[31m%user%[37m] Please specify an IP : 
echo.
cls

echo.
echo.
echo                                                  [7;31m ╔═╗╦╔╗╔╔═╗╔═╗╦═╗ [0m
echo                                                  [7;31m ╠═╝║║║║║ ╦║╣ ╠╦╝ [0m  
echo                                                  [7;31m ╩  ╩╝╚╝╚═╝╚═╝╩╚═ [0m
echo.   
echo                                      [40;31m╔═════════════[ [40;37mIP PINGER [0m[40;31m]═════════════╗
echo                                      [40;31m║                                       [40;31m║
echo                                      [40;31m║         [0m[[31mWelcome[0m] [31m @%user% [0m[40;37m             [40;31m║                               
echo                                      [40;31m║         [40;37m[[31mDiscord[0m] [31m m1ontop2 [0m [40;37m         [40;31m║                     
echo                                      [40;31m║                                       [40;31m║
echo                                      [40;31m║[40;37m         Please [7;31mPROVIDE[0m The IP         [40;31m║
echo                                      [40;31m║                                       [40;31m║
echo                                      [40;31m╚═══════════════════════════════════════╝
echo.
:ipping
PING -n 1 %IP% | FIND "TTL=">nul
IF ERRORLEVEL 1 goto downed
IF NOT ERRORLEVEL 1 goto connected
:connected
echo [37m[root@[31m%user%[37m] : [102m CONNECTED [0m to [[92m %IP% [0m] [[92m+[0m] Status : [102m ONLINE [0m
echo.
goto ipping
:downed
echo [37m[root@[31m%user%[37m] : [41m DOWNED [0m [[31m %IP% [0m] [[31m-[0m] Status : [41m OFFLINE [0m
echo.
goto ipping