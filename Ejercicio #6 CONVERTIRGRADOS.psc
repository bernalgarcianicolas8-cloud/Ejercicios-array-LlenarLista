funcion mostrarmenu 
	escribir "===========MENU==========="
	escribir " 1. guardar (centigrados)°C       "
	escribir " 2. Modificar (centigrados)°C     "
	escribir " 3. mostrar (centigrados)°C  "
	escribir " 4. hacer conversion a grados farenheit(°F)"
	escribir " 5. salir                 "
FinFuncion 
funcion GuardarDATOS(centigrado)
	Definir i, C Como Entero
	para i = 1 hasta 1 con paso 1 hacer 
		escribir "ingrese los grados que desea convertir a farenheit: "
		leer C
		centigrado[i] <- C
	FinPara
FinFuncion
funcion ModificarDATOS(centigrado, C)
	para i = 1 hasta 1 hacer 
		escribir "ingrese el nuevo grado a convertir"
		leer NuevoC
		centigrado[i] <- NuevoC
		escribir "dato cambiado exitosamente"
	FinPara
FinFuncion
funcion MostrarDATOS(centigrado)
	para i = 1 hasta 1 hacer 
		escribir "el grado registrado es: " centigrado[i] "° "
	FinPara
FinFuncion
funcion fahrenheit <- calcularConversion(centigrado)
	para i = 1 hasta 1 Hacer
		fahrenheit <- (centigrado[i] * 9/5) + 32
	FinPara
FinFuncion
funcion ImprimirDatos(centigrado, fahrenheit)
	para i = 1 hasta 1 hacer 
		escribir centigrado[i] "°C, en Grados Fahrenheit es de: " fahrenheit "°F "
	FinPara
FinFuncion

Algoritmo sin_titulo
	definir opcion1 como entero
	dimension centigrado[1]
	repetir 
		mostrarmenu
        Escribir "Ingrese la opcion que desea ejecutar: "
        Leer opcion1
        Segun opcion1 Hacer 
            1:
                GuardarDATOS(centigrado)
            2: 
                ModificarDATOS(centigrado, C)
            3: 
				MostrarDATOS(centigrado)
            4: 
                fahrenheit <- calcularConversion(centigrado)
				ImprimirDatos(centigrado, fahrenheit)
            5:
                Escribir "saliento del programa........"
			De Otro Modo:
				escribir "opcion invalida vuelva a ingresar"
        FinSegun
    Hasta Que opcion1 = 5
FinAlgoritmo
