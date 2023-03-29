@echo off
title Apagado
::Alexx Mzz
:Inicio
::funcion 
mode 50,15
echo ==============================
echo =     Ingresa una opcion     =
echo ==============================
echo = 1. Apagar en 30 seg        =
echo = 2. Apagar en X tiempo      =
echo = 3. Cerrar Sesion           =
echo = 4. Reiniciar en 30 seg     =
echo = 5. Reiniciar en X tiempo   =
echo = 6. Cancelar Apagado/Reini  =
echo = 7. Salir                   =
echo ==============================

set /p var= Opcion:
::Asigna el valor que el usuario coloca por consola
    if %var%==1 goto Apagar30s
    if %var%==2 goto ApagarX
    if %var%==3 goto CerrarS
    if %var%==4 goto Reiniciar30s
    if %var%==5 goto ReiniciarX
    if %var%==6 goto CancelarA
    if %var%==7 goto Salir


:Apagar30s
    shutdown /s /t 30
    cls
    goto Inicio

:ApagarX
    echo Ingrese en cuantos segundos
    echo quiere que se apague el equipo
    echo 1 min = 60 seg
    set /p tiempo=Tiempo:
    shutdown /s /t %tiempo%
    cls
    goto Inicio

:CerrarS
    shutdown /L
    cls
    goto Salir
:Reiniciar30s
    shutdown /R
    cls
    goto Inicio
:ReiniciarX
    echo Ingrese en cuantos segundos
    echo quiere que se reinicie el equipo
    echo 1 min = 60 seg
    set /p tiempo=Tiempo:
    shutdown /R /t %tiempo%
    cls
    goto Inicio
:CancelarA
    shutdown /A
    cls
    goto Inicio

:Salir
    exit
