funcion mostrarmenu 
	escribir "==========MENU========="
	escribir " 1. guardar ventas     "
	escribir " 2. modificar ventas   "
	escribir " 3. mostrar ventas "
	escribir " 4. calcular ventas semanales"
	escribir " 5. salir "
FinFuncion
funcion GuardarVENTAS(dia)
	definir i, ventas Como Entero
	para i = 1 hasta 7 con paso 1 hacer 
		escribir "dijite las ventas que realizo el dia " i ": "
		leer ventas
		dia[i] <- ventas
	FinPara
FinFuncion
funcion ModificarVentas(dia)
	escribir "De que dia necesitas modificar la venta? (1-7)"
	leer opcion1
	si opcion1 >= 1 y opcion1 <= 7 entonces 
		escribir "bien, desea modificar la venta del dia " opcion1 " dijite la nueva venta"
		leer nueva_venta 
		dia[opcion1] <- nueva_venta
	FinSi
FinFuncion
funcion MostrarDATOS(dia)
	para i = 1 hasta 7 hacer 
		escribir "venta del dia " i 
		escribir dia[i]
	FinPara
FinFuncion
funcion total <- Calculartotalventas(dia)
	total <- 0 
	para i = 1 hasta 7 hacer 
		total <- total + dia[i]
	FinPara
FinFuncion
funcion imprimiresultado(total)
	escribir "el total de ventas en la semana fue de: " total
FinFuncion
Algoritmo VentasSemanales
	definir opcion2 como entero 
	dimension dia[7]
	Repetir
		mostrarmenu 
		escribir "ingrese la opcion que desea ejecutar"
		leer opcion2 
		segun opcion2 hacer
			1: 
				GuardarVENTAS(dia)
			2: 
				ModificarVentas(dia)
			3: 
				MostrarDATOS(dia)
			4: 
				total <- Calculartotalventas(dia)
				imprimiresultado(total)
			5:
				escribir "saliendo del programa.... Hasta pronto!!"
		FinSegun
	Hasta Que opcion2 = 5
FinAlgoritmo
