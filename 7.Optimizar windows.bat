@echo off
title Optimizar
::Alexx Mzz
:Inicio
::Esto es una funcion
mode 50, 15
echo ==============================
echo =     Ingresa una opcion     =
echo ==============================
echo = 1. Flush DNS               =
echo = 2. Detener servicios       =
echo = 3. Eliminar temporales     =
echo = 4. Salir                   =
echo ==============================

set /p var= Opcion:
::Asgina el valor que el usuario coloca por consola
    if %var%==1 goto Flush
    if %var%==2 goto Detener
    if %var%==3 goto Eliminar
    if %var%==4 goto Salir


:Flush
    :: Es necesario ejecutar como Admin
    ipconfig /flushdns
    pause
    cls
    goto Inicio

:Detener
    :: Es necesario ejecutar como Admin
    ::Para iniciar un servicio es:
    ::sc start wuauserv && sc config wuauserv start = auto
    mode 120, 32
    ::Xbox
        ::administracion de autenticacion de xbox live
		sc stop XbLAuthManager && sc config XbLAuthManager start = disable
		::partida guardada en xbox live
		sc stop XbLGameSave && sc config XbLGameSave start = disable
		::servicio de red de xbox live
		sc stop XboxNetApiSvc && sc config XboxNetApiSvc start = disable
		::xbox accessory managment service
		sc stop XboxGipSvc && sc config XboxGipSvc start = disable
    
    ::Work
		::Cola de impresion
		sc stop Spooler && sc config Spooler start = disable
		::exprencias del usuario y telemtria asociadas
		sc stop DiagTrack && sc config DiagTrack start = disable
		::extensiones y notificaciones de impresora
		sc stop PrintNotify && sc config PrintNotify start = disable
		::Fax
		sc stop Fax && sc config Fax start = disable
		::microsoft passport
		sc stop NgcSvc && sc config NgcSvc start = disable
        
    ::Home
		::control parental
		sc stop WpcMonSvc && sc config WpcMonSvc start = disable
		::servicio de administracion de radio
		sc stop RmSvc && sc config RmSvc start = disable
		::servicio de geolocalizacion
		sc stop Ifsvc && sc config Ifsvc start = disable
		::servicio de windows insider
		sc stop Wisvc && sc config Wisvc start = disable
		::Servicio de instalacion de microsoft Store
		sc stop InstallService && sc config InstallService start = disable
		::Telefonia
		sc stop TapiSrv && sc config TapiSrv start = disable

    pause
    cls
    goto Inicio

:Eliminar
     :: Es necesario ejecutar como Admin
     mode 120, 32
     color 1f
    ::Eliminar archivos temporales aplicativos
    cd c:\
    del *.tmp /s /f /q

    ::Eliminar archivos logs
    cd c:\
    del *.log /s /f /q

    ::Eliminar archivos temporales del sistema
    del c:\windows\temp\ /s /f /q

    ::Eliminar archivos temporales del usuario
    del %temp% /s /f /q
    
    ::Eliminar archivos prefetch
    del c:\windows\prefetch\ /s /f /q
    pause
    cls
    goto Inicio

:Salir
    exit