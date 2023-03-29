@echo off
title Calculadora
::Alexx Mzz
:Inicio
::funcion 
mode 50,15
echo ==============================
echo =     Ingresa una opcion     =
echo ==============================
echo = 1. Suma                    =
echo = 2. Resta                   =
echo = 3. Salir                   =
echo ==============================

set /p var= Opcion:
::Asigna el valor que el usuario coloca por consola
    if %var%==1 goto Suma
    if %var%==2 goto Resta
    if %var%==3 goto Salir


:Suma
    cls
    echo Digite el primer numero:
    set /p Num1=
    echo Digite el segundo numero:
    set /p Num2=

    set /a resultado= Num1+Num2

    echo La suma de los dos numeros es: %resultado%
    pause
    cls
    goto Inicio

:Resta
    cls
    echo Digite el primer numero:
    set /p Num1=
    echo Digite el segundo numero:
    set /p Num2=

    set /a resultado= Num1-Num2

    echo La resta de los dos numeros es: %resultado%
    pause
    cls
    goto Inicio



:Salir
    exit
