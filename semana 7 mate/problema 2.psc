Algoritmo Union_intersecion
	
	
	// ejercutar con array en que comienzan con 1 y no con 0 
	Definir n_a,n_b ,n_union, n_inter como real
	Imprimir "bienvenido aal calculador de conjuntos"
	
	Imprimir "ingrese la cantidad del conjunto A"
	leer n_a
	n_a = n_a
	Dimension A[n_a]
	
	para x = 1 hasta n_a con paso 1 hacer
		
		imprimir "ingrese el ",x,"� valor"
		leer A[x]
	FinPara
	
	
	Imprimir "ingrese la cantidad del conjunto B"
	leer n_b
	Dimension B[n_b]
	
	para x = 1 hasta n_b con paso 1 hacer
		
		imprimir "ingrese el ",x,"� valor"
		leer B[x]
	FinPara
	
	n_union = n_a + n_b
	
	Dimension sin_orden_union[n_union]
	Dimension union[n_union]
	
	Imprimir "la Union de onjunto A y B"
	
	para x = 1 hasta n_a con paso 1 hacer
		
		sin_orden_union[x] = A[x]
	FinPara
	
	para x = 1 hasta n_b con paso 1 hacer
		
		sin_orden_union[n_a+x] = B[x]
	FinPara
	
	
	//ver caul es el valor menor de todo el array
	menor_AB = 0
	para x = 1 hasta n_union con paso 1 hacer
		
		si menor_AB > sin_orden_union[x] entonces
			
			menor_AB = sin_orden_union[x]
		FinSi
	FinPara
	// ordena la union 
	para x = n_union hasta 1 con paso -1 hacer
		
		mayor_AB = menor_AB // guarda el valor mas vajo
		ultimo_index = 1 // guarda el contador i cuando la se cumpla la condicion
		para i = 1 hasta n_union Con Paso 1 Hacer
			
			si mayor_AB < sin_orden_union[i] entonces
				
				mayor_AB = sin_orden_union[i]
				ultimo_index = i
			FinSi
			
			
			
		FinPara
		
		
		union[x] = mayor_AB
		sin_orden_union[ultimo_index] = menor_AB - 1
	FinPara
	
	
	// imprime la union de a y b 
	s = "{ "
	para x = 1 hasta n_union con paso 1 hacer
		
		s = s + ConvertirATexto(union[x])
		
		si x == n_union entonces
			s = s +" }"
		SiNo
			s = s +", "
		FinSi
	FinPara
	Imprimir s
	
	
	
	//// la intersecion 
	
	menor_A = 0
	para x = 1 hasta n_a con paso 1 hacer
		
		si menor_A > sin_orden_union[x] entonces
			
			menor_A = sin_orden_union[x]
		FinSi
	FinPara
	
	menor_b = 0
	para x = 1 hasta n_b con paso 1 hacer
		
		si menor_b > sin_orden_union[x] entonces
			
			menor_b = sin_orden_union[x]
		FinSi
	FinPara
	
	n_inter = 0
	
	para x = 1 Hasta n_a Con Paso 1 Hacer
		
		para i = 1 hasta n_b con paso 1 hacer
			
			
			si A[x] == B[i] entonces
				n_inter = n_inter + 1
			FinSi
		FinPara
		
	FinPara
	
	Imprimir " "
	Imprimir "La intersecion de A y B"
	si n_inter == 0 entonces
		Imprimir "Es un conjunto vacio"
	SiNo
		
		
		
		Dimension sin_orden_inter[n_inter]
		Dimension inter[n_inter]
		
		save = 1
		para x = 1 Hasta n_a Con Paso 1 Hacer
			
			para i = 1 hasta n_b con paso 1 hacer
				
				
				si A[x] == B[i] entonces
					
					sin_orden_inter[save] = A[x]
					save = save + 1
				FinSi
			FinPara
			
		FinPara
		
		
		
		
		menor_A_inter_B = menor_a - menor_b
		mayor_A_inter_B = menor_A_inter_B
		
		para x = n_inter hasta 1 con paso -1 hacer
			
			mayor_A_inter_B = menor_A_inter_B // guarda el valor mas vajo
			ultimo_index = 1 // guarda el contador i cuando la se cumpla la condicion
			
			para i = 1 hasta n_inter Con Paso 1 Hacer // intersecion
				
				si mayor_A_inter_B < sin_orden_inter[i] entonces
					
					mayor_A_inter_B = sin_orden_inter[i]
					ultimo_index = i
				FinSi
				
				
				
			FinPara
			
			
			inter[x] = mayor_A_inter_B
			sin_orden_inter[ultimo_index] = menor_A_inter_B - 1
			
		FinPara
		s = "{ "
		para x = 1 hasta n_inter con paso 1 hacer
			
			s = s + ConvertirATexto(inter[x])
			
			si x == n_inter entonces
				s = s +" }"
			SiNo
				s = s +", "
			FinSi
		FinPara
		Imprimir s
		
		
		
		
	FinSi
	
FinAlgoritmo
