funcion mostrarmenu 
	escribir "============MENU============"
	escribir " 1. Guardar distancia y tiempo"
	escribir " 2. Modificar Datos"
	escribir " 3. Mostrar Datos"
	escribir " 4. Calcular velocidad"
	escribir " 5. salir"
FinFuncion

funcion GuardarDatos(distancia, tiempo)
	para i <- 1 hasta 2 con paso 1 Hacer
		escribir "ingrese la distancia del vehiculo " i
		leer distancia[i]
	finpara 
	para i <- 1 hasta 2 con paso 1 hacer 
		escribir "ingrese el tiempo del vehiculo " i
		leer tiempo[i]
	FinPara
FinFuncion
funcion ModificarDatos(distancia, tiempo)
	definir persona, opcion1 como entero
	escribir " que desea cambiar? "
	escribir " 1. distancia "
	escribir " 2. tiempo "
	leer opcion1 
	escribir "ingrese el numero del vehiculo que desea modificar (1-2)"
	leer vehiculo
	segun opcion1 hacer 
		1: 
			escribir "ingrese la nueva distancia"
			leer distancia[vehiculo]
			escribir "modificado exitosamente"
		2: 
			escribir "ingrese el nuevo tiempo"
			leer distancia[vehiculo]
			escribir "modificado exitosamente"
	FinSegun
FinFuncion
funcion MostrarDatos(distancia, tiempo)
	para i <- 1 hasta 2 hacer 
		escribir "distancia del vehiculo " i ": " distancia[i] "km"
	FinPara
	para i <- 1 hasta 2 hacer 
		escribir "tiempo del vehiculo " i ": " tiempo[i] "h"
	FinPara
FinFuncion
funcion velocidad <- Calcularvelocidad(distancia, tiempo)
	para i <- 1 hasta 2 hacer 
		velocidad <- distancia[i] / tiempo[i]
		escribir "la velocidad del vehiculo " i " es: " velocidad "km/h "
	FinPara
FinFuncion
Algoritmo Velocidad2
	definir opcion2 como entero 
	dimension distancia[2], tiempo[2]
	repetir 
		mostrarmenu
		escribir "ingrese la opcion que desea ejecutar"
		leer opcion2
		segun opcion2 hacer 
			1:
				GuardarDatos(distancia, tiempo)
			2:
				ModificarDatos(distancia, tiempo)
			3:
				MostrarDatos(distancia, tiempo)
			4:
				velocidad <- Calcularvelocidad(distancia, tiempo)
			5: 
				escribir "saliendo del programa....."
		FinSegun
	Hasta Que opcion2 = 5
FinAlgoritmo
