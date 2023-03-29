@echo off
title Limpiar Chrome
::Alexx Mzz
:Inicio
::funcion 
mode 50,15
echo ====================================
echo =        Ingresa una opcion        =
echo ====================================
echo = 1. Eliminar temporales de Chrome =
echo = 2. Restablecer Chrome            =
echo = 3. Salir                         =
echo ====================================

set /p var= Opcion:
::Asigna el valor que el usuario coloca por consola
    if %var%==1 goto EliminarCh
    if %var%==2 goto RestablecerCh
    if %var%==3 goto Salir


:EliminarCh
    
    mode 80, 17
    ::Cerrar el proceso
    taskkill /f /im Chrome.exe

    ::Asignar ruta
    set chromeData = "%localappdata%\google\chrome\user data\default\"

        ::Del elimina archivos
        del /q /s /f %chromeData%\History
        del /q /s /f %chromeData%\History-journal
        del /q /s /f %chromeData%\"Visited Links"

        ::Rmdir elimina carpetas
        rmdir "%localappdata%\google\chrome\user data\default\chache\" /q /s
    pause
    cls
    goto Inicio

:RestablecerCh
    mode 80, 17
    ::Cerrar el proceso
    taskkill /f /im Chrome.exe
    ::Rmdir elimina carpetas
        rmdir "%localappdata%\google\chrome\user data\default\" /q /s
    pause
    cls
    goto Inicio

:OP3
    echo Esto es la opcion tres
    pause
    cls
    goto Inicio

:Salir
    exit
