funcion mostrarmenu
	escribir "===========MENU==========="
	escribir " 1. guardar costo de servicios "
	escribir " 2. modificar costos"
	escribir " 3. mostrar costos"
	escribir " 4. calcular costo total"
	escribir " 5: salir"
FinFuncion
funcion GuardarDatos(servicios)
	para i <- 1 hasta 3 con paso 1 hacer 
		escribir "ingrese el costo del servicio " i 
		leer servicios[i]
	FinPara
FinFuncion
funcion modificardatos(servicios)
	definir costo como entero
	escribir "Que costo de servicio desea cambiar"
	leer costo
	escribir "Dijite el nuevo valor"
	leer servicios[costo]
	escribir "costo modificado exitosamente"
FinFuncion
funcion MostrarDatos(servicios)
	para i<- 1 hasta 3 Hacer
		Escribir "el valor del servicio " i " es de: " 
		escribir servicios[i]
	FinPara
FinFuncion
funcion total <- calculartotal(servicios)
	total= 0 
	para i <- 1 hasta 3 Hacer
		total <- total + servicios[i]
	FinPara
FinFuncion
funcion imprimirresultado(total)
	escribir "el total de todos los servicios es de: " total
FinFuncion
Algoritmo Servicioscalculo
	dimension servicios[3]
	Repetir
		mostrarmenu
		escribir "digite la opcion que desea ejecutar"
		leer opcion1
		segun opcion1 hacer 
			1:
				guardarDatos(servicios)
			2:
				modificarDatos(servicios)
			3:
				mostrarDatos(servicios)
			4: 
				total <- calculartotal(servicios)
				imprimirresultado(total)
			5: 
				escribir "saliendo del programa, hasta prontoo!!!......"
		FinSegun
	Hasta Que opcion1 = 5
FinAlgoritmo
