@echo off
@echo Win32PrioritySeparation Script by moffa89
@echo =============================================

echo change "Win32PrioritySeparation" to 0x2a(42)
reg add HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl /t REG_DWORD /v Win32PrioritySeparation /d 0x2a /f

pause
