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
		escribir "ingrese el año de nacimiento de la persona " i
		leer nacimiento[i]
	FinPara
FinFuncion
funcion Añoactual <- Pedirañoactual
	escribir "Ahora dijite el año actual "
	leer Añoactual
FinFuncion
funcion ModificarDatos(nacimiento)
	definir persona como entero 
	escribir "De que persona desea cambiar el año de nacimiento" 
	leer persona
	escribir "ahora digite el nuevo año de nacimiento"
	leer nacimiento[persona]

FinFuncion
funcion motrardatos(nacimiento, Añoactual)
	escribir "año actual: " Añoactual
	para i <- 1 hasta 3 hacer 
		escribir "año de nacimiento de la persona " i " es: " nacimiento[i] 
	FinPara
FinFuncion
funcion edad <- calcularedad(nacimiento, edades, Añoactual)
	para i <- 1 hasta 3 hacer 
		edades[i] <- Añoactual - Nacimiento[i]
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
				Añoactual <- Pedirañoactual
			2:
				ModificarDatos(nacimiento)
			3:
				motrardatos(nacimiento, AñoActual)
			4:
				edad <- calcularedad(nacimiento, edades, Añoactual)
				imprimirmensaje(edades)
			5:
				escribir "saliendo del programa....."
		FinSegun
	Hasta Que opcion1 = 5
FinAlgoritmo
