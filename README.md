# Generiz Virtual Display Manager
Descripción del repositorio:

Este repositorio contiene una solución para abordar el problema de AnyDesk donde no se muestra el escritorio remoto cuando la computadora controlada no tiene un monitor conectado. La solución crea un "display virtual" en la computadora que se controla, permitiendo así que AnyDesk muestre correctamente el escritorio remoto.

La solución está diseñada para funcionar en Windows 10 y utiliza PowerShell para implementar la funcionalidad. El script también incluye una tarea programada para garantizar que el "display virtual" se vuelva a instalar automáticamente después de reiniciar AnyDesk.

Estructura del repositorio:
raíz
│   ejecutar.bat
│
└───carpeta_datos
    │   solucion.ps1
    │
    └───carpeta
        │   (archivos y subcarpetas)
        
Nota: Este proyecto está diseñado en y para Windows 11 tambien deberia de funcionar en Windows 10. Asegúrese de probar la solución en una máquina con Windows 10 antes de usarla en un entorno de producción.

## Instalación

1. Descargue o clone este repositorio en su computadora.
2. Asegúrese de tener todos los archivos necesarios en la carpeta `carpeta`:
   - Win32
   - x64
   - usbmmidd.bat
   - usbmmidd.cat
   - usbmmidd.inf
   - deviceinstaller.exe
   - deviceinstaller64.exe
   - tarea.bat
3. Ejecute el script `solucion.bat` con privilegios de administrador. El script instalará los controladores necesarios, creará una tarea programada y configurará el entorno.
4. Reinicie su computadora para que los cambios surtan efecto.

## Uso

Una vez instalado, Generiz Virtual Display Manager se ejecutará automáticamente cada vez que reinicie su computadora. El script de la tarea reinstalará el display virtual en cada reinicio, asegurándose de que siempre funcione correctamente.

Si desea desinstalar Generiz Virtual Display Manager y eliminar las tareas asociadas, ejecute nuevamente el script `solucion.bat` con privilegios de administrador. El script detectará que el programa ya está instalado y le preguntará si desea eliminarlo y borrar todas las tareas asociadas.

## Licencia

Generiz Virtual Display Manager es un software de código abierto bajo la licencia MIT. Consulte el archivo `LICENSE` para obtener más detalles.
