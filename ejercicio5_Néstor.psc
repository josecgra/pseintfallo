//################################################################################
// Procedimiento CalcularMaxMin: recibe un vector de enteros, su tamaño, y devuelve
// el máximo y el mínimo de los números guardados en el vector.
// Parámetros de entrada: vector de enteros y tamaño
// Parámetros de entrada y salida: valor máximo y mínimo
//################################################################################

Funcion CalcularMaxMin(vector,size,max Por Referencia,min Por Referencia)
	// ===========================================================================================================================================
	// -> El fallo estaba en no inicializar las variables "max" y "min" por referencia, y, por lo tanto, no las detectaba y no les daba valor. ||
	// =========================================================================================================================================
	Definir i como Entero;
	max<-vector[0];
	min<-vector[0];
	Para i<-0 hasta size-1 Hacer
		Si max<vector[i] Entonces
			max<-vector[i];
		FinSi
		Si min>vector[i] Entonces
			min<-vector[i];
		FinSi
	FinPara
FinFuncion

//################################################################################
// Crea una función "calcularMaxMin" que recibe una arreglo con valores númerico y 
// devuelve el valor máximo y el mínimo. Crea un programa que pida números por 
// teclado y muestre el máximo y el mínimo, utilizando la función anterior.
//################################################################################

Proceso MaxMin
	// Definiciones:
	Definir lista, size_lista, i, vmax, vmin Como Entero;
	Dimension lista[10];
	
	// Variables:
	size_lista<-10;
	
	//Incializo el vector con valores aleatorios
	Escribir "·Números:";
	Para i<-0 hasta size_lista-1 Hacer
		lista[i]<-Aleatorio(1,100);
		Escribir Sin Saltar " ", lista[i];
	FinPara
	
	//En la llamada le paso las variables vmax y vmin que se van a modificar en el procedimiento
	CalcularMaxMin(lista,size_lista,vmax,vmin);
	
	// Resultado:
	Escribir "";
	Escribir "·El valor máximo es: ",vmax;
	Escribir "·El valor mínimo es: ",vmin;
FinProceso
