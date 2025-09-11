funcion mostrarmenu 
	escribir "==========MENU========="
	escribir " 1. guardar caloria consumidas     "
	escribir " 2. modificar calorias   "
	escribir " 3. mostrar calorias "
	escribir " 4. calcular calorias semanales"
	escribir " 5. salir "
FinFuncion
funcion GuardarCalorias(dia)
	definir i, caloria Como Entero
	para i = 1 hasta 7 con paso 1 hacer 
		escribir "dijite las calorias que consumio el dia " i ": "
		leer caloria
		dia[i] <- caloria
	FinPara
FinFuncion
funcion ModificarCalorias(dia)
	escribir "De que dia necesitas modificar las calorias? (1-7)"
	leer opcion1
	si opcion1 >= 1 y opcion1 <= 7 entonces 
		escribir "bien, desea modificar la caloria del dia " opcion1 " dijite la nueva caloria"
		leer nueva_caloria
		dia[opcion1] <- nueva_caloria
	FinSi
FinFuncion
funcion MostrarDATOS(dia)
	para i = 1 hasta 7 hacer 
		escribir "calorias cosumidas del dia " i 
		escribir dia[i]
	FinPara
FinFuncion
funcion total <- Calculartotalcaloria(dia)
	total <- 0 
	para i = 1 hasta 7 hacer 
		total <- total + dia[i]
	FinPara
FinFuncion
funcion imprimiresultado(total)
	escribir "el total de calorias consumidas en la semana fue de: " total
FinFuncion
Algoritmo CaloriasSemanales
	definir opcion2 como entero 
	dimension dia[7]
	Repetir
		mostrarmenu 
		escribir "ingrese la opcion que desea ejecutar"
		leer opcion2 
		segun opcion2 hacer
			1: 
				Guardarcalorias(dia)
			2: 
				Modificarcalorias(dia)
			3: 
				MostrarDATOS(dia)
			4: 
				total <- Calculartotalcaloria(dia)
				imprimiresultado(total)
			5:
				escribir "saliendo del programa.... Hasta pronto!!"
		FinSegun
	Hasta Que opcion2 = 5
FinAlgoritmo
