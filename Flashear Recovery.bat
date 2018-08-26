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
ECHO   � Aseg�rate de que tienes el bootloader desbloqueado.
ECHO   � Aseg�rate de que tienes los drivers instalados correctamente.
ECHO   � Pon el archivo del recovery en la misma carpeta que este script.
ECHO   � Aseg�rate de que solo hay un archivo de recovery la carpeta.
ECHO   � Pon el tel�fono en modo fastboot (Mant�n pulsado VOL- y Power a la vez).
ECHO   � Conecta el tel�fono al PC.
ECHO   � Espera 5 segundos.
ECHO   � Pulsa ENTER.
ECHO.
ECHO.
ECHO.
PAUSE
ECHO.
ECHO.

:RecoveryScan
ren *.img recovery.img >nul 2>&1

IF EXIST "recovery.img" (
	ECHO   Flasheando el recovery...
	fastboot flash recovery recovery.img
	CLS
	ECHO.
	ECHO.
	ECHO   Recovery flasheado. No desconectes el tel�fono todav�a.
	ECHO   Ahora mant�n pulsado el bot�n VOL+ en el t�lefono.
	ECHO   Mientras mantienes pulsado el VOL+, pulsa ENTER.
	ECHO   Esto te llevar� al Recovery que acabas de instalar.
	ECHO.
	ECHO.
	PAUSE
	ECHO.
	ECHO.
	ECHO   Reiniciando...
	ECHO.
	ECHO.
	fastboot reboot
) ELSE (
  CLS
  ECHO.
  ECHO.
  ECHO Error: No has puesto ning�n archivo de recovery v�lido.
  ECHO Aseg�rate de poner un archivo de recovery en la carpeta y pulsa ENTER.
  ECHO.
  ECHO.
  PAUSE
  CLS
  GOTO RecoveryScan
)

CLS