funcion mostrarmenu 
	escribir "===========MENU==========="
	escribir " 1. Guardar base y altura         "
	escribir " 2. Modificar base o altura      "
	escribir " 3. mostrar base y altura"
	escribir " 4. calcular area de los rectangulos "
	escribir " 5. salir                 "
finfuncion 
funcion guardardatos(rectangulo, num)
	definir i, p como entero
	para i <- 1 hasta num Hacer
		escribir "ingrese la base del rectangulo " i ": "
		leer rectangulo[i, 1]
		escribir "ingrese la altura del rectangulo " i ": "
		leer rectangulo[i, 2]
	FinPara	
FinFuncion
funcion modificardatos(rectangulo, num)
	definir opcion1, numrectangulo Como Entero
	escribir "ingrese el numero del rectangulo a modificar (1 a ", num, "):"
	leer numrectangulo
	si numrectangulo > 0 y numrectangulo <= num entonces 
		escribir "que quiere modificar?"
		escribir " 1. base "
		escribir " 2. altura" 
		leer opcion1
	sino 
		escribir "opcion invalida"
	FinSi
	segun opcion1 hacer 
		1: 
			escribir "ingrese la nueva base: "
			leer rectangulo[numrectangulo, 1]
			escribir "bien, base modificada exitosamente"
		2: 
			escribir "ingrese la nueva altura "
			leer rectangulo[numrectangulo, 2]
			escribir "bien, altura modificada exitosamente"
		De Otro Modo:
			escribir "opcion invalida"
	FinSegun
FinFuncion
Funcion mostrarDatos(rectangulo, num)
	Definir i Como Entero
	Para i <- 1 Hasta num Hacer 
		Escribir "Rectángulo ", i, ":"
		Escribir "  Base: ", rectangulo[i, 1]
		Escribir "  Altura: ", rectangulo[i, 2]
	FinPara
FinFuncion
funcion calcularArea(rectangulo, num)
	definir i como entero
	para i = 1 hasta num hacer 
		area <- rectangulo[i, 1] * rectangulo[i, 2]
		escribir "el area del rectangulo " i ": " area
	FinPara
	
FinFuncion
Algoritmo sin_titulo
	definir num Como Entero
	definir opcion2 como entero
	escribir "ingrese el numero de rectangulos que desea calcular: "
	leer num
	dimension rectangulo[num, 2]
	repetir 
		mostrarmenu 
		escribir "ingrese la opcion que desea ejecutar"
		leer opcion2
		segun opcion2 Hacer
			1: 
				guardardatos(rectangulo, num)
			2:
				modificardatos(rectangulo, num)
			3: 
				mostrarDatos(rectangulo, num)
			4: 
				calcularArea(rectangulo, num)
			5: 
				escribir "saliendo del programa...."
		FinSegun
	Hasta Que opcion2 = 5
FinAlgoritmo
