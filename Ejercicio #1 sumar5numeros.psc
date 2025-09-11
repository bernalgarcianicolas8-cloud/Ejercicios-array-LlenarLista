funcion mostrarmenu 
	escribir "===========MENU==========="
	escribir " 1. Guardar datos         "
	escribir " 2. Modificar datos       "
	escribir " 3. mostrar numeros y suma"
	escribir " 4. salir                 "
FinFuncion
funcion guardarnumeros(num)
	definir i, n como entero 
	para i <- 1 hasta 5 con paso 1 hacer 
		escribir "ingrese el numero ", i, ": "
		leer n
		num[i] <- n
	FinPara
FinFuncion
funcion modificardatos(num)
	escribir "ingrese la posicion del numero que sea modificar (1-5)"
	leer posicion 
	si posicion >= 1 y posicion <= 5 entonces 
		escribir "ingrese el numero numero:"
		leer num[posicion]
	sino 
		escribir "posicion invalida"
	FinSi
FinFuncion
funcion suma <- sumarnumeros(num)
	definir i como entero 
	suma <- 0
	para i <- 1 hasta 5 Hacer
		suma <- suma + num[i]
	FinPara
FinFuncion
funcion mostrarsumaynumeros(num)
	definir i, suma como entero
	Escribir "Numeros ingresados: "
	para i <- 1 hasta 5 con paso 1 hacer 
		escribir num[i]
	FinPara
	suma <- sumarnumeros(num)
	escribir "la suma de los numeros es: " suma 
FinFuncion
Algoritmo sumar5numeros
	definir opcion1 como entero
	dimension num[5]
	repetir 
		mostrarmenu 
		escribir "ingrese la opcion que desea ejecutar"
		leer opcion1
		segun opcion1 hacer 
			1:
				guardarnumeros(num)	
			2: 
				modificardatos(num)
			3: 
				mostrarsumaynumeros(num)
			4: 
				escribir "saliendo del programa...."
			De Otro Modo:
				escribir "opcion invalida vuelva a ingresar"
		FinSegun
	Hasta Que opcion1 = 4
FinAlgoritmo
