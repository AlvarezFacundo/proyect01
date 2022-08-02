Algoritmo finalintegrador
	Definir m, i, j, cont Como Entero
	Definir gentZ, palabra, car como cadena
	definir validacionLetra como logico
	validacionLetra=Verdadero //NACE EN VERDADERO
	

	Hacer //ingreso de palabra y validacion del tamaño
		Hacer
			Escribir "ingrese la palabra que desea evaluar (debe tener 9, 16 o 1369 caracteres y ser A, B, C o D)" 
			Leer  palabra
			palabra= ""
			Para i=0 Hasta Longitud(palabra)-1 //validacion si no es A,B,C o D
				car= Subcadena(palabra,i,i)
				Si car<> "A" y car<> "B" y car <> "C" y car <> "D"
					validacionLetra=Falso
				FinSi
			FinPara
		Mientras Que validacionLetra=Falso//superar que la validacion sea falsa (debe ser verdadera)
	Mientras Que Longitud(palabra) <> 9 y Longitud(palabra) <> 16 y Longitud(palabra) <> 1369 //chequeo del tamaño de la matriz
	
	m=rc(longitud(palabra)) //guardo la raiz cuadrada del tamaño de la palabra en una variable "m"
	Dimension gentZ(m,m) //creo la matriz
	
	cont=0
	para i=0 Hasta m-1
		para j=0 Hasta m-1
			gentZ(i,j)= Subcadena(palabra,cont,cont)
			cont=cont+1
		FinPara
	FinPara
	
	
	mostrarGen(gentZ,m)
	buscarcoincidencias(gentZ,m)
FinAlgoritmo

Funcion mostrarGen(gentZ,m)
	Definir i, j como entero
	Limpiar Pantalla
	Escribir "El Gen ingresado es: "
	Escribir " "
	para i=0 Hasta m-1
		para j=0 Hasta m-1
			Escribir Sin Saltar " [ " gentZ(i,j) " ] "
		FinPara
		Escribir ""
	FinPara
FinFuncion

Funcion buscarcoincidencias(gentZ,m)
	Definir i, j , contDiagonal1, contdiagonal2 Como Entero
	Definir validacionDiagonal, validacionDiagonal2 como cadena
	Dimension validacionDiagonal(m), validacionDiagonal2(m)
	
	//Llenado de vector de referencia
	Escribir ""
	para i=0 Hasta m-1
		para j=0 Hasta m-1
			si i=j
				validacionDiagonal(i)= gentZ(i,j)
				
			FinSi
			Si i+j= m-1
				validacionDiagonal2(i)= gentZ(i,j)
			FinSi
		FinPara

	FinPara
	//validacion de letras comparando vector de referencia con posiciones claves
	contDiagonal1= 0
	contdiagonal2= 0
	para i= 0 hasta m-1
		si validacionDiagonal(i)= gentZ(0,0)
			contDiagonal1= contDiagonal1+1
		FinSi
		Si validacionDiagonal2(i) = gentZ(0,m-1)
			contdiagonal2= contdiagonal2+1
		FinSi
	FinPara
	
	//chequeo final e impresion de mensaje
	
	Si contDiagonal1 = m y contdiagonal2 = m
		Escribir  "¡ SE HA DETECTADO EL GENTZ! CON EL CODIGO CLAVE " ,gentZ(0,0) " y " ,gentZ(0,m-1)
	SiNo
		Escribir "LA MATRIZ NO PRESENTA EL GENZ" 
		
	FinSi
	Escribir ""
	
	
FinFuncion


	