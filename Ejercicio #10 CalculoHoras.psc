funcion mostrarmenu
	escribir "==============MENU============"
	escribir " 1. guardar hora y tarifa"
	escribir " 2. modificar hora o tarifa"
	escribir " 3: mostrar datos"
	escribir " 4. calcular total"
	escribir " 5. salir"
FinFuncion
funcion guardarDatos(hora, tarifa)
	para i <- 1 hasta 1 con paso 1 hacer 
		escribir "ingrese las horas trabajadas"
		leer hora[i]
	FinPara
	para i <- 1 hasta 1 con paso 1 hacer 
		escribir "ingrese la tarifa pagada por hora"
		leer tarifa[i]
	FinPara
FinFuncion
funcion modificardatos(hora, tarifa)
	definir opcion1 como entero
	escribir "que opcion desea cambiar"
	escribir "1. horas "
	escribir "2. tarifa"
	leer opcion1
	segun opcion1 hacer
		1:
			para i <- 1 hasta 1 hacer 
				escribir "ingrese las nuevas horas trabajadas"
				leer hora[i]
				escribir "modificado exitosamente"
			FinPara
		2: 
			para i <- 1 hasta 1 hacer 
				escribir "ingrese la nueva tarifa"
				leer tarifa[i]
				escribir "modificado exitosamente"
			FinPara
	FinSegun
FinFuncion
funcion mostrardatos(hora, tarifa)
	para i <- 1 hasta 1 hacer 
		escribir "horas trabajadas: " hora[i]
	FinPara
	para i <- 1 hasta 1 Hacer
		escribir "la tarifa por hora es de: " tarifa[i]
	FinPara
FinFuncion
funcion total <- calculartotal(hora, tarifa)
	para i <- 1 hasta 1 hacer 
		total<- hora[i] * tarifa[i]
	FinPara
FinFuncion
funcion imprimirmensaje(total)
	escribir "el total pagado es de: " total
FinFuncion
Algoritmo calcularHorastrabajadas
	definir opcion2 como entero 
	dimension hora[1], tarifa[1]
	Repetir
		mostrarmenu
		escribir "digite la opcion que desee ejecutar"
		leer opcion2
		segun opcion2 hacer
			1:
				guardarDatos(hora, tarifa)
			2:
				modificardatos(hora, tarifa)
			3:
				mostrardatos(hora, tarifa)
			4: 
				total <- calculartotal(hora, tarifa)
				imprimirmensaje(total)
			5:
				escribir "saliendo del programa......"
		FinSegun
	Hasta Que opcion2 = 5
	
	
FinAlgoritmo
