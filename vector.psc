Algoritmo vector 
	Definir v, i, max, tamanio Como Entero
	i <- 1
	tamanio <- 15
	
	Dimension v[tamanio]
	max <- v[1]
	
	ingV(v, i, tamanio)
	maxValor(v, i, max, tamanio)
FinAlgoritmo

Funcion ingV (v Por Referencia, i, tamanio Por Referencia)
	Para i = 1 Hasta tamanio Con Paso 1 Hacer
		Escribir "Ingrese el valor ", i,":"
		Leer v[i]
	FinPara
FinFuncion

Funcion maxValor(v por Referencia, i, max, tamanio Por Referencia)
	Para i=2 Hasta tamanio Con Paso 1 Hacer
		Si v[i] > max Entonces
            max <- v[i]
        FinSi
	FinPara
	Escribir "El máximo valor ingresado es: ", max
FinFuncion
