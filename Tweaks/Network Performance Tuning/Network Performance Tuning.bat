@echo off
net session >nul 2>&1 || (powershell start -verb runas '"%~0"' &exit /b)

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v SackOpts /t reg_dword /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v FastSendDatagramThreshold /t reg_dword /d 64000 /f

set /a MTU=1500

:testmtu
ping 8.8.8.8 /f /n 1 /w 500 /l %MTU% >> nul

if %MTU% LSS 68 (
  set /a MTU=1500
  goto:done
)

if %ERRORLEVEL% EQU 1 (
  set /a MTU=%MTU%-2
  goto:testmtu
)

if %ERRORLEVEL% EQU 0 (
  set /a MTU=%MTU%+28
  goto:done
)

:done
cls
echo new MTU %MTU%

for /f "skip=3 tokens=4*" %%a in ('netsh interface IPv4 show interfaces ^| findstr /v "Loop"') do (
  netsh interface ipv4 set subinterface "%%b" mtu=%MTU% store=persistent
)

if "%1"=="pause" pause
exit /b %MTU%
