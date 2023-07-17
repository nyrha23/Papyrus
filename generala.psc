Algoritmo generala
	Definir dados Como Entero
	Dimension dados[5]
	dados[1] <- azar(6)+1
	dados[2] <- azar(6)+1
	dados[3] <- azar(6)+1
	dados[4] <- azar(6)+1
	dados[5] <- azar(6)+1
	Escribir "Tirada de dados: "
	Escribir dados[1],", ", dados[2],", ", dados[3],", ", dados[4],", ", dados[5]
	
	Mientras dados[1]<>dados[2] | dados[2]<>dados[3] | dados[3]<>dados[4] | dados[4]<>dados[5] | dados[5]<>dados[1] Hacer
		dados[1] <- azar(6)+1
		dados[2] <- azar(6)+1
		dados[3] <- azar(6)+1
		dados[4] <- azar(6)+1
		dados[5] <- azar(6)+1
		Escribir dados[1],", ", dados[2],", ", dados[3],", ", dados[4],", ", dados[5]
	FinMientras
	Escribir "¡Se ha obtenido GENERALA!"
FinAlgoritmo
