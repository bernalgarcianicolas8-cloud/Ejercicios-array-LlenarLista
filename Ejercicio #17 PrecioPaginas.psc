funcion mostrarmenu
	escribir "=============MENU==============="
	escribir " 1. guardar precio y cantidad"
	escribir " 2. modificar datos"
	escribir " 3. mostrar Datos "
	escribir " 4. calcular total "
	escribir " 5. salir"
FinFuncion

funcion GuardarDatos(precio, cantidad)
	para i <- 1 hasta 1 con paso 1 Hacer
		escribir "ingrese el precio por pagina imprimida"
		leer precio[i]
	FinPara
	para i <- 1 hasta 1 con paso 1 hacer
		escribir "ingrese el numero de paginas a imprimir"
		leer cantidad[i]
	FinPara
FinFuncion
funcion modificarDatos(precio, cantidad)
	definir opcion1 como entero
	escribir " Que dato desea cambiar?"
	escribir " 1. precio"
	escribir " 2. cantidad"
	leer opcion1 
	segun opcion1 hacer 
		1: 
			para i <- 1 hasta 1 Hacer
				escribir "ingrese el nuevo precio"
				leer precio[i]
			FinPara
		2: 
			para i <- 1 hasta 1 Hacer
				escribir "ingrese la nueva cantidad" 
				leer cantidad[i]
			FinPara
	FinSegun
FinFuncion
funcion mostrarDatos(precio, cantidad)
	para i <- 1 hasta 1 Hacer
		escribir "precio:" precio[i]
	FinPara
	para i<- 1 hasta 1 hacer 
		escribir "cantidad: " cantidad[i]
	FinPara
FinFuncion
funcion total <- calculartotal(precio, cantidad)
	total <- 0
	para i <- 1 hasta 1 Hacer
		total <- total + (precio[i] * cantidad[i])
	FinPara
FinFuncion
funcion imprimirmensaje(total)
	Escribir "el total a pagar es de: " total
FinFuncion
Algoritmo PrecioPaginas
	definir opcion2 como entero
	dimension precio[1], cantidad[1]
	Repetir
		mostrarmenu
		escribir "ingresar la opcion que desee ejecutar"
		leer opcion2
		segun opcion2 hacer
			1:
				GuardarDatos(precio, cantidad)
			2: 
				modificarDatos(precio, cantidad)
			3: 
				mostrarDatos(precio, cantidad)
			4:
				total <- calculartotal(precio, cantidad)
				imprimirmensaje(total)
			5:
				escribir "saliendo del programa....."
		FinSegun
		
	Hasta Que opcion2 = 5
FinAlgoritmo
