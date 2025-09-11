funcion mostrarmenu 
	escribir "============MENU============"
	escribir " 1. Guardar cantidad y precio"
	escribir " 2. Modificar Datos"
	escribir " 3. Mostrar Datos"
	escribir " 4. Calcular total"
	escribir " 5. salir"
FinFuncion
funcion guardarDatos(cantidad, precio)
	para i <- 1 hasta 3 con paso 1 hacer 
		escribir "ingrese el precio del producto " i
		leer precio[i]
	FinPara
	para i <- 1 hasta 3 con paso 1 hacer 
		escribir "Digite la cantidad del producto " i
		leer cantidad[i]
	FinPara
FinFuncion
funcion ModificarDatos(cantidad, precio)
	definir opcion1, produc como entero
	escribir "Que producto desea cambiar (1-3)"
	leer produc
	escribir "que desea cambiar?"
	escribir " 1. Precio"
	escribir " 2. cantidad"
	leer opcion1 
	segun opcion1 hacer 
		1:
			escribir "ingrese el nuevo precio"
			leer precio[produc]
			escribir "precio modificado exitosamente"
		2: 
			escribir "ingrese la nueva cantidad"
			leer cantidad[produc]
			escribir "cantidad modificada exitosamente"
	FinSegun
FinFuncion
funcion mostrardatos(cantidad, precio)
	para i <- 1 hasta 3 Hacer
		escribir "precio del producto " i
		escribir precio[i]
	FinPara
	para i <- 1 hasta 3 hacer 
		escribir "cantidad del producto " i
		escribir cantidad[i]
	FinPara
FinFuncion
funcion total <- calculartotal(cantidad, precio)
	total = 0
	para i <- 1 hasta 3 Hacer
		total <- total + (cantidad[i] * precio[i])
	FinPara
FinFuncion
funcion imprimirmensaje(total)
	escribir "El total de la compra es de: " total
FinFuncion
Algoritmo Preciototal
	definir opcion2 como entero
	dimension cantidad[3], precio[3] 
	repetir 
		mostrarmenu
		escribir "dijite la opcion que dese ejecutar"
		leer opcion2
		segun opcion2 hacer 
			1: 
				guardarDatos(cantidad, precio)
			2:
				ModificarDatos(cantidad, precio)
			3:
				mostrardatos(cantidad, precio)
			4: 
				total <- calculartotal(cantidad, precio)
				imprimirmensaje(total)
		FinSegun
	Hasta Que opcion2 = 5
FinAlgoritmo
