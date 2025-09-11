funcion mostrarmenu 
	escribir "============MENU============"
	escribir " 1. Guardar peso y altura"
	escribir " 2. Modificar Datos"
	escribir " 3. Mostrar Datos"
	escribir " 4. Calcular indice de masa corportal (IMC)"
	escribir " 5. salir"
FinFuncion

funcion GuardarDatos(peso, altura)
	para i <- 1 hasta 2 con paso 1 Hacer
		escribir "ingrese el peso de la persona " i
		leer peso[i]
	finpara 
	para i <- 1 hasta 2 con paso 1 hacer 
		escribir "ingrese la altura del la persona " i
		leer altura[i]
	FinPara
FinFuncion
funcion ModificarDatos(peso, altura)
	definir persona, opcion1 como entero
	escribir " que desea cambiar? "
	escribir " 1. peso "
	escribir " 2. altura "
	leer opcion1 
	escribir "ingrese el numero de la persona que desea modificar (1-2)"
	leer persona
	segun opcion1 hacer 
		1: 
			escribir "ingrese el nuevo peso"
			leer peso[persona]
			escribir "modificado exitosamente"
		2: 
			escribir "ingrese la nueva altura"
			leer altura[persona]
			escribir "modificado exitosamente"
	FinSegun
FinFuncion
funcion MostrarDatos(peso, altura)
	para i <- 1 hasta 2 hacer 
		escribir "Peso de la persona " i ": " peso[i]
	FinPara
	para i <- 1 hasta 2 hacer 
		escribir "altura de la persona " i ": " altura[i]
	FinPara
FinFuncion
funcion IMC <- CalcularIMC(peso, altura)
	para i <- 1 hasta 2 hacer 
		IMC <- peso[i] / (altura[i] * altura[i])
		escribir "el IMC de la persona " i " es: " IMC
	FinPara
FinFuncion
Algoritmo IMC2personas
	definir opcion2 como entero 
	dimension peso[2], altura[2]
	repetir 
		mostrarmenu
		escribir "ingrese la opcion que desea ejecutar"
		leer opcion2
		segun opcion2 hacer 
			1:
				GuardarDatos(peso, altura)
			2:
				ModificarDatos(peso, altura)
			3:
				MostrarDatos(peso, altura)
			4:
				IMC <- CalcularIMC(peso, altura)
			5: 
				escribir "saliendo del programa....."
		FinSegun
	Hasta Que opcion2 = 5
FinAlgoritmo
