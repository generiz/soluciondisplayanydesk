@echo off
TITLE Powered by generiz
color 80
MKDIR c:\generiz
MOVE carpeta\Win32 c:\generiz\
MOVE carpeta\x64 c:\generiz\
MOVE carpeta\usbmmidd.bat c:\generiz\
MOVE carpeta\usbmmidd.cat c:\generiz\
MOVE carpeta\usbmmidd.inf c:\generiz\
MOVE carpeta\deviceinstaller.exe c:\generiz\
MOVE carpeta\deviceinstaller64.exe c:\generiz\
MOVE carpeta\tarea.bat c:\generiz\

@echo Instalado drivers...


cd c:\generiz\
deviceinstaller64 install usbmmidd.inf usbmmidd
deviceinstaller64 enableidd 1

pause
@echo creando tarea...


schtasks /create /tn generiz /tr c:\generiz\tarea.bat /sc onstart

pause