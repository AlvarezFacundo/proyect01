/// 	Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//// 	los muestre por pantalla.

Algoritmo ejercicio8
	definir matriz, n, m, num, f, c, p1, p2 Como Entero
	escribir "ingrese tamaño de la matriz"
	leer n, m
	Dimension matriz(n,m)
	
	
	para f=0 hasta n-1
		para c=0 hasta m-1
			Escribir "ingrese el valor de la posición: " "[" f  "," c  "]"
			leer num
			matriz(f,c)=num
		finpara
	FinPara
	
	escribir "ingrese posicion"
	leer p1, p2
	
	escribir "el valor ingresado en la posicion:" "[" p1  "," p2  "]"  " es: " matriz(p1, p2)
	
	para f=0 hasta n-1
		para c=0 hasta m-1
			escribir sin saltar "[" matriz(f,c) "]"
		finpara
		ESCRIBIR ""
	FinPara
	
	
FinAlgoritmo
