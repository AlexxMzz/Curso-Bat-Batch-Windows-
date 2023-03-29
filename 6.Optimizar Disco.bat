@echo off
title Disco
::::Alexx Mzz
:Inicio
::Esto es una funcion
mode 50, 15
echo ==============================
echo =     Ingresa una opcion     =
echo ==============================
echo = 1. Liberar espacio         =
echo = 2. Desfragmentar           =
echo = 3. Analizar disco          =
echo = 4. Espacio disponible      =
echo = 5. Salir                   =
echo ==============================

set /p var= Opcion:
::Asgina el valor que el usuario coloca por consola
    if %var%==1 goto Liberar
    if %var%==2 goto Desfragmentar
    if %var%==3 goto Analizar
    if %var%==4 goto Espacio
    if %var%==5 goto Salir


:Liberar
    ::Es recomendable ejecutar como administrador
    Cleanmgr
    pause
    cls
    goto Inicio

:Desfragmentar
    mode 120, 19
    defrag c:
    pause
    cls
    goto Inicio

:Analizar
    :: Es necesario ejecutar como Admin
    mode 120, 19
    CHKDSK
    pause
    cls
    goto Inicio

:Espacio
    :: Es necesario ejecutar como Admin
    mode 120, 19
    fsutil volume diskfree c:
    pause
    cls
    goto Inicio

:Salir
    exit