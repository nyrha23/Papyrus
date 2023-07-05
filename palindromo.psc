Algoritmo palindromo
	Definir letra, letraPalabra, palabra, palabra2 Como Caracter
	Definir i, j, k, cantLetras, tamanio Como Entero
	Dimension letraPalabra[20]
	
	i <- 0
	j <- 0
	k <- 0
	cantLetras <- 0
	tamanio <- 0
	
	ingLetra(letra, i, letraPalabra, palabra, tamanio)
	palabraInversa(j, k, tamanio, palabra2, palabra)
	mostrarPalabra(palabra, palabra2)
FinAlgoritmo

SubProceso  ingLetra (letra, i Por Referencia, letraPalabra Por Referencia, palabra Por Referencia, tamanio Por Referencia)
	Mientras letra <> "." y i < 20 Hacer
		i <- i+1
		Escribir "Ingrese la letra ", i, " de su palabra, para finalizar ingrese un punto:"
		Leer letra
		letra = Mayusculas(letra)
		Si letra <> "." Entonces
			letraPalabra[i] = letra
		FinSi
		palabra <- Concatenar(palabra,letraPalabra[i])
	FinMientras
	tamanio <- Longitud(palabra)
	Escribir "La palabra ", palabra, " tiene ", tamanio, " letras."
FinSubProceso

SubProceso palabraInversa (j, k, tamanio, palabra2 Por Referencia, palabra)
	palabra2 <- ""
	Para j <- 1 Hasta tamanio Con Paso 1 Hacer
		palabra2 <- palabra2 + Subcadena(palabra, tamanio-k, tamanio-k)
		k <- k+1
	FinPara
	Escribir "Su inversa es: ", palabra2, "."
FinSubProceso

SubProceso mostrarPalabra (palabra, palabra2)
	Si palabra == palabra2 Entonces
		Escribir "Has encontrado un PALíNDROMO!!"
	SiNo
		Escribir "En este caso la palabra no es un palíndromo."
	FinSi
FinSubProceso
