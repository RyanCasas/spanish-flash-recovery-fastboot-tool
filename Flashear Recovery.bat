@echo off
color 08
chcp 1252
title Herramienta para flashear recovery por fastboot
CLS
ECHO.
ECHO.
echo    =======================================================================================
echo    .                  Herramienta para flashear Recovery por fastboot                    .
echo    .                                    Por Ryan Casas                                   .
echo    =======================================================================================
ECHO.
ECHO.
ECHO.
ECHO.  Para que todo vaya bien, sigue estos pasos en este orden:
ECHO.
ECHO   · Asegúrate de que tienes el bootloader desbloqueado.
ECHO   · Asegúrate de que tienes los drivers instalados correctamente.
ECHO   · Pon el archivo del recovery en la misma carpeta que este script.
ECHO   · Asegúrate de que solo hay un archivo de recovery la carpeta.
ECHO   · Pon el teléfono en modo fastboot (Mantén pulsado VOL- y Power a la vez).
ECHO   · Conecta el teléfono al PC.
ECHO   · Espera 5 segundos.
ECHO   · Pulsa ENTER.
ECHO.
ECHO.
ECHO.
PAUSE
ECHO.
ECHO   Flasheando el recovery...
ECHO.
ren *.img recovery.img
fastboot flash recovery recovery.img
ECHO.
CLS
ECHO.
ECHO   Recovery flasheado. Ahora mantén pulsado el botón VOL+ en el télefono.
ECHO   Mientras mantienes pulsado el VOL+, pulsa ENTER. Esto te llevará al Recovery.
ECHO.
PAUSE
ECHO.
ECHO   Reiniciando...
ECHO.
fastboot reboot
CLS