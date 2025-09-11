funcion mostrarmenu
	escribir "============MENU============"
	escribir " 1. digitar ingresos y gastos"
	escribir " 2. modificar ingresos o gastos"
	escribir " 3. mostrar ingresos y gastos"
	escribir " 4. calcular las ganancias"
	escribir " 5. salir"
FinFuncion

funcion GuardarDatos(finanza)
	escribir "digite el ingreso del dia: "
	leer finanza[1, 1]
	escribir "digite los gastos del dia: "
	leer finanza[1, 2]		
FinFuncion
funcion ModificarDatos(finanza)
	definir opcion1 como entero
	repetir
		escribir "dijite la opcion que desea cambiar"
		escribir " 1. ingresos"
		escribir " 2. gastos"
		leer opcion1
		si opcion1 = 1 Entonces
			escribir "ingrese los nuevos ingresos"
			leer finanza[1, 1]
			escribir "modificado exitosamente"
		sino 
			si opcion1 = 2 entonces 
				escribir "ingrese los nuevos gastos"
				leer finanza[1, 2]
				escribir "modificado exitosamente"
			sino 
				escribir "opcion invalida, vuelva a intentarlo"
			FinSi
		FinSi
	Hasta Que opcion1 = 1 o opcion1 = 2
FinFuncion
funcion MostrarDatos(finanza)
	escribir "los ingresos fueron de: " finanza[1, 1]
	escribir "los gastos fueron de: " finanza[1, 2]
FinFuncion
funcion ganancias <- calcularganancias(finanza)
	ganancias <- finanza[1, 1] - finanza[1, 2]
FinFuncion
funcion imprimirresultado(ganancias)
	escribir "las ganancias del dia fueron de: " ganancias
FinFuncion

Algoritmo GANANCIASARRAY
	definir opcion2 como entero 
	dimension finanza[1, 2]
	repetir 
		mostrarmenu
		escribir "dijite la opcion que desea ejecutar: "
		leer opcion2
		segun opcion2 hacer
			1:
				GuardarDatos(finanza)
			2: 
				ModificarDatos(finanza)
			3: 
				MostrarDatos(finanza)
			4:
				ganancias <- calcularganancias(finanza)
				imprimirresultado(ganancias)
			5: 
				escribir "saliendo del programa....."
		FinSegun
	Hasta Que opcion2 = 5
FinAlgoritmo
