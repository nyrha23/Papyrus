Algoritmo biblioteca2
	//cada libro: nombreLibro, cantPag, genero
	//5 estantes, cada estante: nombreLibroMayorPag, cantPagMayor
	//al finalizar: cantLibrosI, cantLibrosN, cantLibrosH, promedioLibros
	Definir nombreLibro, nombreLibroMayorPag, genero Como Caracter
	Definir estante, cantPag, cantPagMayor, cantLibrosI, cantLibrosN, cantLibrosH Como Entero
	Definir promedioLibros como Real
	Definir estanteTerminado Como Logico
	estante<-0
	cantPag<-0
	cantPagMayor<-0
	cantLibrosI<-0
	cantLibrosN<-0
	cantLibrosH<-0
	promedioLibros<-0
		
	datoslibros(cantPag,cantPagMayor,estante,estanteTerminado,nombreLibro,nombreLibroMayorPag,genero,cantLibrosI,cantLibrosN,cantLibrosH)
	mostrarcantidades(promedioLibros,cantLibrosH,cantLibrosI,cantLibrosN)
FinAlgoritmo

SubProceso datoslibros(cantPag Por Referencia,cantPagMayor Por Referencia,estante,estanteTerminado,nombreLibro Por Referencia,nombreLibroMayorPag,genero Por Referencia,cantLibrosI Por Referencia,cantLibrosN Por Referencia,cantLibrosH Por Referencia)
	Para estante <- 1 Hasta 5 Hacer
		estanteTerminado = Falso
		cantPag<-0
		cantPagMayor<-0
		Repetir
			Escribir "Indique el nombre del libro o ingrese FIN si no hay más libros para ese estante"
			Leer nombreLibro
			Si Mayusculas(nombreLibro) == "FIN" Entonces
				estanteTerminado = Verdadero
			SiNo
				Repetir
					Escribir "Para indicar el género del libro seleccione una letra:"
					Escribir "Infantil: I // Novela: N // Historia: H"
					Leer genero
					genero = Mayusculas(genero)
					Segun genero Hacer
						"I": cantLibrosI = cantLibrosI +1
						"N": cantLibrosI = cantLibrosN +1
						"H": cantLibrosH = cantLibrosH +1
						De Otro Modo:
							Escribir "Usted no ha ingresado un género válido"
					FinSegun
				Hasta Que genero == "I" | genero == "N" | genero == "H"
				Escribir "Indique la cantidad de páginas que posee el libro"
				Leer cantPag
				Si cantPag <= 0 Entonces
					Repetir
						Escribir "Indique un número de páginas válido"
						Leer cantPag
					Hasta Que cantPag > 0
				SiNo
					Si cantPagMayor < cantPag Entonces
						cantPagMayor = cantPag
						nombreLibroMayorPag = nombreLibro
					FinSi
				FinSi
			FinSi
		Hasta Que estanteTerminado == Verdadero
		Escribir "Número de estante: ",estante,"."
		Escribir "El libro con mayor cantidad de páginas es: ",nombreLibroMayorPag," con ",cantPagMayor, " páginas en total."
	FinPara
FinSubProceso

SubProceso mostrarcantidades(promedioLibros,cantLibrosH Por Referencia,cantLibrosI Por Referencia,cantLibrosN Por Referencia)
	Escribir "-----"
	promedioLibros = (cantLibrosH+cantLibrosI+cantLibrosN)/5
	Escribir "Entre los cinco estantes hay: "
	Escribir "Libros infantiles: ",cantLibrosI," en total."
	Escribir "Lbros de novelas: ",cantLibrosN," en total."
	Escribir "Libros de historia: ",cantLibrosH," en total."
	Escribir "El promedio de libros por estantes es: ", promedioLibros,"."
FinSubProceso
