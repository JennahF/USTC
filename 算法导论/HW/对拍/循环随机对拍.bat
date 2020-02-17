@echo off  
:loop  
	rand.exe %random% > data.in
	std.exe < data.in > std.out
	my.exe < data.in > my.out
	fc my.out std.out 
if not errorlevel 1 goto loop  
pause
goto loop