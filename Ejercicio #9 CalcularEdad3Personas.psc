funcion mostrarmenu
	escribir "==========MENU=========="
	escribir "1. guardar edades a calcular"
	escribir "2. modificar edades"
	escribir "3. mostrar datos"
	escribir "4. calcular edad actual"
	escribir "5. salir"
FinFuncion
funcion GuardarDatos(nacimiento)
	para i <- 1 hasta 3 con paso 1 hacer 
		escribir "ingrese el a�o de nacimiento de la persona " i
		leer nacimiento[i]
	FinPara
FinFuncion
funcion A�oactual <- Pedira�oactual
	escribir "Ahora dijite el a�o actual "
	leer A�oactual
FinFuncion
funcion ModificarDatos(nacimiento)
	definir persona como entero 
	escribir "De que persona desea cambiar el a�o de nacimiento" 
	leer persona
	escribir "ahora digite el nuevo a�o de nacimiento"
	leer nacimiento[persona]

FinFuncion
funcion motrardatos(nacimiento, A�oactual)
	escribir "a�o actual: " A�oactual
	para i <- 1 hasta 3 hacer 
		escribir "a�o de nacimiento de la persona " i " es: " nacimiento[i] 
	FinPara
FinFuncion
funcion edad <- calcularedad(nacimiento, edades, A�oactual)
	para i <- 1 hasta 3 hacer 
		edades[i] <- A�oactual - Nacimiento[i]
	FinPara
FinFuncion
funcion imprimirmensaje(edades)
	para i <- 1 hasta 3 Hacer
		escribir "la edad de la persona " i " es: " edades[i]
	FinPara
FinFuncion

Algoritmo CalcularEdad3Personas
	dimension nacimiento[3], edades[3]
	repetir 
		mostrarmenu
		escribir "ingrese la opcion que desea ejecutar "
		leer opcion1
		segun opcion1 hacer 
			1:
				GuardarDatos(nacimiento)
				A�oactual <- Pedira�oactual
			2:
				ModificarDatos(nacimiento)
			3:
				motrardatos(nacimiento, A�oActual)
			4:
				edad <- calcularedad(nacimiento, edades, A�oactual)
				imprimirmensaje(edades)
			5:
				escribir "saliendo del programa....."
		FinSegun
	Hasta Que opcion1 = 5
FinAlgoritmo
