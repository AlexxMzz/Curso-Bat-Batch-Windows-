@echo off
title CRUD
::Alexx Mzz
:Inicio
::funcion 
mode 50,15
echo ==============================
echo =     Ingresa una opcion     =
echo ==============================
echo = 1. Crear                   =
echo = 2. Ver                     =
echo = 3. Actualizar              =
echo = 4. Eliminar                =
echo = 5. Salir                   =
echo ==============================

set /p var= Opcion:
::Asigna el valor que el usuario coloca por consola
    if %var%==1 goto Crear
    if %var%==2 goto Ver
    if %var%==3 goto Actualizar
    if %var%==4 goto Eliminar
    if %var%==5 goto Salir


:Crear
    echo Escribe el nombre del archivo:
    set /p Name=
    echo Escribe el nombre de la extension:
    set /p Exten=
    type nul > %cd%\%Name%.%Exten%

    pause
    cls
    goto Inicio

:Ver    
    cls
    echo ==============================
    echo =     Ingresa una opcion     =
    echo ==============================
    echo = 1. Ver todos los archivos  =
    echo = 2. Ver un archivo          =
    echo = 3. Volver al inicio        =
    echo ==============================
    set /p var= Opcion:
        if %var%==1 goto VerAll
        if %var%==2 goto VerUno
        if %var%==3 goto Volver
        :VerAll
            cls
            mode 97, 17
            cd %cd%
            dir
            pause
            cls
            goto ver

        :VerUno
            echo Escribe el nombre del archivo:
            set /p Name=
            echo Escribe el nombre de la extension:
            set /p Exten=
            type %cd%\%Name%.%Exten%
            
            pause
            cls
            goto Ver
        :Volver
            cls
            goto Inicio
    pause
    cls
    goto Inicio

:Actualizar
    cls
    echo Escribe el nombre del archivo:
    set /p Name=
    echo Escribe el nombre de la extension:
    set /p Exten=
    echo Escribe el contenido que se requiere:
    set /p Contenido=
    echo %Contenido% >> %cd%\%Name%.%Exten%
    echo.
    echo Informacion insertada:

    pause
    cls
    goto Inicio
:Eliminar
    cls
    echo Escribe el nombre del archivo:
    set /p Name=
    echo Escribe el nombre de la extension:
    set /p Exten=
    del /q %cd%\%Name%.%Exten%
    pause
    cls
    goto Inicio

:Salir
    exit
