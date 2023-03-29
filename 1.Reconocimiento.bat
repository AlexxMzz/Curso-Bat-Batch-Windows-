@echo off
:: Desactiva el mensaje principal de echo 
::Alexx Mzz

mode 110, 45
:: mode controla el tamaño de la ventana X Y

color 1f
:: Cambia el color de la interfaz "cmd"

title AlexxMzz
:: Genera un titulo en la ventada de la interfaz

echo Esto es un mensaje
:: Echo nos ayuda a mostrar por pantalla un mensaje al usuario

echo.
:: Nos ayuda para generar un salto de linea

echo Esto es un mensaje2

pause
:: nos ayuda a hacer un debug o una espera en la interfaz

echo Esto es un mensaje3

pause>nul
:: nos ayuda a hacer un debug o una espera en la interfaz sin texto

echo Esto es un mensaje4

pause>nul

cls
:: Nos ayuda a limpiar la interfaz

pause>nul