@echo off
::Alexx Mzz
title Plantilla

:Inicio
::Esto es una funcion
mode 50, 15
echo ==============================
echo =     Ingresa una opcion     =
echo ==============================
echo = 1. Opcion uno              =
echo = 2. Opcion dos              =
echo = 3. Opcion tres             =
echo = 4. Salir                   =
echo ==============================

set /p var= Opcion:
::Asgina el valor que el usuario coloca por consola
    if %var%==1 goto OP1
    if %var%==2 goto OP2
    if %var%==3 goto OP3
    if %var%==4 goto Salir


:OP1
    echo Esto es la opcion uno
    pause
    cls
    goto Inicio

:OP2
    echo Esto es la opcion dos
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