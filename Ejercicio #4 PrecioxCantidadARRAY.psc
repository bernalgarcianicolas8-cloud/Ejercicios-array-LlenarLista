funcion mostrarmenu 
	escribir "===========MENU==========="
	escribir " 1. Guardar datos         "
	escribir " 2. Modificar datos       "
	escribir " 3. mostrar datos "
	escribir " 4. calcular total con iva"
	escribir " 5. salir                 "
finfuncion 
funcion guardardatos(producto, num)
	definir i, p como entero
	para i <- 1 hasta num Hacer
		escribir "ingrese el precio del producto que desea comprar " i ": "
		leer producto[i, 1]
		escribir "ingrese la cantidad que desea comprar del producto " i ": "
		leer producto[i, 2]
	FinPara	
FinFuncion
funcion modificardatos(producto, num)
	definir opcion1, produc Como Entero
	escribir "ingrese el numero del producto que desea modificar (1 a ", num, "):"
	leer produc
	si produc > 0 y produc <= num entonces 
		escribir "que quiere modificar?"
		escribir " 1. precio "
		escribir " 2. cantidad" 
		leer opcion1
	sino 
		escribir "opcion invalida"
	FinSi
	segun opcion1 hacer 
		1: 
			escribir "ingrese el nuevo precio: "
			leer producto[produc, 1]
			escribir "bien, precio modificado exitosamente"
		2: 
			escribir "ingrese la nueva cantidad "
			leer producto[produc, 2]
			escribir "bien, cantidad modificada exitosamente"
		De Otro Modo:
			escribir "opcion invalida"
	FinSegun
FinFuncion
funcion mostrardatos(producto, num)
	definir i Como Entero
	para i <- 1 hasta num hacer 
		escribir "precio " i ": "
		escribir producto[i, 1]
	FinPara
	para i <- 1 hasta num hacer 
		escribir "cantidad " i ": "
		escribir producto[i, 2]
	FinPara
FinFuncion
funcion total <- calculartotalprecio(producto, num)
	definir total Como Real
	total = 0
	para i <- 1 hasta num Hacer
		total <- total + (producto[i, 1] * producto[i, 2])
	FinPara
	escribir "el total del producto: " total
FinFuncion
funcion descuento <- calculardescuento(total)
	descuento <- total * 0.20
	escribir "el descuento es de: " descuento
FinFuncion
funcion totaldescuento <- calculartotaldescuento(total, descuento)
	totaldescuento <- total - descuento
	escribir "el total con el descuento aplicado es: " totaldescuento
FinFuncion
Algoritmo PrecioxCantidadARRAY
	definir num Como Entero
	definir opcion2 como entero
	escribir "ingrese el numero de productos que desea comprar: "
	leer num
	dimension producto[num, 2]
	repetir 
		mostrarmenu 
		escribir "ingrese la opcion que desea ejecutar"
		leer opcion2
		segun opcion2 Hacer
			1: 
				guardardatos(producto, num)
			2:
				modificardatos(producto, num)
			3: 
				mostrardatos(producto, num)
			4: 
				total <- calculartotalprecio(producto, num)
				descuento <- calculardescuento(total)
				totaldescuento <- calculartotaldescuento(total, descuento)
			5: 
				escribir "saliendo del programa...."
		FinSegun
	Hasta Que opcion2 = 5
FinAlgoritmo
