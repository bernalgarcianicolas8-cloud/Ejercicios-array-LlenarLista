funcion mostrarmenu
	escribir "===========MENU==========="
	escribir " 1. guardar tiempos del viaje "
	escribir " 2. modificar tiempo del viaje"
	escribir " 3. mostrar datos"
	escribir " 4. calcular total del viaje"
	escribir " 5: salir"
FinFuncion
funcion guardarDatos(tiempo)
	para i <- 1 hasta 3 con paso 1 Hacer
		escribir "Dijite cuando duro el viaje " i 
		leer tiempo[i]
	FinPara
FinFuncion
funcion modificarDatos(tiempo)
	definir viaje como entero
	escribir "Que viaje desea cambiar"
	leer viaje
	escribir "Dijite el nuevo valor"
	leer tiempo[viaje]
	escribir "tiempo modificado exitosamente"
FinFuncion
funcion mostrarDatos(tiempo)
	para i <- 1 hasta 3 hacer
		escribir "el viaje " i " duro: "
		escribir tiempo[i] " horas "
	FinPara
FinFuncion
funcion total <- calcularviajetotal(tiempo)
	total = 0
	para i <- 1 hasta 3 Hacer
		total <- total + tiempo[i]
	FinPara
FinFuncion
funcion imprimirDatos(total)
	escribir "el total del viaje fue de: " total " horas"
FinFuncion

Algoritmo TOTALVIAJE
	definir opcion1 Como Entero
	dimension tiempo[3]
	Repetir
		mostrarmenu
		escribir "digite la opcion que desea ejecutar"
		leer opcion1
		segun opcion1 hacer 
			1:
				guardarDatos(tiempo)
			2:
				modificarDatos(tiempo)
			3:
				mostrarDatos(tiempo)
			4: 
				total <- calcularviajetotal(tiempo)
				imprimirDatos(total)
			5: 
				escribir "saliendo del programa, hasta prontoo!!!......"
		FinSegun
	Hasta Que opcion1 = 5
FinAlgoritmo
