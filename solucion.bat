@echo off
TITLE Powered by generiz
color 80

IF EXIST "c:\generiz\" (
    echo "Ya está instalado."
    echo ¿Desea eliminar el programa y todas las tareas asociadas? (S/N)
    set /p userChoice=
    if /i %userChoice% equ S (
        echo Eliminando tarea programada...
        schtasks /delete /tn generiz /f
        echo Eliminando directorio generiz...
        RMDIR /S /Q c:\generiz\
        echo generiz y las tareas asociadas han sido eliminadas.
        pause
        exit
    )
) ELSE (
    MKDIR c:\generiz
    MOVE carpeta\Win32 c:\generiz\
    MOVE carpeta\x64 c:\generiz\
    MOVE carpeta\usbmmidd.bat c:\generiz\
    MOVE carpeta\usbmmidd.cat c:\generiz\
    MOVE carpeta\usbmmidd.inf c:\generiz\
    MOVE carpeta\deviceinstaller.exe c:\generiz\
    MOVE carpeta\deviceinstaller64.exe c:\generiz\
    MOVE carpeta\tarea.bat c:\generiz\

    @echo Instalando drivers...
    cd c:\generiz\
    deviceinstaller64 install usbmmidd.inf usbmmidd
    deviceinstaller64 enableidd 1

    @echo Creando tarea...
    schtasks /create /tn generiz /tr c:\generiz\tarea.bat /sc onstart /RL HIGHEST

    pause
)

:progress
color 07
echo.
echo Por favor espere mientras se configura el entorno...
echo  ██████████████████████████ 100%%
echo.
color 80

pause

